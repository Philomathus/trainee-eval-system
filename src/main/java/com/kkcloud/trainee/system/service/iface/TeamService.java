package com.kkcloud.trainee.system.service.iface;


import com.kkcloud.trainee.system.DTO.PositionDTO;
import com.kkcloud.trainee.system.DTO.TeamDTO;
import com.kkcloud.trainee.system.model.TeamListModel;


import java.util.List;

public interface TeamService {
    List<TeamListModel> getTeam(PositionDTO positionDTO);
}
