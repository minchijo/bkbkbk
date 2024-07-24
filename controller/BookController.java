package com.bookbookbook.controller;

import com.bookbookbook.domain.BookVO;
import com.bookbookbook.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    /**
     * 화면: 				도서 검색 결과 페이지
     * method명: 	bookSearchResult
     * 인자:      			query (검색어), type (검색 유형), page (페이지 번호), Model 객체
     * 리턴형:     		String (페이지 이름)
     * 역할:      			사용자가 입력한 검색어와 검색 유형을 기반으로 도서를 검색하고, 결과를 모델에 추가하여
     *           				"pages/book-bookSearchResult" 페이지를 반환하는 함수
     */
    @GetMapping("/bookSearchResult")
    public String bookSearchResult(@RequestParam("query") String query,
                                   @RequestParam("type") String type,
                                   @RequestParam(value = "page", defaultValue = "1") int page,
                                   Model model) {
        int pageSize = 12;
        int offset = (page - 1) * pageSize;

        List<BookVO> books = null;
        switch (type) {
            case "title":
                books = bookService.bookSearchResultByTitle(query);
                break;
            case "writer":
                books = bookService.bookSearchResultByWriter(query);
                break;
            case "publisher":
                books = bookService.bookSearchResultByPublisher(query);
                break;
            case "bookPreview":
                books = bookService.bookSearchResultByBookPreview(query);
                break;
        }

        int totalResults = books.size();
        boolean hasMore = totalResults > page * pageSize;

        model.addAttribute("books", books.subList(offset, Math.min(offset + pageSize, totalResults)));
        model.addAttribute("query", query);
        model.addAttribute("type", type);
        model.addAttribute("page", page);
        model.addAttribute("hasMore", hasMore);
        return "pages/book-bookSearchResult";
    }

    /**
     * 화면: 도서 상세 페이지
     * method명: getBookDetails
     * 인자:      bookNum (도서 번호), Model 객체
     * 리턴형:     String (페이지 이름)
     * 역할:      주어진 도서 번호를 사용하여 도서 세부 정보를 가져오고, 모델에 추가하여
     *           "pages/book-bookDetails" 페이지를 반환하는 함수
     */
    @GetMapping("/bookDetails")
    public String getBookDetails(@RequestParam("bookNum") Integer bookNum, Model model) {
        BookVO getBookDetails = bookService.getBookDetails(bookNum);
        model.addAttribute("bookDetails", getBookDetails);
        return "pages/book-bookDetails";
    }

    /**
     * 화면: 책 상세 페이지에서 읽고 싶은 책 버튼 클릭 시
     * method명: addWishlist
     * 인자:      bookNum (도서 번호), Model 객체
     * 리턴형:     String (리다이렉트 URL)
     * 역할:      주어진 도서 번호를 읽고 싶은 책 목록에 추가하고, 
     *           "pages/user-myBookshelf" 페이지로 리다이렉트하는 함수
     */
    @PostMapping("/addWishlist")
    public String addWishlist(@RequestParam("bookNum") Integer bookNum, Model model) {
        bookService.addWishlist(bookNum);
        return "redirect:/pages/user-myBookshelf";
    }
}
