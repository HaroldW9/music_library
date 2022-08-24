package com.musiclibrary.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musiclibrary.dao.SongDAO;
import com.musiclibrary.dao.UserDAO;
import com.musiclibrary.entity.Song;
import com.musiclibrary.entity.User;

@Service
public class UserServiceImpl implements UserService {

	// need to inject DAO
	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public List<User> getUsers() {
		return userDAO.getUsers();
	}

	@Override
	@Transactional
	public void saveUser(User theUser) {
		userDAO.saveUser(theUser);	
	}
	
	@Override
	@Transactional
	public User getUser(int theId) {
		
		return userDAO.getUser(theId);
	}
	
	@Override
	@Transactional
	public void deleteUser(int theId) {
		
		userDAO.deleteUser(theId);
	}
	
	@Override
	@Transactional
	public User validateUser(User theUser) {
		
		return userDAO.validateUser(theUser);
	}
	
	@Override
	@Transactional
	public List<Song> updateUserSongList(int userId, int songId) {
		
		return userDAO.updateUserSongList(userId, songId);
	}

	@Override
	@Transactional
	public void getUserSongList(int i, int j) {
		
		userDAO.getUserSongList(i, j);
	}
	
	// need to inject DAO
	@Autowired
	private SongDAO songDAO;

	@Override
	@Transactional
	public List<Song> getSongs() {
		return songDAO.getSongs();
	}

	@Override
	@Transactional
	public void saveSong(Song theSong) {
		songDAO.saveSong(theSong);	
	}
			
	@Override
	@Transactional
	public Song getSong(int theId) {
				
		return songDAO.getSong(theId);
	}
			
	@Override
	@Transactional
	public void deleteSong(int theId) {
				
		songDAO.deleteSong(theId);
	}
	
}