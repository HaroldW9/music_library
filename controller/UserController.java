package com.musiclibrary.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.musiclibrary.entity.Song;
import com.musiclibrary.entity.User;
import com.musiclibrary.service.SongService;
import com.musiclibrary.service.UserService;

//Controller annotation tells us that this class is accessible over the Internet
@Controller
//RequestMapping annotation tells us the path that needs to be accessed to run this controller
@RequestMapping("/user")
public class UserController {

	// Need to inject the user DAO
	@Autowired
	private UserService userService;
	
	public String currentUser = "";
	
	@GetMapping("/list")
	// the Model is a DTO Data Transfer Object, transfers data from front to back
	// and back to front
	public String listUsers(Model theModel) {
		
		// get users from the service
		List<User> theUsers = userService.getUsers();
				
		// add the users to the model
		theModel.addAttribute("users", theUsers);
		
		return "list-users";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		// create model attribute to bind form data
		User theUser = new User();
		
		theModel.addAttribute("user", theUser);
		
		return "signUp";
	}
			
	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User theUser) {
		
		// save the user using our service
		userService.saveUser(theUser);
		
		return "redirect:/user/list";
	}
	
	@PostMapping("/validateUser")
    public String validateUser(@ModelAttribute("user") User theUser) {
        if (userService.validateUser(theUser) != null) {
        	currentUser = theUser.getEmail();
            return "redirect:/user/home";
        } else {
            return "redirect:/user/login";
        }
    }
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("userId") int theId, Model theModel) {
		
		// get the user from our service
		User theUser = userService.getUser(theId);	
		
		// set user as a model attribute to pre-populate the form
		theModel.addAttribute("user", theUser);
		
		// send over to our form		
		return "user-form";
	}
	
	@GetMapping("/delete")
	public String deleteUser(@RequestParam("userId") int theId) {
		
		// delete the user
		userService.deleteUser(theId);
		
		return "redirect:/user/list";
	}
	
	@GetMapping("/testrelationship")
	public String testRelationship() {
		
		//Step 1: Figure out which user we are using
		userService.updateUserSongList(4, 1);
		
//		userService.updateUserSongList(userId, songId);
		
		return "login";
	}
	
	@GetMapping("/showFormForSong")
	public String showFormForSong(Model theModel) {
		
		// create model attribute to bind form data
		Song theSong = new Song();
		
		theModel.addAttribute("song", theSong);
		
		return "song-form";
	}
	
	@GetMapping("/home")
	public String home(Model theModel) {
		
		return "home";
	}
	
	@GetMapping("/login")
	public String login(Model theModel) {
		
		return "login";
	}
	
	@GetMapping("/signUp")
	public String signUp(Model theModel) {
		
		return "signUp";
	}
	
}
