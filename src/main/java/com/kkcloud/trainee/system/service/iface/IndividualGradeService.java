package com.kkcloud.trainee.system.service.iface;

import com.kkcloud.trainee.system.DTO.IndividualGradeDTO;
import com.kkcloud.trainee.system.model.AllIndividualGradeRankingModel;
import com.kkcloud.trainee.system.model.IndividualGradeModel;
import com.kkcloud.trainee.system.model.IndividualGradeModelv2;
import com.kkcloud.trainee.system.model.IndividualGradeMonthModel;

import java.util.List;

public interface IndividualGradeService {

    List<IndividualGradeModelv2> getIndividualGrade(IndividualGradeDTO individualGradeDTO);

    List<IndividualGradeMonthModel> getTraineeGradeListMonth(IndividualGradeDTO individualGradeDTO);

    List<AllIndividualGradeRankingModel> getAllIndividualGradeRanking(int date);





}
