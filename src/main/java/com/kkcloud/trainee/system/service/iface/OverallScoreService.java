package com.kkcloud.trainee.system.service.iface;

import com.kkcloud.trainee.system.DTO.IndividualGradeDTO;
import com.kkcloud.trainee.system.DTO.OverallScoreDTO;
import com.kkcloud.trainee.system.model.AllIndividualGradeRankingModel;
import com.kkcloud.trainee.system.model.OverallScoreModel;
import com.kkcloud.trainee.system.model.OverallScoreModel2;

import java.util.List;

public interface OverallScoreService {

    List<OverallScoreModel> getOverallScore(OverallScoreDTO overallScoreDTO);

    List<OverallScoreModel2> getAllIndividualGradeRanking(int date);

}
