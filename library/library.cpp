#include "../logging/logger.hpp"
#include "library.hpp"
#include "task.hpp"
#include "stq.hpp"

#include <memory>
#include <vector>
#include <string>
#include <random>
#include <format>


std::shared_ptr<Task> Library::SetMergeSortTask(const std::shared_ptr<STQ>& stq, const std::vector<BookEntry>::iterator begin, const std::vector<BookEntry>::iterator end) {
    Args args = {begin, end};
    std::shared_ptr<Task> task;
    auto diff = end - begin;
    if (diff <= 1) {
        task = std::shared_ptr<Task>(new Task("empty_task", args, [](Args) {}, 0));
        stq->AddTask(task);
        return task;
    }
    
    auto m = begin + (end - begin) / 2;

    auto t1 = SetMergeSortTask(stq, begin, m);
    auto t2 = SetMergeSortTask(stq, m, end);
    t1->parent = task;
    t2->parent = task;
    
    task = std::shared_ptr<Task>(new Task(
        std::format("{}-{}", begin->book.id, (end - 1)->book.id),
        args, 
        [m](Args args) {
            std::vector<BookEntry> dst;
            const auto [begin, end] = args;
            dst.reserve(end - begin);
            std::merge(begin, m, m, end, std::back_inserter(dst));
            std::copy(dst.begin(), dst.end(), begin);
        }, 2
    ));
    return task;
}

void Library::MergeSort(const std::shared_ptr<STQ>& stq, std::vector<BookEntry>::iterator begin, std::vector<BookEntry>::iterator end) {
    LOG_INFO() << "MergeSort started";
    auto task = SetMergeSortTask(stq, begin, end);
    stq->Run();
    LOG_INFO() << "MergeSort ended";
    return;
}

void Library::randomizeBooks() {
    std::mt19937 rng(std::random_device{}());
    std::vector<std::int64_t> ids(N*M*K);
    for (std::int64_t i = 0; i < ids.size(); i++) {
        ids[i] = i;
    }
    std::shuffle(ids.begin(), ids.end(), rng);

    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < N; ++j) {
            for (int k = 0; k < K; ++k) {
                _lib[i][j][k] = BookEntry{
                    .book={ids[i * N * K + j * K + k]}, 
                    .location={i, j, k}
                };
            }
        }
    }
}

std::vector<BookEntry> Library::MakeCatalog(const std::shared_ptr<STQ> stq) {
    std::vector<BookEntry> catalog;
    catalog.reserve(M*N*K);
    for (const auto& row: _lib) {
        for (const auto& book_shelf : row) {
            for (const auto& book : book_shelf) {
                catalog.push_back(std::move(book));
            }
        }
    }
    MergeSort(stq, catalog.begin(), catalog.end());
    return catalog;
}

void Library::PrintCatalog(const std::shared_ptr<STQ> stq) {
    auto catalog = MakeCatalog(stq);
    for (const auto& book_entry : catalog) {
        LOG_INFO() << std::format("Book {} Position ({}, {}, {})", book_entry.book.id, book_entry.location.row, book_entry.location.book_shelf, book_entry.location.shelf_pos);
    }
}

