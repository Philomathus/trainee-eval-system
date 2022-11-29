package com.kkcloud.trainee.system.service.impl;


import com.kkcloud.trainee.system.DTO.PositionDTO;
import com.kkcloud.trainee.system.DTO.TeamDTO;
import com.kkcloud.trainee.system.mapper.TeamMapper;
import com.kkcloud.trainee.system.model.TeamListModel;
import com.kkcloud.trainee.system.service.iface.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeamServiceImpl implements TeamService {

    @Autowired
    TeamMapper teamMapper;

    public List<TeamListModel> getTeam(PositionDTO positionDTO){
        return teamMapper.getTeamByDepartmentId(positionDTO);

    }
}
