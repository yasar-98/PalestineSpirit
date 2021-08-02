package com.goodguide.palestinespirit.models;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "tours")
public class Tour {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Future
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date date;
	
	
	@NotNull
	private Integer capacity;
	
	@NotNull
	private Integer fees;

	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
	private User toursown;

	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="site_id")
	private Site site;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "reserve", joinColumns = @JoinColumn(name = "tour_id"), inverseJoinColumns = @JoinColumn(name = "user_id"))
	private List<User> travellers;

	@Column(updatable=false)
	private Date createdAt;
	private Date updatedAt;

	public Tour() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}



	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Integer getCapacity() {
		return capacity;
	}

	public void setCapacity(Integer capacity) {
		this.capacity = capacity;
	}

	public Integer getFees() {
		return fees;
	}

	public void setFees(Integer fees) {
		this.fees = fees;
	}

	public User getToursown() {
		return toursown;
	}

	public void setToursown(User toursown) {
		this.toursown = toursown;
	}


	public Site getSite() {
		return site;
	}

	public void setSite(Site site) {
		this.site = site;
	}

	public List<User> getTravellers() {
		return travellers;
	}

	public void setTravellers(List<User> travellers) {
		this.travellers = travellers;
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

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}
}