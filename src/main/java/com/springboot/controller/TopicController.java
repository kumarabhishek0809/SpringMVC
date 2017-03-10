package com.springboot.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.model.Topic;

public class TopicController {
	@RequestMapping("/Hello")
	public List<Topic> sayHi(){
		return Arrays.asList(new Topic("1","Spring Course","Spring Description"),
				new Topic("2","Java Course","Spring Description"),
				new Topic("3","Angular2 Course","Spring Description")) ;
	}
}
