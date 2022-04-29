package com.team1.javaproject.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.team1.javaproject.models.Story;
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
//		 CHECK TO SEE IF USER IS LOGGED IN
		if(session.getAttribute("user_id") == null) {
			return "redirect:/login";
		}
		
		return "newStory.jsp";
	}
	
	@PostMapping("/stories/new")
	public String createStories(
			@Valid @ModelAttribute("story") Story filledStory,
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
			return "redirect:/stories";
		}
	}
	
	// ---------------- CREATE ------------------//
	
	// ---------------- READ --------------------//
	@GetMapping("/stories")
	public String stories(Model model) {
		// RETRIEVE ALL Stories
		List<Story> allStories = storyServ.getAllStories();
		model.addAttribute("stories", allStories);
		
		return "story.jsp";
	}
	
	// //// EDIT COURSE /////////////
		@GetMapping("/stories/{id}/edit")
		public String editView(@PathVariable("id") Long id,Model model) {
			Story story = storyServ.getOneStory(id);
			model.addAttribute("story", story);
			return "editStory.jsp";
		}
		@PostMapping("/stories/{id}")
		public String update(@PathVariable("id") Long id, @Valid @ModelAttribute("story") Story story, BindingResult result) {
			if (result.hasErrors()) {
				return "editStory";
			} else {
				storyServ.save(story);
				return "redirect:/stories";
			}
		}
		// ---------------- DELETE --------------------//
		@GetMapping("/stories/{id}/delete")
		  public String destroy(@PathVariable("id") Long id) {
			storyServ.deleteOneStory(id);
		  	return "redirect:/stories";
		}
	
	}