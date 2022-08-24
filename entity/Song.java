package com.musiclibrary.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="song")
public class Song {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="title")
	private String title;
	
	@Column(name="artist")
	private String artist;
	
	@Column(name="album")
	private String album;
	
	@Column(name="price")
	private double price;
	
	@ManyToMany
    @JoinTable(name = "user_song", 
    joinColumns = { @JoinColumn(name = "song_id") }, 
    inverseJoinColumns = { @JoinColumn(name = "user_id") }
    )
    private List<User> songUser;
	
	public Song() {
		
	}
	
	public Song(int id, String title, String artist, String album, double price, List<User> songUser) {
		this.id = id;
		this.title = title;
		this.artist = artist;
		this.album = album;
		this.price = price;
		this.songUser = songUser;
	}
	
	public Song(String title, String artist, String album, double price, List<User> songUser) {
		this.title = title;
		this.artist = artist;
		this.album = album;
		this.price = price;
		this.songUser = songUser;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}
	
	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public List<User> getSongUser() {
		return songUser;
	}

	public void setSongUser(List<User> songUser) {
		this.songUser = songUser;
	}

	@Override
	public String toString() {
		return "Song [id=" + id + ", title=" + title + ", artist=" + artist + ", album=" + album + ", price=" + price + "]";
	}
	
}
