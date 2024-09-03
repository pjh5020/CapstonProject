package com.example.capstonproject.user.dto;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class JoinDTO {
    private String useremail;        // 이메일
    private String userpassword;     // 비밀번호
    private String username;         // 이름
    private String userschool;       // 학교
    private String userdepartment;   // 학과
    private int usergrade;           // 학년
    private String userphonenumber;  // 전화번호
    private String userprofileimage; // 프로필 이미지
}
