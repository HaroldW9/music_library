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
import com.musiclibrary.service.UserService;

//Controller annotation tells us that this class is accessible over the Internet
@Controller
//RequestMapping annotation tells us the path that needs to be accessed to run this controller
@RequestMapping("/song")
public class SongController {

	// Need to inject the user DAO
		@Autowired
		private UserService userService;
		
		@GetMapping("/list")
		// the Model is a DTO Data Transfer Object, transfers data from front to back
		// and back to front
		public String listSongs(Model theModel) {
			
			// get songs from the service
			List<Song> theSongs = userService.getSongs();
					
			// add the songs to the model
			theModel.addAttribute("songs", theSongs);
			
			return "list-songs";
		}
		
		@GetMapping("/showFormForAdd")
		public String showFormForAdd(Model theModel) {
			
			// create model attribute to bind form data
			Song theSong = new Song();
			
			theModel.addAttribute("song", theSong);
			
			return "song-form";
		}
				
		@PostMapping("/saveSong")
		public String saveSong(@ModelAttribute("song") Song theSong) {
			
			// save the song using our service
			userService.saveSong(theSong);
			
			
			return "redirect:/song/list";
		}
		
		@GetMapping("/showFormForUpdate")
		public String showFormForUpdate(@RequestParam("songId") int theId, Model theModel) {
			
			// get the song from our service
			Song theSong = userService.getSong(theId);	
			
			// set song as a model attribute to pre-populate the form
			theModel.addAttribute("song", theSong);
			
			// send over to our form		
			return "song-form";
		}
		
		@GetMapping("/delete")
		public String deleteSong(@RequestParam("songId") int theId) {
			
			// delete the song
			userService.deleteSong(theId);
			
			return "redirect:/song/list";
		}
}
