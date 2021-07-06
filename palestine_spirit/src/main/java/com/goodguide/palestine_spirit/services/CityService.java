package com.goodguide.palestine_spirit.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.goodguide.palestine_spirit.models.Cit;
import com.goodguide.palestine_spirit.repositories.Siterepo;
import com.goodguide.palestine_spirit.repositories.citrepo;


@Service
public class CityService {

	private final citrepo cityRepository;
	private final Siterepo siteRepository;

    
    public CityService(citrepo cityRepository, Siterepo siteRepository) {
        this.cityRepository = cityRepository;
        this.siteRepository = siteRepository;
    }
    
    
    //get all cities:
    public List<Cit> allCities() {
        return cityRepository.findAll();
    }
    
    //get a city by it's id :
    public Cit findCityById(Long id) { 
    	Optional<Cit>optionalCity =cityRepository.findById(id);
    	if(optionalCity.isPresent()) {
    		return optionalCity.get();
    	}else {
    		return null;
    	}
    }
    
    //add a new city :
    public Cit createCity(Cit c) {
    	return cityRepository.save(c);
    }
}
