package com.example.capstonproject.schedule.dto;

import com.example.capstonproject.enums.ScheduleDayType;
import com.example.capstonproject.schedule.entity.Schedule;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class ScheduleInfoRequestDto {
    private Schedule schedule;
    private String subject;
    private String day;
    private String classRoom;
    private String startTime;
    private int classTime;
}
