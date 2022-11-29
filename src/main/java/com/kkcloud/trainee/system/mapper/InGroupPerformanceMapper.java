package com.kkcloud.trainee.system.mapper;

import com.kkcloud.trainee.system.DTO.InGroupPerformanceDTO;
import com.kkcloud.trainee.system.DTO.IndividualGradeDTO;
import com.kkcloud.trainee.system.DTO.IndividualRankingDTO;
import com.kkcloud.trainee.system.DTO.OverallScoreDTO;
import com.kkcloud.trainee.system.model.IGPModel;
import com.kkcloud.trainee.system.model.LOCModel;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface InGroupPerformanceMapper {

    // add in group performance
    void ingroupperf(InGroupPerformanceDTO inGroupPerformanceDTO);

    // check if traineeEvaluationId is existing in tbl_trainee_evaluation before adding records in tbl_trainee_in_group_evaluation
    List<InGroupPerformanceDTO> existById(InGroupPerformanceDTO inGroupPerformanceDTO);

    boolean selectUserByRole(InGroupPerformanceDTO inGroupPerformanceDTO);

    boolean selectUser(InGroupPerformanceDTO inGroupPerformanceDTO);

    void insertRecord(InGroupPerformanceDTO inGroupPerformanceDTO);

    List<IGPModel> getInGroupPerformanceList(InGroupPerformanceDTO inGroupPerformanceDTO);

    IGPModel getInGroupPerformanceList1(IndividualGradeDTO individualGradeDTO);

    List<IGPModel> getInGroupPerformanceList2(int date);

    List<LOCModel> getLinesOfCodesList(IndividualRankingDTO individualRankingDTO);

    boolean checkIfExistingUser(InGroupPerformanceDTO inGroupPerformanceDTO);

    void submitIngroupFormExisting(InGroupPerformanceDTO inGroupPerformanceDTO);

    void ingroupperfNewTraineeId(InGroupPerformanceDTO inGroupPerformanceDTO);

}
