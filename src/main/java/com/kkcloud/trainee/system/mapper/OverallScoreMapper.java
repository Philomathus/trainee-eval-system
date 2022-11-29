package com.kkcloud.trainee.system.mapper;

import com.kkcloud.trainee.system.DTO.OverallScoreDTO;
import com.kkcloud.trainee.system.DTO.PositionDTO;
import com.kkcloud.trainee.system.model.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OverallScoreMapper {

    List<OverallScoreModel> getOverAllScore(OverallScoreDTO overallScoreDTO);

    List<IGPModel2> getOverAllRank(int date);

    List<TeamListModel> getTeamByDepartmentId(OverallScoreDTO overallScoreDTO);

    int countInGrouptableRow(int date);
}
