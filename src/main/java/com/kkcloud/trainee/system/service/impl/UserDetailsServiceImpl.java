package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.UserDTO;
import com.kkcloud.trainee.system.DTO.UserDetailsDTO;
import com.kkcloud.trainee.system.mapper.UserMapper;
import com.kkcloud.trainee.system.mapper.UserPermissionMapper;
import com.kkcloud.trainee.system.model.UserModel;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


@Service
@Slf4j
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    UserPermissionMapper userPermissionMapper;


    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        UserModel user = userMapper.findByUsername(userName)
                .orElseThrow(() ->
                        new UsernameNotFoundException("User not found with email:" + userName));


        UserDTO userDTO = new UserDTO();
        userDTO.setUser_id(user.getId());

        List<UserDetailsDTO> userDetailsDTO = null; //userPermissionMapper.findById(userDTO);
        return new org.springframework.security.core.userdetails.User(userName,
                user.getPassword(), getAuthorities(userDetailsDTO));
    }

    private Collection<? extends GrantedAuthority> getAuthorities(Collection<UserDetailsDTO> userDetailsDTOS) {

        List<GrantedAuthority> authorities
                = new ArrayList<>();
//        for (UserDetailsDTO userDetailsDTO : userDetailsDTOS) {
//
//            authorities.add(new SimpleGrantedAuthority(userDetailsDTO.getHeader_name()));
//            userDetailsDTO.getDetails().stream()
//                    .map(p -> new SimpleGrantedAuthority(p.getDetail_name()))
//                    .forEach(authorities::add);
//        }
        log.info("authorities: {}",authorities);
        return authorities;
    }
}