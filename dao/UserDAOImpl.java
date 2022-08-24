package com.musiclibrary.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.musiclibrary.entity.Song;
import com.musiclibrary.entity.User;

// Links with Spring
@Repository
public class UserDAOImpl implements UserDAO {

	// inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
					
	@Override
	// lets Spring control the transactions
	public List<User> getUsers() {
				
		// get the current session from hibernate
		Session currentSession = sessionFactory.getCurrentSession();
						
		// create a query
		Query<User> theQuery = 
				currentSession.createQuery("from User", User.class);
				
		// execute query and get result list
		List<User> users = theQuery.getResultList();
						
		// return the results		
		return users;
	}
	
	@Override
	public void saveUser(User theUser) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the user ... finally LOL
		currentSession.saveOrUpdate(theUser);	
	}
	
	@Override
	public User getUser(int theId) {
		
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now retrieve/read from database using the primary key
		User theUser = currentSession.get(User.class, theId);
		
		return theUser;
	}
	
	@Override
	public void deleteUser(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from User where id=:userId");
		theQuery.setParameter("userId", theId);
		
		theQuery.executeUpdate();		
	}

	@Override
	public User validateUser(User theUser) {
		// get the current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        // now retrieve/read from database using the primary key
        Query theQuery = currentSession.createQuery("from User where email=:email");
        theQuery.setParameter("email", theUser.getEmail());
        List<User> validation = theQuery.getResultList();

        if (!validation.isEmpty()) {
            return theUser;
        } else {
		return null;
        }
	}
	
	/// Step 6
	@Override
	public List<Song> updateUserSongList(int userId, int songId) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// Step 1
		User theUser = currentSession.get(User.class, userId);
		
		// Step 2
		List<Song> theSongs = theUser.getUserSongs();
		
		// Step 3
		Song theSong = currentSession.get(Song.class, songId);
		
		// Step 4
		theSongs.add(theSong);
		
		// Step 5
		theUser.setUserSongs(theSongs);
		
		// Step 6
		currentSession.update(theUser);
				
		return theSongs;
	}

	@Override
	public void getUserSongList(int i, int j) {
		// TODO Auto-generated method stub
		
	}
		
}

