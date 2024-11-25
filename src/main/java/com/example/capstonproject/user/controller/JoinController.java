package com.example.capstonproject.user.controller;


import com.example.capstonproject.response.BfResponse;
import com.example.capstonproject.response.ResponseCode;
import com.example.capstonproject.response.ResponseDto;
import com.example.capstonproject.response.ResponseMessage;
import com.example.capstonproject.user.dto.JoinDTO;
import com.example.capstonproject.user.dto.MailDto;
import com.example.capstonproject.user.service.JoinService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.xml.transform.Result;
import java.util.Map;
import java.util.Objects;


@Controller
@RequestMapping("/member")
public class JoinController {

    private final JoinService joinService;


    @Autowired
    public JoinController(JoinService joinService) {
        this.joinService = joinService;

    }
    @GetMapping("/join")
    public String joinProcess() {
        return "member/userJoin"; // 회원가입 완료 후 리다이렉트할 페이지
    }

    @PostMapping("/joinProc")
    public ResponseEntity<String> joinProcess(
            @RequestPart("joinDTO") JoinDTO joinDTO,
            @RequestPart(value = "userprofileimage", required = false) MultipartFile profileImage) {

        try {
            joinService.joinProcess(joinDTO, profileImage);
            return ResponseEntity.ok("회원가입이 성공적으로 완료되었습니다.");
        } catch (IllegalArgumentException e) {
            return ResponseEntity.badRequest().body("회원가입 실패: " + e.getMessage());
        }
    }

    @PostMapping("/checkId")
    public ResponseEntity<ResponseDto> checkId(@RequestBody Map<String, String> requestBody) {
        String userEmail = requestBody.get("userEmail");
        boolean isAvailable = joinService.checkId(userEmail);

        // 사용 가능 여부에 따라 응답 메시지를 설정
        String message = isAvailable ? ResponseMessage.EMAIL_AVAILABLE + " 사용 가능 여부: " + isAvailable
                : ResponseMessage.EMAIL_TAKEN + " 사용 가능 여부: " + isAvailable;

        return ResponseEntity.ok(new ResponseDto(ResponseCode.SUCCESS, message));
    }


}
