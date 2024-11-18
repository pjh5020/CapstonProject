package com.example.capstonproject.user.controller;

import com.example.capstonproject.response.BfResponse;
import com.example.capstonproject.security.service.UserDetailsImpl;
import com.example.capstonproject.user.dto.UserRequestDto;
import com.example.capstonproject.user.entity.UserEntity;
import com.example.capstonproject.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import static com.example.capstonproject.enums.GlobalSuccessCode.SUCCESS;

@RestController
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserController {
    private final UserService userService;

    @PostMapping("/setInfo")
    public ResponseEntity<BfResponse<?>> setUserInfo(@AuthenticationPrincipal UserDetailsImpl userDetails, @RequestBody UserRequestDto dto){
        userService.setUserInfo(userDetails, dto);
        return ResponseEntity.ok(new BfResponse<>(SUCCESS, "user info update successfully"));
    }

    @GetMapping("/getInfo")
    public ResponseEntity<BfResponse<?>> getUserDetails(@AuthenticationPrincipal UserDetailsImpl userDetails){
        UserEntity user = userService.getUserDetails(userDetails);
        return ResponseEntity.ok(new BfResponse<>(SUCCESS, user));
    }

    @DeleteMapping("/deleteUser")
    public ResponseEntity<BfResponse<?>> deleteUser(@AuthenticationPrincipal UserDetailsImpl userDetails){
        userService.deleteUser(userDetails);
        return ResponseEntity.ok(new BfResponse<>(SUCCESS, "user delete successfully"));
    }
}
