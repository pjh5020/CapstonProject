
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
    private String userEmail;

    @Column(name = "userpassword")
    private String userPassword;

    @Column(name = "username")
    private String userName;

    @Column(name = "userschool")
    private String userSchool;

    @Column(name = "userdepartment")
    private String userDepartment;

    @Column(name = "usergrade")
    private int userGrade;

    @Column(name = "userphonenumber")
    private String userPhoneNumber;

    @Column(name = "userprofileimage")
    private String userProfileImage;

    @Column(name = "role")
    @Enumerated(EnumType.STRING)
    private RolesType role = RolesType.ROLE_MEMBER;
}
