package com.goodguide.palestinespirit.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.goodguide.palestinespirit.models.Tour;
import com.goodguide.palestinespirit.repositories.TourRepository;


@Service
public class TourService {

	private final TourRepository tourRepository;

	public TourService(TourRepository tourRepository) {
        this.tourRepository = tourRepository;
    }
	
	//returns all tours: 
		public List<Tour> findAllTours() {
	        return tourRepository.findAll();
	    }
}
