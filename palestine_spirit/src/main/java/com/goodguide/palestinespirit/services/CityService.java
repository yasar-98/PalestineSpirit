package com.goodguide.palestinespirit.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.goodguide.palestinespirit.models.City;
import com.goodguide.palestinespirit.repositories.Siterepo;
import com.goodguide.palestinespirit.repositories.citrepo;



@Service
public class CityService {

	private final citrepo cityRepository;
	private final Siterepo siteRepository;

    
    public CityService(citrepo cityRepository, Siterepo siteRepository) {
        this.cityRepository = cityRepository;
        this.siteRepository = siteRepository;
    }
    
    
    //get all cities:
    public List<City> allCities() {
        return cityRepository.findAll();
    }
    
    //get a city by it's id :
    public City findCityById(Long id) { 
    	Optional<City>optionalCity =cityRepository.findById(id);
    	if(optionalCity.isPresent()) {
    		return optionalCity.get();
    	}else {
    		return null;
    	}
    }
    
    //add a new city :
    public City createCity(City c) {
    	return cityRepository.save(c);
    }
}
