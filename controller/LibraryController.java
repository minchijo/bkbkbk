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
   
  
   
//   @RequestMapping("/pages/{step}")
//   public String step(@PathVariable String step) {
//      return "pages/"+step;
//   }
}