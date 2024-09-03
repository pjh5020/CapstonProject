package com.example.capstonproject.exception;

import com.example.capstonproject.enums.BaseErrorCode;
import lombok.Getter;

@Getter
public class CustomSecurityException extends RuntimeException{
	private final BaseErrorCode errorCode;

	public CustomSecurityException(BaseErrorCode errorCode) {
		super(errorCode.getErrorMessage());
		this.errorCode = errorCode;
	}
}
