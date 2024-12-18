cmake_minimum_required(VERSION 3.12)

project(ACS_IHV4)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(${PROJECT_NAME}
    main.cpp
    library/library.cpp
    queues/task.cpp
    queues/stq.cpp
    logging/logger.cpp
    dotenv/env_getter.cpp
)

target_include_directories(${PROJECT_NAME} PUBLIC
    library
    queues
    logger
    dotenv
)