#pragma once

#include <string>
#include <unordered_map>

class EnvGetter {
public:
    explicit EnvGetter(const std::string& filepath);

    std::string Get(const std::string& var) const;

private:
    void parseEnvFile(const std::string& filepath);

    std::unordered_map<std::string, std::string> vars_;
};
