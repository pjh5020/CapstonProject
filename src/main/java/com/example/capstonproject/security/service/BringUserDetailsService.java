package com.example.capstonproject.security.service;


import com.example.capstonproject.user.entity.UserEntity;
import com.example.capstonproject.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class BringUserDetailsService implements UserDetailsService {
    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        System.out.println("BringUserDetailsService: loadUserByUsername called with " + username);

        UserEntity user = userRepository.findByUseremail(username).orElse(null);
        if (user != null) {
            return UserDetailsImpl.fromUser(user);
        }

        throw new UsernameNotFoundException("User not found with email: " + username);
    }
}
