package com.bookbookbook.persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import com.bookbookbook.domain.BookVO;

public interface WishlistRepository extends JpaRepository<BookVO, Integer> {
}
