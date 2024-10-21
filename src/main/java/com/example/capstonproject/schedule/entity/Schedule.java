package com.example.capstonproject.schedule.entity;

import com.example.capstonproject.user.entity.UserEntity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;


@Entity
@Getter
@Setter
@SuperBuilder
@NoArgsConstructor
@Table(name = "schedule")
public class Schedule {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "schedulenumber")
    private Integer scheduleNumber; //고유 id

    @ManyToOne
    @JoinColumn(name = "useremail")
    private UserEntity user; //유저 정보

    @Column(name = "grade")
    private int grade; //학년

    @Column(name = "term")
    private int term; //학기
}
