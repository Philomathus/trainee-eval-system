package com.kkcloud.trainee.system.service.impl;



import com.kkcloud.trainee.system.DTO.HeaderDTO;
import com.kkcloud.trainee.system.mapper.HeaderPermissionMapper;
import com.kkcloud.trainee.system.model.PermissionHeader;
import com.kkcloud.trainee.system.service.iface.HeaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HeaderServiceImpl implements HeaderService {

    @Autowired
    HeaderPermissionMapper headerPermissionMapper;

    @Override
     public List<PermissionHeader> getHeader(HeaderDTO headerDTO) {
         return headerPermissionMapper.findById(headerDTO);
    }
}
