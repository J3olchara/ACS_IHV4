#pragma once
#include "books.hpp"

#include <format>
#include <iostream>
#include <vector>
#include <memory>
#include <atomic>
#include <cstdint>
#include <iterator> 

struct Args {
    const std::vector<BookEntry>::iterator begin;
    const std::vector<BookEntry>::iterator end;
};

class Task {
private:
    Args args;
    std::function<void(Args)> function;
public:
    std::string id;
    std::shared_ptr<Task> parent;
    std::atomic<std::int32_t> dependent;
    const std::int32_t dependent_to_ready;

    Task(
        std::string id,
        const Args& args, 
        std::function<void(Args)> function, 
        const std::shared_ptr<Task> parent, 
        const std::int32_t dependent_to_ready
    ) : id(id), args(args), function(function), parent(parent), dependent(0), dependent_to_ready(dependent_to_ready) {}
    Task(
        std::string id,
        Args args, 
        std::function<void(Args)> function, 
        const std::int32_t dependent_to_ready
    ) : Task(id, args, function, nullptr, dependent_to_ready) {}

    void Do() const;
};