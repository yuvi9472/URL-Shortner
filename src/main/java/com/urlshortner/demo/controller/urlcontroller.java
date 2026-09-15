package com.urlshortner.demo.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.urlshortner.demo.service.UrlService;

import java.net.URI;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;


@RestController
@RequestMapping("/urls")
public class urlcontroller {
    private final UrlService urlService;

    public urlcontroller(UrlService urlService){
        this.urlService = urlService;
    }

    @GetMapping("/{shortcode}")
    public ResponseEntity<Void> getOriginalUrl(@PathVariable String shortcode){
        String originalUrl = urlService.getOriginalUrl(shortcode);
    
        return ResponseEntity
                    .status(HttpStatus.FOUND)
                    .location(URI.create(originalUrl))
                    .build();
    }
}
