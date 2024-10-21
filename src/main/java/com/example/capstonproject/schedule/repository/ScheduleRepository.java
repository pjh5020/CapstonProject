package com.example.capstonproject.schedule.repository;

import com.example.capstonproject.schedule.entity.Schedule;
import com.example.capstonproject.user.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ScheduleRepository extends JpaRepository<Schedule, Integer> {
    Optional<Schedule> findByUserEmail(String userEmail);
}
