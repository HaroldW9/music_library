package com.musiclibrary.service;

import java.util.List;

import com.musiclibrary.entity.Song;

public interface SongService {

public List<Song> getSongs();
	
	public void saveSong(Song theSong);
	
	public Song getSong(int theId);
	
	public void deleteSong(int theId);
}
