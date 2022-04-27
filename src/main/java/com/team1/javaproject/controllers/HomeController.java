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
import org.springframework.web.bind.annotation.PostMapping;

import com.team1.javaproject.models.LoginUser;
import com.team1.javaproject.models.Story;
import com.team1.javaproject.models.User;
import com.team1.javaproject.services.StoryService;
import com.team1.javaproject.services.UserService;

@Controller
public class HomeController {
	@Autowired
	// CHANGE
	private UserService userService;

	@Autowired
	// TODO
	private StoryService storyService;

	@GetMapping("/login")
	public String index(Model model, HttpSession session) {// change model
		if (session.getAttribute("username") != null) {
			model.addAttribute("username", session.getAttribute("username"));
			return "dashboard.jsp";
		} else {
			model.addAttribute("newUser", new User());
			model.addAttribute("newLogin", new LoginUser());
			return "login.jsp";
		}

	}

	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model,
			HttpSession session) {

		if (result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());

			return "login.jsp";
		}
		User user = userService.register(newUser, result);

		if (result.hasErrors()) {
			System.out.println(result);
			return null;
		}

//		session.setAttribute("username", newUser.getUsername());

		return "dashboard.jsp";
	}

	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model,
			HttpSession session) {

		User user = userService.login(newLogin, result);

		if (result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "";// TODO
		} else if (user != null) {
//			session.setAttribute("username", user.getUsername());

		}
		return "redirect:/";

	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("username");
		return "redirect:/";
	}

}

