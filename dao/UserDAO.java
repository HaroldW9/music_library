package com.musiclibrary.dao;

import java.util.List;

import com.musiclibrary.entity.Song;
import com.musiclibrary.entity.User;

public interface UserDAO {
	
	public List<User> getUsers();
	
	public void saveUser(User theUser);
	
	public User getUser(int theId);
	
	public void deleteUser(int theId);
	
	User validateUser(User theUser);
	
	public List<Song> updateUserSongList(int userId, int songId);
	
	public void getUserSongList(int i, int j);
}
