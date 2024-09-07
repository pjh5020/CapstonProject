package com.example.capstonproject.user.service;


import com.example.capstonproject.enums.RolesType;
import com.example.capstonproject.user.dto.JoinDTO;
import com.example.capstonproject.user.entity.UserEntity;
import com.example.capstonproject.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class JoinService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    @Autowired
    public JoinService(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }
    public void joinProcess(JoinDTO joinDTO) {
        String email = joinDTO.getUseremail();
        String password = joinDTO.getUserpassword();

        if (password == null || password.isEmpty()) {
            throw new IllegalArgumentException("Password cannot be null or empty");
        }

        Boolean isExist = userRepository.existsByUseremail(email);

        if (isExist) {
            throw new IllegalArgumentException("이미 사용 중인 이메일입니다.");
        }

        UserEntity userEntity = new UserEntity();
        userEntity.setUseremail(joinDTO.getUseremail());  // 이메일 설정
        userEntity.setUserpassword(passwordEncoder.encode(joinDTO.getUserpassword()));  // 비밀번호 암호화 후 설정
        userEntity.setUsername(joinDTO.getUsername());  // 이름 설정
        userEntity.setUserschool(joinDTO.getUserschool());  // 학교 설정
        userEntity.setUserdepartment(joinDTO.getUserdepartment());  // 학과 설정
        userEntity.setUsergrade(joinDTO.getUsergrade());  // 학년 설정
        userEntity.setUserphonenumber(joinDTO.getUserphonenumber());  // 전화번호 설정

        if (joinDTO.getUserprofileimage() == null || joinDTO.getUserprofileimage().isEmpty()) {
            userEntity.setUserprofileimage("default_profile_image.png");  // 기본 프로필 이미지 설정
        } else {
            userEntity.setUserprofileimage(joinDTO.getUserprofileimage());  // 프로필 이미지 설정
        }
        userEntity.setRole(RolesType.ROLE_MEMBER);  // 기본 역할 설정

        userRepository.save(userEntity);
    }
    /**
     * ID(userEmail) Check
     */
    public boolean checkId(String userEmail){
        return !userRepository.findByUseremail(userEmail).isPresent();
    }
}