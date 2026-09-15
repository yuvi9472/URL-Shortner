package com.urlshortner.demo.model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;



@Setter
@Getter
@Entity
@Table(name = "urls")
public class Url{

    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private Long id;

    @Column(name = "shortcode", nullable = false, unique = true)
    private String shortcode;

    @Column(name = "original_url", nullable = false)
    private String originalUrl;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @Column(name = "click_count")
    private Integer clickCount;


}