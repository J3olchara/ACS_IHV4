#include "../logging/logger.hpp"
#include "stq.hpp"

#include <format>


void STQ::Run() {
    std::unique_lock<std::mutex> lock(*_mu);
    LOG_INFO() << "STQ Started";
    while (true) {
        LOG_INFO() << "Trying to get task from queue...";
        if (_q.empty()) {
            LOG_INFO() << "Task queue is empty... Waiting for new tasks.";
            
            _cv.wait(lock, [this]() { return !_q.empty() || _tasks_in_progress; });
            if (_tasks_in_progress) break;
            continue;
        }
        auto task = _q.top();
        _tasks_in_progress++;
        _q.pop();
        LOG_INFO() << std::format("Got task with id: {}", task->id);
        _sema->acquire();
        std::thread([task, this]() {
            task->Do();
            if (task->parent != nullptr && task->parent->dependent == task->parent->dependent_to_ready) {
                AddTask(task->parent);
            }
            _sema->release();
            _cv.notify_one();
        }).detach();
    }
    return;
}

void STQ::AddTask(const std::shared_ptr<Task>& task) {
    _q.push(task);
    LOG_INFO() << std::format("Task added: {}", task->id);
}