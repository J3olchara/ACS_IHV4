#pragma once
#include "../logging/logger.hpp"
#include "task.hpp"

#include <stack>
#include <semaphore>
#include <algorithm>
#include <thread>


class STQ {
private:
    inline const static std::int32_t SemaphoreSize = 16;

    std::stack<std::shared_ptr<Task>> _q;
    std::shared_ptr<std::counting_semaphore<SemaphoreSize>> _sema;
    std::unique_ptr<std::mutex> _mu;
    std::condition_variable _cv;
    std::atomic<std::int32_t> _tasks_in_progress = 0;

    STQ(const STQ&) = delete;
    STQ& operator=(const STQ&) = delete;
    STQ(STQ&&) = delete;
    STQ& operator=(STQ&&) = delete;

public:
    STQ(const std::int32_t threads) : 
        _q(std::stack<std::shared_ptr<Task>>{}), 
        _sema(std::make_shared<std::counting_semaphore<SemaphoreSize>>(std::min(SemaphoreSize, threads))),
        _mu(std::unique_ptr<std::mutex>{new std::mutex()}),
        _cv(std::condition_variable{}) {
            LOG_INFO() <<  "STQ spawned";
        };

    void Run();

    void AddTask(const std::shared_ptr<Task>& task);
};