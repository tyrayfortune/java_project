package com.team1.javaproject.models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name="stories")
public class Story {

	//MEMBER VARIABLES
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotEmpty(message="Story is required")
    @Size(min=20, message="Name must be longer than 20 characters")
    private String storyDescription;
	
	//RELATIONSHIPS
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User creator;
	
	//CONSTRUCTORS
	
	
	//GETTERS/ SETTERS/ OTHER METHODS
//	@Column(updatable=false)
//    @DateTimeFormat(pattern="yyyy-MM-dd")
//    private Date createdAt;
//
//	@DateTimeFormat(pattern="yyyy-MM-dd")
//    private Date updatedAt;
//	
//    @PrePersist
//    protected void onCreate(){
//        this.createdAt = new Date();
//    }
//	@PreUpdate
//    protected void onUpdate(){
//        this.updatedAt = new Date();
//    }
	
}
