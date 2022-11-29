package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.ChangePasswordDto;
import com.kkcloud.trainee.system.mapper.UserUpdateMapper;
import com.kkcloud.trainee.system.service.iface.UserUpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;


@Service
public class UserUpdateServiceImpl implements UserUpdateService {

    @Autowired
    UserUpdateMapper userUpdateMapper;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Override
    public String updateUserPassword(ChangePasswordDto changePasswordDto) {
        String oldPass = userUpdateMapper.checkPass(changePasswordDto);
        if(passwordEncoder.matches(changePasswordDto.getNewPassword(), oldPass)==false){
            if(passwordEncoder.matches(changePasswordDto.getOldPassword(), oldPass)){
                oldPass= "Success";
                ChangePasswordDto newPassDTO = new ChangePasswordDto();
                newPassDTO.setUserId(changePasswordDto.getUserId());
                newPassDTO.setUpdatedAt(LocalDateTime.now());
                newPassDTO.setUpdatedBy(this.getUsername());
                newPassDTO.setNewPassword(passwordEncoder.encode(changePasswordDto.getNewPassword()));
                userUpdateMapper.updateUsersPassword(newPassDTO);
            }else{
                oldPass="Old Password Doesn't match.";
            }

        }else{
            oldPass="Previous Password Can't Be Use";
        }
        return oldPass;
    }

    @Override
    public void updatePassword(ChangePasswordDto changePasswordDto) {


        changePasswordDto.setNewPassword(passwordEncoder.encode(changePasswordDto.getNewPassword()));
        changePasswordDto.setUpdatedAt(LocalDateTime.now());
        changePasswordDto.setUpdatedBy(this.getUsername());
        userUpdateMapper.updateUsersPassword(changePasswordDto);
    }

    @Override
    public void deleteUser(ChangePasswordDto changePasswordDto) {
        changePasswordDto.setUpdatedAt(LocalDateTime.now());
        changePasswordDto.setUpdatedBy(this.getUsername());
        userUpdateMapper.deleteUser(changePasswordDto);
    }

    String getUsername(){
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String userName="";
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }
}
