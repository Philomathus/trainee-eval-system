package com.kkcloud.trainee.system.mapper;

import com.kkcloud.trainee.system.DTO.IndividualGradeDTO;
import com.kkcloud.trainee.system.DTO.OverallScoreDTO;
import com.kkcloud.trainee.system.model.*;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IndividualGradeMapper {

    int setUserId(IndividualGradeDTO individualGradeDTO);

    List<IndividualGradeModel> getIndividualGrade(IndividualGradeDTO individualGradeDTO);

    List<IndividualGradeModel> setTotalPoint(int date);

    IndividualGradeModelv2 getIndividualGrade2(IndividualGradeDTO individualGradeDTO);

    IndividualGradeModelv2 getGrades(IndividualGradeDTO individualGradeDTO);

    List<AllIndividualGradeRankingModel> getIndividualGrade3(IndividualGradeDTO individualGradeDTO);

    List<AllIndividualGradeRankingModel> setTotalPoint1(int date);

    List<AllIndividualGradeRankingModel> getAllIndividualGradeRanking(int date);

    List<AllIndividualGradeRankingModel> getAllIndividualGradeRanking2(int date);

    void update(String letterGrade, int userId, int traineeEvaluationDate);

    void finalGradeUpdate(String letterGrade, int userId, int traineeEvaluationDate);

    void totalPoints(int totalPoints, int userId, int traineeEvaluationDate);


    void updateAvgGroupPerformanceRate(double a, int id, int date);

    String getUsername(int userId);

    List<IndividualGradeMonthModel> filterTraineeGrade(IndividualGradeDTO individualGradeDTO);

    int getAllUserRow(int date);

    int getAllUserRowTraineeEvaluated(int date);

    int getAllUserRowMentorEvaluated(int date);

    int countAllTraineeUser();

    List<OverallScoreModel2> get(int date);

}
