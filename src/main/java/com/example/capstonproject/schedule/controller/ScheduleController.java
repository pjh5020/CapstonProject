package com.example.capstonproject.schedule.controller;

import com.example.capstonproject.response.BfResponse;
import com.example.capstonproject.schedule.dto.ScheduleRequestDto;
import com.example.capstonproject.schedule.repository.ScheduleInfoRepository;
import com.example.capstonproject.schedule.repository.ScheduleRepository;
import com.example.capstonproject.schedule.service.ScheduleService;
import com.example.capstonproject.security.service.UserDetailsImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import static com.example.capstonproject.enums.GlobalSuccessCode.SUCCESS;

@RestController
@RequiredArgsConstructor
public class ScheduleController {
    private final ScheduleService scheduleService;

    public ResponseEntity<BfResponse<?>> setSchedule(@AuthenticationPrincipal UserDetailsImpl userDetails, @RequestBody ScheduleRequestDto dto){
        scheduleService.setSchedule(userDetails, dto);
        return ResponseEntity.ok(new BfResponse<>(SUCCESS, "set schedule successfully"));
    }
}
