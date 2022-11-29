package com.kkcloud.trainee.system.mapper;

import com.kkcloud.trainee.system.DTO.IndividualRankingDTO;
import com.kkcloud.trainee.system.model.ActualWorkingHoursModel;
import com.kkcloud.trainee.system.model.IndividualRankingModel;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IndividualRankingMapper {
    List<IndividualRankingModel> getJiraWorkingHours(IndividualRankingDTO individualRankingDTO);
    List<ActualWorkingHoursModel> getActualHours(IndividualRankingDTO individualRankingDTO);
}
