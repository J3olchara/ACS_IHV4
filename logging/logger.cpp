#include "logger.hpp"

#include <iostream>
#include <thread>
#include <fstream>
#include <chrono>
#include <iomanip>
#include <sstream>


std::string GetNowString() {
    auto now = std::chrono::system_clock::now();

    std::time_t now_time_t = std::chrono::system_clock::to_time_t(now);
    auto now_ms = std::chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()) % 1000;

    std::tm now_tm = *std::localtime(&now_time_t);

    std::stringstream timestamp_stream;
    timestamp_stream << std::put_time(&now_tm, "%Y-%m-%d %H:%M:%S")
                     << '.' << std::setfill('0') << std::setw(3) << now_ms.count();

    return timestamp_stream.str();
}

std::string Logger::GetLevel() {
    switch (_level) {
        case LogLevel::INFO:    return "INFO";
        case LogLevel::WARNING: return "WARNING";
        case LogLevel::ERROR:   return "ERROR";
        case LogLevel::DEBUG:   return "DEBUG";
    }
}

void Logger::LogMessage(const std::string& message, LogLevel level) {
    auto level_str = GetLevel();
    auto now = GetNowString();
    auto thread_id = (std::ostringstream{} << std::this_thread::get_id()).str();
    auto log_message = std::format("[{}] [{}] [thread={}] - {}\n", now, level_str, thread_id, message);
    if (level == LogLevel::ERROR) {
        std::cerr << log_message << std::endl;
    } else {
        std::cout << log_message << std::endl;
    }

    std::ofstream log_file(log_file_path, std::ios::app);
    if (!log_file.is_open()) {
        throw std::runtime_error(std::format("Can't open logs file: {}", log_file_path));
    }
    log_file << log_message;
}

  