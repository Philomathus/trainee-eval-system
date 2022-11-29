package com.kkcloud.trainee.system.service.iface;

import com.kkcloud.trainee.system.DTO.InGroupPerformanceDTO;
import com.kkcloud.trainee.system.DTO.IndividualRankingDTO;
import com.kkcloud.trainee.system.model.IGPModel;
import com.kkcloud.trainee.system.model.LOCModel;

import java.util.List;

public interface InGroupPerformancesService {

    InGroupPerformanceDTO groupperformance(InGroupPerformanceDTO inGroupPerformanceDTO);

    List<IGPModel> getInGroupPerformanceList(InGroupPerformanceDTO inGroupPerformanceDTO);

    List<LOCModel> getLinesOfCodesList(IndividualRankingDTO individualRankingDTO);

}
