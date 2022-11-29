package com.kkcloud.trainee.system.service.iface;


import com.kkcloud.trainee.system.DTO.HeaderDTO;
import com.kkcloud.trainee.system.model.PermissionHeader;

import java.util.List;

public interface HeaderService {
     List<PermissionHeader> getHeader(HeaderDTO headerDTO);
}
