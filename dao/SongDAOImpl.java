package com.musiclibrary.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.musiclibrary.entity.Song;

//Links with Spring
@Repository
public class SongDAOImpl implements SongDAO {
	 
	//inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
						
	@Override
	// lets Spring control the transactions
	public List<Song> getSongs() {
					
		// get the current session from hibernate
		Session currentSession = sessionFactory.getCurrentSession();
							
		// create a query
		Query<Song> theQuery = 
				currentSession.createQuery("from Song", Song.class);
					
		// execute query and get result list
		List<Song> songs = theQuery.getResultList();
							
		// return the results		
		return songs;
	}
		
	@Override
	public void saveSong(Song theSong) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
			
		// save the customer ... finally LOL
		currentSession.saveOrUpdate(theSong);	
	}
		
	@Override
	public Song getSong(int theId) {
			
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
			
		// now retrieve/read from database using the primary key
		Song theSong = currentSession.get(Song.class, theId);
			
		return theSong;
	}
		
	@Override
	public void deleteSong(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
			
		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Song where id=:songId");
		theQuery.setParameter("songId", theId);
			
		theQuery.executeUpdate();		
	}
	
}
