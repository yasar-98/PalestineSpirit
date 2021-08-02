package com.goodguide.palestinespirit.services;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.goodguide.palestinespirit.models.City;
import com.goodguide.palestinespirit.models.Review;
import com.goodguide.palestinespirit.models.Site;
import com.goodguide.palestinespirit.models.Tour;
import com.goodguide.palestinespirit.models.User;
import com.goodguide.palestinespirit.repositories.MessageRepository;
import com.goodguide.palestinespirit.repositories.RoleRepository;
import com.goodguide.palestinespirit.repositories.Siterepo;
import com.goodguide.palestinespirit.repositories.UserRepository;
import com.goodguide.palestinespirit.repositories.citrepo;
import com.goodguide.palestinespirit.repositories.tourrepo;

@Service
public class UserService {
    private JavaMailSender jMS;

    private UserRepository uRepo;
    private RoleRepository roleRepository;
	private citrepo city;
	private Siterepo site;
	private tourrepo tors;
	@Autowired
	private MessageRepository mRepo;

  
    
	public UserService(UserRepository uRepo, RoleRepository roleRepository, citrepo city, Siterepo site,
			tourrepo tors, MessageRepository mRepo, JavaMailSender jMS) {
		super();
		this.uRepo = uRepo;
		this.roleRepository = roleRepository;
		this.city = city;
		this.site = site;
		this.tors = tors;
		this.mRepo = mRepo;
		this.jMS = jMS;
	}

	public void comment(String comment, User user, Site site) {
		this.mRepo.save(new Review(comment,user, site));
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
	
public City createcity (City newcity) {
		
		
		return city.save(newcity);
	}
	public List<City> allcities(){
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
    public void sendingMail(String sendTo, String messageBody, String messageTitle) {
    SimpleMailMessage sMM = new SimpleMailMessage();
    sMM.setFrom("yasar.m.naser@gmail.com");
    sMM.setTo(sendTo);
    sMM.setSubject(messageTitle);
    sMM.setText(messageBody);
    jMS.send(sMM);
}

}

