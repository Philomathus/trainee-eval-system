package com.kkcloud.trainee.system.service.iface;

import com.kkcloud.trainee.system.DTO.IndividualRankingDTO;
import com.kkcloud.trainee.system.model.ActualWorkingHoursModel;
import com.kkcloud.trainee.system.model.IndividualRankingModel;

import java.util.List;

public interface IndividualRankingService{
    List<IndividualRankingModel> getWorkingHours(IndividualRankingDTO individualRankingDTO);
    List<ActualWorkingHoursModel> getActualHours(IndividualRankingDTO individualRankingDTO);

}
