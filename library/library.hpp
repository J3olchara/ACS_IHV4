#pragma once
#include "stq.hpp"
#include "books.hpp"

#include <cstdint>

class Library {
private:
    std::vector< std::vector< std::vector<BookEntry> > > _lib;
    int M; // number of rows
    int N; // number of book shelfs per row
    int K; // number of books per book shelf

    std::shared_ptr<Task> SetMergeSortTask(
        const std::shared_ptr<STQ>& stq, 
        const std::vector<BookEntry>::iterator begin, 
        const std::vector<BookEntry>::iterator end
    );

    void MergeSort(const std::shared_ptr<STQ>& stq, std::vector<BookEntry>::iterator begin, std::vector<BookEntry>::iterator end);

public:
    Library(int M, int N, int K) : M(M), N(N), K(K) {
        _lib.resize(M);
        for (int i = 0; i < M; ++i) {
            _lib[i].resize(N);
            for (int j = 0; j < N; ++j) {
                _lib[i][j].resize(K);
            }
        }
    }

    void randomizeBooks();

    std::vector<BookEntry> MakeCatalog(const std::shared_ptr<STQ> stq);
    
    void PrintCatalog(const std::shared_ptr<STQ> stq);
};