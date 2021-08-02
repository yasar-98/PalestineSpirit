package com.goodguide.palestinespirit.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.goodguide.palestinespirit.models.Site;
import com.goodguide.palestinespirit.repositories.Siterepo;

//import com.hadeel.PalestineSpiritN.models.Cit;


@Service
public class SiteService {

	private final Siterepo siteRepository;

	public SiteService(Siterepo siteRepository) {
        this.siteRepository = siteRepository;
    }
	
	//returns all sites: 
	public List<Site> findAllSites() {
        return siteRepository.findAll();
    }
	
	//add a new site :
	public Site createSite(Site s) {
    	return siteRepository.save(s);
    }
	
	//find site by id :
	 public Site findSiteById(Long id) { 
	    	Optional<Site>optionalSite =siteRepository.findById(id);
	    	if(optionalSite.isPresent()) {
	    		return optionalSite.get();
	    	}else {
	    		return null;
	    	}
	    }
	    
	
}
