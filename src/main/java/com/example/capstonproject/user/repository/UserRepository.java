package com.example.capstonproject.user.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.capstonproject.user.entity.UserEntity;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, String> {
    Boolean existsByUseremail(String useremail);

    Optional<UserEntity> findByUseremail(String useremail);
}