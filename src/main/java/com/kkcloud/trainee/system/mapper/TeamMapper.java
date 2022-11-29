package com.kkcloud.trainee.system.mapper;

import com.kkcloud.trainee.system.DTO.PositionDTO;
import com.kkcloud.trainee.system.DTO.TeamDTO;
import com.kkcloud.trainee.system.model.TeamListModel;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeamMapper {
 List<TeamListModel> getTeamByDepartmentId(PositionDTO positionDTO);
}
