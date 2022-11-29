package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.IndividualGradeDTO;
import com.kkcloud.trainee.system.DTO.OverallScoreDTO;
import com.kkcloud.trainee.system.DTO.PositionDTO;
import com.kkcloud.trainee.system.mapper.InGroupPerformanceMapper;
import com.kkcloud.trainee.system.mapper.IndividualGradeMapper;
import com.kkcloud.trainee.system.mapper.OverallScoreMapper;
import com.kkcloud.trainee.system.model.*;
import com.kkcloud.trainee.system.service.iface.OverallScoreService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class OverallScoreServiceImpl implements OverallScoreService {

    @Autowired
    OverallScoreMapper overallScoreMapper;

    @Autowired
    IndividualGradeMapper individualGradeMapper;

    @Autowired
    InGroupPerformanceMapper inGroupPerformanceMapper;


    @Override
    public List<OverallScoreModel> getOverallScore(OverallScoreDTO overallScoreDTO) {
        List<OverallScoreModel> overallScoreModels = overallScoreMapper.getOverAllScore(overallScoreDTO);


        List<TeamListModel> getTeam = overallScoreMapper.getTeamByDepartmentId(overallScoreDTO);

        int countFrontend =0;
        int countBackend =0;
        int countAndroid=0;
        int countIOS=0;

        countFrontend = getTeam.get(0).getGroupCount();
        countBackend = getTeam.get(1).getGroupCount();
        countAndroid = getTeam.get(2).getGroupCount();
        countIOS = getTeam.get(3).getGroupCount();

        int cF = countFrontend * (countFrontend - 1);
        int cB = countBackend * (countBackend - 1);
        int cA = countAndroid * (countAndroid - 1);
        int cI = countIOS * (countIOS - 1);

        //count total evaluation of trainees
        int countTotalEvaluation = cF + cB + cA + cI;

        //count all trainees
        int countAllTraineeUser = individualGradeMapper.countAllTraineeUser();

        //count trainee to trainee evaluation
        int countInGroupRow = overallScoreMapper.countInGrouptableRow(overallScoreDTO.getTraineeEvaluationDate());

        //count mentor to trainee evaluation
        int countMonthMentorEvaluatedRow = individualGradeMapper.getAllUserRowMentorEvaluated(overallScoreDTO.getTraineeEvaluationDate());


        List<IGPModel2> overall = overallScoreMapper.getOverAllRank(overallScoreDTO.getTraineeEvaluationDate());
        OverallScoreModel obj =  new OverallScoreModel();


        int sizeCount = overall.size();



            for(int i = 0; i < sizeCount; i++ ){

                int a = overall.get(i).getRanking_score();
                overall.get(i).setRanking_score(a);
                individualGradeMapper.updateAvgGroupPerformanceRate(overall.get(i).getRanking_score(),overall.get(i).getUserId(),overallScoreDTO.getTraineeEvaluationDate());
                individualGradeMapper.totalPoints(overall.get(i).getTotal_points(),overall.get(i).getUserId(),overallScoreDTO.getTraineeEvaluationDate());


                obj.setTotalScore(overall.get(i).getTotal_points());


            }



        //trigger set all ranking
        if(countInGroupRow>=countTotalEvaluation && countMonthMentorEvaluatedRow>=countAllTraineeUser){

            getAllIndividualGradeRanking(overallScoreDTO.getTraineeEvaluationDate());

        }

        log.info("OverAllScoreModels: {}", overallScoreDTO);

        return overallScoreModels;
    }




    @Override
    public List<OverallScoreModel2> getAllIndividualGradeRanking(int date) {



        List<OverallScoreModel2> overallScoreModels = individualGradeMapper.get(date);


        int count = overallScoreModels.size();

        double percentage1 = (count * 0.2);
        double percentage2 = (count * 0.7);
        double percentage3 = (count * 0.9);


        for (int i = 0; i < count; i++) {

            if (i <= percentage1) {
                overallScoreModels.get(i).setLetterGrade("A");
            } else if (i > percentage1 && i <= percentage2) {
                overallScoreModels.get(i).setLetterGrade("B");
            } else if (i > percentage2 && i <= percentage3) {
                overallScoreModels.get(i).setLetterGrade("C");
            } else  {
                overallScoreModels.get(i).setLetterGrade("D");
            }

            individualGradeMapper.finalGradeUpdate(overallScoreModels.get(i).getLetterGrade(),
                    overallScoreModels.get(i).getUserId(), date);
            individualGradeMapper.update(overallScoreModels.get(i).getLetterGrade(),
                    overallScoreModels.get(i).getUserId(),
                    date);

        }
        return overallScoreModels;
    }



}
