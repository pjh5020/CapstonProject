package com.example.capstonproject.enums;


import com.example.capstonproject.response.ErrorResponse;
import org.springframework.http.HttpStatus;

public interface BaseErrorCode {
    int getErrorCode();

    String getErrorMessage();

    HttpStatus getStatus();

    ErrorResponse getErrorResponse();
}