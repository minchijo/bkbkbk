package com.bookbookbook.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bookbookbook.domain.ChatroomVO;
import com.bookbookbook.service.MainService;
import com.bookbookbook.service.NewsService;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;

	@RequestMapping("/pages/{step}")
	   public String step(@PathVariable String step) {
	      return "pages/"+step;
	   }
	
	//##########################################################	
		// NewsService 클래스의 인스턴스를 자동으로 주입
		@Autowired
		private NewsService newsService;

		// 메인 페이지 요청을 처리하는 메서드
		@RequestMapping("/")
		public String mainPage(Model model) {
			// newsService를 사용하여 도서관 뉴스를 가져와서 newsList에 저장
			List<Map<String, String>> newsList = newsService.getLibraryNews();
			// 모델에 newsList를 추가하여 뷰에서 사용할 수 있도록 설정
			model.addAttribute("newsList", newsList);
			// index.jsp 파일을 반환하여 클라이언트에게 보여줌
			return "index";
		}

		// 로그인 페이지 요청을 처리하는 메서드
		@RequestMapping("/pages/login")
		public String loginPage() {
			return "pages/user-login";  
		}

		// 회원가입 페이지 요청을 처리하는 메서드
		@RequestMapping("/pages/user-signup")
		public String signupPage() {
			return "pages/user-signup";
		}

		// 비밀번호 찾기 페이지 요청을 처리하는 메서드
		@RequestMapping("/pages/find-password")
		public String findPWPage() {
			return "pages/user-findPassword";
		}

		// 이메일 찾기 페이지 요청을 처리하는 메서드
		@RequestMapping("/pages/find-email")
		public String findingEmailPage() {
			return "pages/user-findEmail";
		}

		//#######################################
		// 캐릭터 찾기 페이지 요청을 처리하는 메서드
		@RequestMapping("/pages/find-mycharacters")
		public String myCharacterPage() {
			return "pages/user-myCharacters";
		}

		//#########################################
		//채팅방 목록 불러오기
		@GetMapping("/pages/chat-entrance")
		public void getChatroom(Model m, @RequestParam(defaultValue = "1") int page){
		
		int itemsPerPage = 6;
		
		//전체 페이지 수
		List<ChatroomVO> chatrooms = mainService.getChatroom();
		int totalPage= (int) Math.ceil((double) chatrooms.size() / itemsPerPage);
		
		//채팅방 페이지기능
		int startIndex= (page-1)*itemsPerPage;
		int endIndex = Math.min(startIndex + itemsPerPage, chatrooms.size());
	    List<ChatroomVO> currentPageRooms = chatrooms.subList(startIndex, endIndex);
		
		m.addAttribute("chatrooms",currentPageRooms);
		m.addAttribute("currentPage",page);
		m.addAttribute("totalPage",totalPage);
		}

		//채팅방 생성
		@GetMapping("/createChatroom")
		public String createChatroom(ChatroomVO chat) {
			//MultipartFile files로 받아서 chat.set~~하여서 넘기기
			mainService.createChatroom(chat);
			return "redirect:pages/chat-entrance";
		}

		//채팅방 검색
		@GetMapping("/searchChatroom")
		@ResponseBody
		public List<ChatroomVO> searchChatroom(@RequestParam String keyword){
			List<ChatroomVO> result= mainService.searchChatroom(keyword);
			return result;
		}

		//채팅방 이름 얻어오기
		@GetMapping("/pages/chat-chatroom")
		public void chatroom(String roomNum, Model m) {
			m.addAttribute("room",mainService.getRoomInfo(roomNum));

		}
		
}
