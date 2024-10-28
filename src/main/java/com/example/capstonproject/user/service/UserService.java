package com.example.capstonproject.user.service;

import com.example.capstonproject.enums.RolesType;
import com.example.capstonproject.image.ImageService;
import com.example.capstonproject.security.service.UserDetailsImpl;
import com.example.capstonproject.user.dto.UserRequestDto;
import com.example.capstonproject.user.entity.UserEntity;
import com.example.capstonproject.user.repository.UserRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final ImageService imageService;

    @Transactional
    public void setUserInfo(UserDetailsImpl userDetails, UserRequestDto dto){
        UserEntity user = userRepository.findById(userDetails.getEmail())
                .orElseThrow(()->new RuntimeException("사용자가 일치하지 않습니다."));

        user.setUseremail(dto.getUserEmail());
        user.setUserpassword(dto.getUserPassword());
        user.setUsername(dto.getUserName());
        user.setUserdepartment(dto.getUserDepartment());
        user.setUsergrade(dto.getUserGrade());
        user.setUserphonenumber(dto.getUserPhoneNumber());
        user.setUserprofileimage(imageService.saveImage(dto.getUserProfileImage()));

        userRepository.save(user);
    }

    public UserEntity getUserDetails(UserDetailsImpl userDetails){
        return userRepository.findById(userDetails.getEmail())
                .orElseThrow(()->new RuntimeException("사용자를 찾을 수 없습니다."));
    }

    public void deleteUser(UserDetailsImpl userDetails){
        UserEntity user = userRepository.findById(userDetails.getEmail())
                .orElseThrow(()->new RuntimeException("사용자가 일치하지 않습니다."));

        user.setRole(RolesType.ROLE_DEACTIVATE);

        userRepository.save(user);
    }
}
