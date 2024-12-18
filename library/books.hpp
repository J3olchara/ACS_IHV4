#pragma once
#include <cstdint>


struct Book {
    std::int64_t id;

    bool operator<(const Book& other) const {
        return id < other.id;
    }
};

struct Location {
    std::int32_t row;
    std::int32_t book_shelf;
    std::int32_t shelf_pos;
};

struct BookEntry {
    Book book;
    Location location;

    bool (operator<(const BookEntry& other) const) {
        return book < other.book;
    }
};