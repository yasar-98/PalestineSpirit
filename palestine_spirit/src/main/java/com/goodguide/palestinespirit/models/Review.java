package com.goodguide.palestinespirit.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

@Entity
@Table(name = "reviews")
public class Review {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String content;

	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
	private User siteU;

	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="site_id")
	private Site siteR;

	@Column(updatable=false)
	private Date createdAt;
	private Date updatedAt;

	public Review() {
	}

	public Review(String content, User siteU, Site siteR) {
		this.content = content;
		this.siteU = siteU;
		this.siteR = siteR;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}



	public User getSiteU() {
		return siteU;
	}

	public void setSiteU(User siteU) {
		this.siteU = siteU;
	}

	public Site getSiteR() {
		return siteR;
	}

	public void setSiteR(Site siteR) {
		this.siteR = siteR;
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
