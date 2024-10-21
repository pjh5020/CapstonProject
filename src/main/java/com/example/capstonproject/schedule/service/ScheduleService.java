package com.example.capstonproject.schedule.service;

import com.example.capstonproject.schedule.dto.ScheduleInfoRequestDto;
import com.example.capstonproject.schedule.dto.ScheduleRequestDto;
import com.example.capstonproject.schedule.entity.Schedule;
import com.example.capstonproject.schedule.entity.ScheduleInfo;
import com.example.capstonproject.schedule.repository.ScheduleInfoRepository;
import com.example.capstonproject.schedule.repository.ScheduleRepository;
import com.example.capstonproject.security.service.UserDetailsImpl;
import com.example.capstonproject.user.entity.UserEntity;
import com.example.capstonproject.user.repository.UserRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.DayOfWeek;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

@Service
@RequiredArgsConstructor
public class ScheduleService {
    private final UserRepository userRepository;
    private final ScheduleRepository scheduleRepository;
    private final ScheduleInfoRepository scheduleInfoRepository;

    @Transactional
    public void setSchedule(UserDetailsImpl userDetails, ScheduleRequestDto dto){
        UserEntity user = userRepository.findById(userDetails.getEmail())
                .orElseThrow(()->new RuntimeException("사용자를 찾을 수 없습니다."));

        Schedule schedule = Schedule.builder()
                .user(user)
                .grade(dto.getGrade())
                .term(dto.getTerm())
                .build();

        scheduleRepository.save(schedule);
    }

    @Transactional
    public void setScheduleInfo(UserDetailsImpl userDetails, ScheduleInfoRequestDto dto) {
        Schedule schedule = scheduleRepository.findByUserEmail(userDetails.getEmail())
                .orElseThrow(() -> new RuntimeException("사용자가 일치하지 않습니다."));

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
        LocalTime startTime = LocalTime.parse(dto.getStartTime(), formatter);

        DayOfWeek day = DayOfWeek.valueOf(dto.getDay().toUpperCase());

        ScheduleInfo scheduleInfo = ScheduleInfo.builder()
                .schedule(schedule)
                .subject(dto.getSubject())
                .day(day)
                .classRoom(dto.getClassRoom())
                .startTime(startTime)
                .classTime(dto.getClassTime())
                .build();

        scheduleInfoRepository.save(scheduleInfo);
    }
}
