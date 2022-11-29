package com.kkcloud.trainee.system.mapper;


import com.kkcloud.trainee.system.DTO.ChangePasswordDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserUpdateMapper {
    void updateUsersPassword(ChangePasswordDto changePasswordDto);
    String checkPass(ChangePasswordDto changePasswordDto);
    String getUserName(ChangePasswordDto changePasswordDto);

    void deleteUser(ChangePasswordDto changePasswordDto);
}
