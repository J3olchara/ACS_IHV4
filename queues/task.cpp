#include "../logging/logger.hpp"
#include "task.hpp"

#include <format>

void Task::Do() const {
    LOG_INFO() << std::format("Doing task: {}", id);
    function(args);
    LOG_INFO() << std::format("Task ended: {}", id);
    if (parent != nullptr) {
        parent->dependent++;
    }
}