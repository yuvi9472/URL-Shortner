package com.urlshortner.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.urlshortner.demo.model.Url;

public interface Urlrepository extends JpaRepository<Url, Long>{
    Optional<Url> findByShortcode(String shortcode);
}
