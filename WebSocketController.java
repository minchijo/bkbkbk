package com.bookbookbook;

import java.time.LocalDateTime;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.stereotype.Controller;

import com.bookbookbook.domain.ChatMessageVO;
import com.bookbookbook.domain.ChatMessageVO.MessageType;
import com.bookbookbook.service.ChatMessageCSVService;


@Controller
public class WebSocketController {
	@Autowired
    private ChatMessageCSVService chatMessageCSVService;
	
    private final SimpMessageSendingOperations messagingTemplate;
	//private final ChatRoomService chatRoomService;

    public WebSocketController(SimpMessageSendingOperations messagingTemplate) {
        this.messagingTemplate = messagingTemplate;
        //this.chatRoomService = chatRoomService;
    }

    
    @MessageMapping("/chat.register")
    @SendTo("/topic/public")
    public ChatMessageVO register(@Payload ChatMessageVO message) {
        // 클라이언트가 JOIN 메시지를 보냈을 때 처리
        System.out.println("Received JOIN message: " + message);
        return message;
    }
    
    @MessageMapping("/chat.sendMessage")
    public void sendMessage(@Payload ChatMessageVO chatMessage) {
        chatMessage.setTime(LocalDateTime.now());
        chatMessageCSVService.saveChatMessage(chatMessage);
        messagingTemplate.convertAndSend("/topic/public", chatMessage);
    }

    @MessageMapping("/chat.addUser")
    public void addUser(@Payload ChatMessageVO chatMessage) {
        chatMessage.setType(MessageType.JOIN);
        chatMessage.setTime(LocalDateTime.now());
        messagingTemplate.convertAndSend("/topic/public", chatMessage);
    }
    
    @MessageMapping("/chat.removeUser")
    public void removeUser(@Payload ChatMessageVO chatMessage) {
        chatMessage.setType(MessageType.LEAVE);
        chatMessage.setTime(LocalDateTime.now());
        messagingTemplate.convertAndSend("/topic/public", chatMessage);
    }
    
}