package com.example.capstonproject.schedule.entity;

import com.example.capstonproject.enums.ScheduleDayType;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import java.time.DayOfWeek;
import java.time.LocalTime;

@Entity
@Getter
@Setter
@SuperBuilder
@NoArgsConstructor
@Table(name = "scheduleinfo")
public class ScheduleInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "indexnumber")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "schedulenumber")
    private Schedule schedule;

    @Column(name = "subject")
    private String subject;

    @Enumerated(EnumType.STRING)
    @Column(name = "day")
    private DayOfWeek day;

    @Column(name = "classroom")
    private String classRoom;

    @Column(name = "start_time")
    private LocalTime startTime;

    @Column(name = "class_time")
    private int classTime;

    @Column(name = "score")
    private int score;
}
