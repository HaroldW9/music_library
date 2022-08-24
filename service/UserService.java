package com.musiclibrary.service;

import java.util.List;

import com.musiclibrary.entity.Song;
import com.musiclibrary.entity.User;

public interface UserService {

	public List<User> getUsers();
	
	public void saveUser(User theUser);
	
	public User getUser(int theId);
	
	public void deleteUser(int theId);
	
	public User validateUser(User theUser);
	
	public List<Song> updateUserSongList(int userId, int songId);

	public void getUserSongList(int i, int j);

	public List<Song> getSongs();

	public void saveSong(Song theSong);

	public Song getSong(int theId);

	public void deleteSong(int theId);

}
