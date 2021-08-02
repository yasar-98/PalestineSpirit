package com.goodguide.palestinespirit.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.goodguide.palestinespirit.models.User;

@Component
public class UserValidator implements Validator{
    @Override
    public boolean supports(Class<?> clazz) {
        return User.class.equals(clazz);
    }
    
    // 2
    @Override
    public void validate(Object target, Errors errors) {
        User user = (User) target;
        System.out.println("aaa");
        
        if (!user.getPasswordConfirmation().equals(user.getPassword())) {
            // 3
        	 System.out.println("bbbb");
            errors.rejectValue("passwordConfirmation", "Match");
        }         
    }
}
