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
import com.team1.javaproject.models.User;
import com.team1.javaproject.services.UserService;

@Controller
public class HomeController {
	// Add once service is implemented:
	 @Autowired
	 private UserService userServ;
   
   @GetMapping("/login")
   public String index(
   		Model model
	) {
       // Bind empty User and LoginUser objects to the JSP
       // to capture the form input
       model.addAttribute("newUser", new User());
       model.addAttribute("newLogin", new LoginUser());
       return "login.jsp";
   }
   
   @GetMapping("/resources")
   public String resources() {
   		return "resources.jsp";
   }
   
//   @GetMapping("/stories")
//   public String resources() {
//   		return "resources.jsp";
//   }
   
   @PostMapping("/register")
   public String register(
   		@Valid @ModelAttribute("newUser") User newUser, 
           BindingResult result,
           Model model, HttpSession session
   ) {
       
       // CREATE THE USER
   	User registeredUser = userServ.register(newUser, result);
       
       if(result.hasErrors()) {
           // Be sure to send in the empty LoginUser before 
           // re-rendering the page.
           model.addAttribute("newLogin", new LoginUser());
           return "login.jsp";
       }
       // No errors! 
       // Store their ID from the DB in session, in other words, log them in.

       session.setAttribute("user_id", registeredUser.getId());
       return "redirect:/";
   }
   
   @PostMapping("/login")
   public String login(
   		@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
           BindingResult result, 
           Model model, HttpSession session
   ) {
       
       // Add once service is implemented:
       User user = userServ.login(newLogin, result);
   
       if(result.hasErrors()) {
           model.addAttribute("newUser", new User());
           return "login.jsp";
       }
       // No errors! 
       // Store their ID from the DB in session, in other words, log them in.
       session.setAttribute("user_id", user.getId());
       return "redirect:/";
   }
   
   
	// ---------------- Logout -------------------//
	@GetMapping("/logout")
	public String logout(HttpSession session) {

		if(session.getAttribute("user_id") != null) 
		    session.invalidate();
		return "redirect:/";

	}
	// ---------------- Logout -------------------//

}

