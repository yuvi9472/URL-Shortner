package com.urlshortner.demo.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice 
public class GlobalExceptionHandler {
    
    @ExceptionHandler(ShortcodeNotFoundException.class)
    public ResponseEntity<String> handleShortcodeNotFound(ShortcodeNotFoundException exception){
        return ResponseEntity
                .status(HttpStatus.NOT_FOUND)
                .body(exception.getMessage());
    }
}
