#pragma once
#include <iostream>
#include <sstream>
#include <format>
#include <ctime>

inline std::string log_file_path = "./logs.txt";

enum class LogLevel {
    INFO,
    WARNING,
    ERROR,
    DEBUG
};

class Logger {
public:
    Logger(LogLevel level) : _level(level) {};
    ~Logger() {
        LogMessage(_oss.str(), _level);
    };

    template<typename T>
    Logger& operator<<(const T& message) {
        _oss << message;
        return *this;
    }

    Logger& operator<<(std::ostream& (*manip)(std::ostream&)) {
        _oss << manip;
        return *this;
    }

    void LogMessage(const std::string& message, LogLevel level);

    std::string GetLevel();

private:
    LogLevel _level;
    std::ostringstream _oss;
};

#define LOG_INFO() Logger(LogLevel::INFO)
#define LOG_WARNING() Logger(LogLevel::WARNING)
#define LOG_ERROR() Logger(LogLevel::ERROR)
#define LOG_DEBUG() Logger(LogLevel::DEBUG)
