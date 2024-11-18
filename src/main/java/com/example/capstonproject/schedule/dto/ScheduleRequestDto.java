package com.example.capstonproject.schedule.dto;

import com.example.capstonproject.user.entity.UserEntity;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class ScheduleRequestDto {
    private UserEntity user;
    private int grade;
    private int term;
}
