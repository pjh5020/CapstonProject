
package com.example.capstonproject.user.entity;

import com.example.capstonproject.enums.RolesType;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity

@Table(name = "user")
public class UserEntity {

    @Id
    @Column(name = "useremail")
    private String useremail;

    private String userpassword;
    private String username;
    private String userschool;
    private String userdepartment;
    private int usergrade;
    private String userphonenumber;
    private String userprofileimage;
    @Enumerated(EnumType.STRING)
    private RolesType role = RolesType.ROLE_MEMBER;


}
