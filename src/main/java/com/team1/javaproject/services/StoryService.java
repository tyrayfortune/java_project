package com.team1.javaproject.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.javaproject.models.Story;
import com.team1.javaproject.repositories.StoryRepository;

@Service
public class StoryService {

	@Autowired
	private StoryRepository storyRepo;
	
	
	// CREATE / UPDATE 
	public Story save(Story storyObj) {
		return storyRepo.save(storyObj);
	}
	
	// GET ALL
	public List<Story> getAllStories(){
		return storyRepo.findAll();
	}
	
	// GET ONE 
	public Story getOneStory(Long id) {
		return storyRepo.findById(id).orElse(null);
	}

	// DELETE ONE
	public void deleteOneStory(Long id) {
		storyRepo.deleteById(id);
	}
}