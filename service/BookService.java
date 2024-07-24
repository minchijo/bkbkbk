package com.bookbookbook.service;

import java.util.List;

import com.bookbookbook.domain.BookVO;

public interface BookService {
  
	//책 제목, 작가, 출판사, 책 소개 별 검색 기능
	  List<BookVO> bookSearchResultByTitle(String bookTitle);
	  List<BookVO> bookSearchResultByWriter(String writer);
	  List<BookVO> bookSearchResultByPublisher(String publisher);
	  List<BookVO> bookSearchResultByBookPreview(String bookPreview);
	  
	  //책 검색 결과에서 클릭 시 책 상세로 넘어가는 기능 
	  BookVO getBookDetails(Integer bookNum);
	  
	  //책 상세 페이지에서 읽고 싶은 책 저장하기 기능 
	  void addWishlist(Integer bookNum);
}
