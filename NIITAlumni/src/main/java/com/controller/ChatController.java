package com.controller;

import java.util.Date;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Message;
import com.model.OutputMessage;

@Controller
public class ChatController {
	@RequestMapping("/Chat")
	  public String viewApplication() 
	{
			System.out.println("i am in controller");
	    return "ChatPage";
	  }
	    
	  @MessageMapping("/chat")
	  @SendTo("/topic/message")
	  public OutputMessage sendMessage(Message message) {
	    return new OutputMessage(message, new Date());
	  }
}