package com.goodguide.palestinespirit.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.goodguide.palestinespirit.models.Site;
@Repository
public interface Siterepo extends CrudRepository<Site, Long> {
	List<Site> findAll();
}
