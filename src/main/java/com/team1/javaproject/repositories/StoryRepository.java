package com.team1.javaproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.team1.javaproject.models.Story;

@Repository
public interface StoryRepository extends CrudRepository<Story, Long>{
	List<Story> findAll();
}

