package com.bookbookbook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bookbookbook.service.LibraryService;

@Controller
public class LibraryController {

   @Autowired
   LibraryService libraryService;
   
   //나의 서재 첫화면
   @GetMapping("/pages/user-myLibrary")
	public String myLibrary() {
		System.out.println(" user-myLibrary 호출");
		return "pages/user-myLibrary";
	}
   
//   @RequestMapping("/pages/{step}")
//   public String step(@PathVariable String step) {
//      return "pages/"+step;
//   }
}