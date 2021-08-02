package com.goodguide.palestinespirit.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "sites")
public class Site {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String name;

	private String location;

	private String desc;

	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="cit_id")
	private City cit;

	@OneToMany(mappedBy = "site", fetch = FetchType.LAZY)
	private List<Tour> tours;
	
	@Column(updatable=false)
	private Date createdAt;
	private Date updatedAt;

	@OneToMany(mappedBy = "siteR", fetch = FetchType.LAZY)
	private List<Review> reviews;

	
	private String extraimage1;
	private String extraimage2;
	private String extraimage3;
	private String extraimage4;

	
	public Site() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}



	public City getCit() {
		return cit;
	}

	public void setCit(City cit) {
		this.cit = cit;
	}

	public List<Tour> getTours() {
		return tours;
	}

	public void setTours(List<Tour> tours) {
		this.tours = tours;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public List<Review> getReviews() {
		return reviews;
	}

	public void setReviews(List<Review> reviews) {
		this.reviews = reviews;
	}

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	public String getExtraimage1() {
		return extraimage1;
	}

	public void setExtraimage1(String extraimage1) {
		this.extraimage1 = extraimage1;
	}

	public String getExtraimage2() {
		return extraimage2;
	}

	public void setExtraimage2(String extraimage2) {
		this.extraimage2 = extraimage2;
	}

	public String getExtraimage3() {
		return extraimage3;
	}

	public void setExtraimage3(String extraimage3) {
		this.extraimage3 = extraimage3;
	}

	public String getExtraimage4() {
		return extraimage4;
	}

	public void setExtraimage4(String extraimage4) {
		this.extraimage4 = extraimage4;
	}


	
}