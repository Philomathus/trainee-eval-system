package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.UpdateDetailTitleDTO;
import com.kkcloud.trainee.system.mapper.UpdateDetailTitleMapper;
import com.kkcloud.trainee.system.service.iface.UpdateDetailTitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class UpdateDetailTitleServiceImpl implements UpdateDetailTitleService {

    @Autowired
    UpdateDetailTitleMapper updateDetailTitleMapper;

    @Override
    public String updateDetailTitle(UpdateDetailTitleDTO updateDetailTitleDTO) {
        String userName;
        LocalDateTime updatedAt = LocalDateTime.now();

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }

        // update username
        updateDetailTitleDTO.setUsername(userName);
        // update update_at in db
        updateDetailTitleDTO.setUpdatedAt(updatedAt);

        updateDetailTitleMapper.updateDetailTitle(updateDetailTitleDTO);

        return new String("UPDATE");

        //to get username and time of the one logged in // ends here

//        boolean ifNotMissing = updateDetailTitleMapper.updateDetailChecker(updateDetailNameAlldto);
//
//        if (ifnotMissing == true) {
//
//            updateDetailNameAllMapper.updateDetailNames(updateDetailNameAlldto);
//
//            return "Successful Operation";
//
//        } else {
//            return "Detail name not found";
//        }
//
    }

}
