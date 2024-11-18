package com.example.capstonproject.user.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserRequestDto {
    private String userEmail;
    private String userPassword;
    private String userName;
    private String userDepartment;
    private int userGrade;
    private String userPhoneNumber;
    private MultipartFile userProfileImage;
}
