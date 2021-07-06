package com.goodguide.palestine_spirit.services;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goodguide.palestine_spirit.models.Cit;
import com.goodguide.palestine_spirit.models.Site;
import com.goodguide.palestine_spirit.models.Tour;
import com.goodguide.palestine_spirit.models.User;
import com.goodguide.palestine_spirit.repositories.RoleRepository;
import com.goodguide.palestine_spirit.repositories.Siterepo;
import com.goodguide.palestine_spirit.repositories.UserRepository;
import com.goodguide.palestine_spirit.repositories.citrepo;
import com.goodguide.palestine_spirit.repositories.tourrepo;

@Service
public class UserService {
	@Autowired
    private UserRepository uRepo;
    private RoleRepository roleRepository;
	private citrepo city;
	private Siterepo site;
	private tourrepo tors;

  
    
	public UserService(UserRepository uRepo, RoleRepository roleRepository, citrepo city, Siterepo site,
			tourrepo tors) {
		super();
		this.uRepo = uRepo;
		this.roleRepository = roleRepository;
		this.city = city;
		this.site = site;
		this.tors = tors;
	}
	public User findById(Long id) {
		return this.uRepo.findById(id).orElse(null);
	}
	public User registerUser(User user) {
		String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(hashed);
        user.setRole(roleRepository.findByName("ROLE_USER"));
		return this.uRepo.save(user);
	}
	public User registerGuide(User user) {
		String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(hashed);
        user.setRole(roleRepository.findByName("ROLE_GUIDE"));
		return this.uRepo.save(user);
	}
	public User registerAdmin(User user) {
		String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
		user.setPassword(hashed);
        user.setRole(roleRepository.findByName("ROLE_ADMIN"));
		return this.uRepo.save(user);
	}
	public User getUserByEmail(String email) {
		return this.uRepo.findByEmail(email);
	}
	public boolean authenticateUser(String email, String password) {
		User user = this.uRepo.findByEmail(email);
		if(user == null)
			return false;
		
		return BCrypt.checkpw(password, user.getPassword());
	}
	
public Cit createcity (Cit newcity) {
		
		
		return city.save(newcity);
	}
	public List<Cit> allcities(){
		return city.findAll();
	}
	public Site createsite(Site newsite) {
		
		return site.save(newsite);
	}
	public List<Site> allsites(){
		return site.findAll();
	}

	public List<User> allusers(){
		return uRepo.findAll();
	}

	public Tour createtrip(Tour tour) {	
		
		return tors.save(tour);
	}
	
	public List<Tour> alltours(){
		return tors.findAll();
	}
	public void manageAttendees(Tour tour, User user, boolean isJoining) {
		if(isJoining) {
			tour.getTravellers().add(user);
		} else {
			tour.getTravellers().remove(user);
		}
		this.tors.save(tour);
	}
	public Tour findTourById(Long id) {
		return this.tors.findById(id).orElse(null);
	}

}

