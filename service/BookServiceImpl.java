package com.bookbookbook.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bookbookbook.domain.BookVO;
import com.bookbookbook.persistence.BookRepository;
import com.bookbookbook.persistence.WishlistRepository;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookRepository bookRepository;
    
    @Autowired
    private WishlistRepository wishlistRepository;

    //책 제목, 작가, 출판사, 책 소개 별 검색 기능
    public List<BookVO> bookSearchResultByTitle(String bookTitle) {
        return bookRepository.findByBookTitleContainingIgnoreCase(bookTitle);
    }
    public List<BookVO> bookSearchResultByWriter(String writer) {
        return bookRepository.findByWriterContainingIgnoreCase(writer);
    }
    public List<BookVO> bookSearchResultByPublisher(String publisher) {
        return bookRepository.findByPublisherContainingIgnoreCase(publisher);
    }
    public List<BookVO> bookSearchResultByBookPreview(String bookPreview) {
        return bookRepository.findByBookPreviewContainingIgnoreCase(bookPreview);
    }
    
    //책 상세 
    public BookVO getBookDetails(Integer bookNum) {
        return bookRepository.findById(bookNum).orElse(null);
    }
    
    public void addWishlist(Integer bookNum) {
        BookVO book = bookRepository.findById(bookNum).orElseThrow(() 
        		-> new IllegalArgumentException("Invalid book ID: " + bookNum));
        wishlistRepository.save(book);
    }
    
}
