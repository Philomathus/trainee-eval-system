package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.UpdateDTO;
import com.kkcloud.trainee.system.mapper.PermissionUpdateMapper;
import com.kkcloud.trainee.system.service.iface.UpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class UpdatePermissionServiceImpl implements UpdateService {


    @Autowired
    PermissionUpdateMapper permissionUpdateMapper;

    @Override
    public String updateDetails(UpdateDTO updateDTO) {


        String userName;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        updateDTO.setUpdatedBy(userName);
        updateDTO.setUpdatedAt(LocalDateTime.now());
        permissionUpdateMapper.updateDetails(updateDTO);
        return new String("");
    }


}


