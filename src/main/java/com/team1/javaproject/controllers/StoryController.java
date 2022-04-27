package com.team1.javaproject.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.team1.javaproject.models.LoginUser;
import com.team1.javaproject.models.Story;
import com.team1.javaproject.models.User;
import com.team1.javaproject.services.StoryService;
import com.team1.javaproject.services.UserService;

@Controller
public class StoryController {
	@Autowired
	private StoryService storyServ;
	
	@Autowired
	private UserService userServ;
	
	@GetMapping("/")
	public String home() {
		return "dashboard.jsp";
	}	
	
	// ---------------- CREATE ------------------//
	@GetMapping("/stories/new")
	public String newStory(
			HttpSession session,
			@ModelAttribute("story") Story emptyStory
			
	) {
		// CHECK TO SEE IF USER IS LOGGED IN
//		if(session.getAttribute("user_id") == null) {
//			return "redirect:/";
//		}
//		
		return "newStory.jsp";
	}
	
	@PostMapping("/stories/new")
	public String createStories(
			@Valid @ModelAttribute("stories") Story filledStory,
			BindingResult results
	) {
		// CHECK FOR VALIDATIONS
		if(results.hasErrors()) {
			// VALIDATIONS FAILED
			return "newStory.jsp";
		}
		else {
			// VALIDATIONS PASSED
			storyServ.save(filledStory);
			return "redirect:/dashboard";
		}
	}
	
	// ---------------- CREATE ------------------//
	
	
	
	
	
	}