package com.urlshortner.demo.exception;

public class ShortcodeNotFoundException extends RuntimeException{
    
    public ShortcodeNotFoundException(String shortcode){
        super("No URL found for shortcode" + shortcode);
    }
}
