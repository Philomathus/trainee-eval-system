package com.kkcloud.trainee.system.service.iface;

import com.kkcloud.trainee.system.DTO.ChangePasswordDto;

public interface UserUpdateService {
    String updateUserPassword(ChangePasswordDto changePasswordDto);
    void updatePassword(ChangePasswordDto changePasswordDto);
    void deleteUser(ChangePasswordDto changePasswordDto);
}
