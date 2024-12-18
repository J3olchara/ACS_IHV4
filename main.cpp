#include "library/library.hpp"
#include "queues/task.hpp"
#include "queues/stq.hpp"
#include "logging/logger.hpp"
#include "dotenv/env_getter.hpp"

#include <iostream>
#include <memory>
#include <string>
#include <stdexcept>




int main(int argc, char* argv[]) {
    int n = -1, m = -1, k = -1, t = -1;
    std::string env_path = "./.env";
    bool use_file = false;

    for (int i = 1; i < argc; ++i) {
        std::string arg = argv[i];
        try {
            if (!arg.rfind("-n=", 0)) {
                n = std::stoi(arg.substr(3));
            } else if (!arg.rfind("-m=", 0)) {
                m = std::stoi(arg.substr(3));
            } else if (!arg.rfind("-k=", 0)) {
                k = std::stoi(arg.substr(3));
            } else if (!arg.rfind("-t=", 0)) {
                t = std::stoi(arg.substr(3));
            } else if (!arg.rfind("-f=", 0)) {
                env_path = std::stoi(arg.substr(3));
                use_file=true;
            } else if (!arg.rfind("-out=", 0)) {
                log_file_path = arg.substr(5);
                use_file=true;
            } else {
                LOG_ERROR() << std::format("Unexpected argument: {}", arg);
                LOG_ERROR() << std::format("Usage: \n{} [-n=<value>] [-m=<value>] [-k=<value>] [-t|--threads=<value>] [-f|--file=<value>]", argv[0]);
                return 1;
            }
        } catch (const std::invalid_argument& e) {
            LOG_ERROR() << std::format("Wrong value for argument {}: ", arg, e.what());
            return 1;
        } catch (const std::out_of_range& e) {
            LOG_ERROR() << std::format("Value for argument {} is out of valid range: ", arg, e.what());
            return 1;
        }
    }
    if (n != -1 || m != -1 || k != -1 || t != -1 || use_file) {
        EnvGetter getter(env_path);
        n = std::stoi(getter.Get("n_rows"));
        m = std::stoi(getter.Get("m_shelfs"));
        k = std::stoi(getter.Get("k_books"));
        t = std::stoi(getter.Get("threads"));
    }

    LOG_DEBUG() << std::format("Using: n={}, m={}, k={}, t={}, -f={}", n, m, k, t, env_path);

    std::shared_ptr<STQ> stq(new STQ(t));
    std::shared_ptr<Library> lib(new Library(n, m, k));
    lib->randomizeBooks();
    lib->PrintCatalog(stq);

    return 0;
}