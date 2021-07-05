package com.goodguide.palestine_spirit.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.goodguide.palestine_spirit.models.User;
import com.goodguide.palestine_spirit.repositories.RoleRepository;
import com.goodguide.palestine_spirit.repositories.UserRepository;

@Service
public class UserService {
	@Autowired
    private UserRepository uRepo;
    private RoleRepository roleRepository;
    
    public UserService(UserRepository userReposo, RoleRepository roleRe) {
    	this.roleRepository = roleRe;
    	this.uRepo = userReposo;
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
}

