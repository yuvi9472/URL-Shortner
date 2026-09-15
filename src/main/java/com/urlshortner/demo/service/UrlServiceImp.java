package com.urlshortner.demo.service;

import java.util.Optional;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.urlshortner.demo.exception.ShortcodeNotFoundException;
import com.urlshortner.demo.model.Url;
import com.urlshortner.demo.repository.Urlrepository;

@Service
public class UrlServiceImp implements UrlService{
    
    private final Urlrepository Urlrepository;

    public UrlServiceImp(com.urlshortner.demo.repository.Urlrepository urlrepository) {
        Urlrepository = urlrepository;
    }

    @Override
    @Cacheable(value = "urls", key = "#shortcode")
    public String getOriginalUrl(String shortcode){
        Optional<Url> url = Urlrepository.findByShortcode(shortcode);
        
        if(url.isPresent()){
            return url.get().getOriginalUrl();
        }

        throw new ShortcodeNotFoundException(shortcode);
    }

}
