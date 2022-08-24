package com.musiclibrary.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

@Entity
@Table(name="user")
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="username")
	private String username;
	
	@Column(name="email")
	private String email;

	@Column(name="password")
	private String password;
	
	// First thing needed to make the many to many relationship
	@ManyToMany
    @JoinTable(name = "user_song", 
    joinColumns = { @JoinColumn(name = "user_id") }, 
    inverseJoinColumns = { @JoinColumn(name = "song_id") }
    )
    private List<Song> userSongs;
	
	public User() {
		
	}
	
	public User(int id, String username, String email, String password, List<Song> userSongs) {
		this.id = id;
		this.username = username;
		this.email = email;
		this.password = password;
		this.userSongs = userSongs;
	}
	
	public User(String username, String email, String password, List<Song> userSongs) {
		this.username = username;
		this.email = email;
		this.password = password;
		this.userSongs = userSongs;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Song> getUserSongs() {
		return userSongs;
	}

	public void setUserSongs(List<Song> userSongs) {
		this.userSongs = userSongs;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", email=" + email + ", password=" + password + "]";
	}	
}
