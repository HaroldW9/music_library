package com.musiclibrary.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.musiclibrary.dao.SongDAO;
import com.musiclibrary.entity.Song;

public class SongServiceImpl implements SongService {

	// need to inject DAO
	@Autowired
	private SongDAO songDAO;
		
	@Override
	public List<Song> getSongs() {
		
		return songDAO.getSongs();
	}

	@Override
	public void saveSong(Song theSong) {
		
		songDAO.saveSong(theSong);
		
	}

	@Override
	public Song getSong(int theId) {
	
		return songDAO.getSong(theId);
	}

	@Override
	public void deleteSong(int theId) {
		
		songDAO.deleteSong(theId);	
	}

}
