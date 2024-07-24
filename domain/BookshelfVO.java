package com.bookbookbook.domain;

import lombok.Data;

/*
 * 
 * 클래스명: 	BookshelfVO
 * 역할:     	사용자의 책장 정보를 담고 있는 클래스
 */
@Data
public class BookshelfVO {
    private String userId; // 사용자 ID
    private Integer readBooks; // 읽은 책의 수
    private String characterStage; // 사용자 캐릭터 단계
    private String characterImage; // 사용자 캐릭터 이미지
    private String readBookTitles; // 읽은 책 제목들
    private String bookTitle; // 책 제목
    private String writer; // 저자
    private Integer rating; // 책 평점
    private String startDate; // 책 읽기 시작 날짜
    private String endDate; // 책 읽기 종료 날짜
    private String bfrealname; // 책 커버 이미지 파일 실제 이름
    private String bname; // 책 커버 이미지 경로 
    private String addedDate; // 책이 추가된 날짜
}
