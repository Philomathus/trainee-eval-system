package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.InGroupPerformanceDTO;
import com.kkcloud.trainee.system.DTO.IndividualGradeDTO;
import com.kkcloud.trainee.system.mapper.InGroupPerformanceMapper;
import com.kkcloud.trainee.system.mapper.IndividualGradeMapper;
import com.kkcloud.trainee.system.mapper.OverallScoreMapper;
import com.kkcloud.trainee.system.model.*;
import com.kkcloud.trainee.system.service.iface.IndividualGradeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Slf4j
@Service
public class IndividualGradeImpl implements IndividualGradeService {

    @Autowired
    IndividualGradeMapper individualGradeMapper;

    @Autowired
    InGroupPerformanceMapper inGroupPerformanceMapper;

    @Autowired
    OverallScoreMapper overallScoreMapper;

    @Override
    public List<IndividualGradeModelv2> getIndividualGrade(IndividualGradeDTO individualGradeDTO) {

       IndividualGradeModelv2 individualGradeModelv2 = individualGradeMapper.getGrades(individualGradeDTO);
       IGPModel modelList = inGroupPerformanceMapper.getInGroupPerformanceList1(individualGradeDTO);


       individualGradeModelv2.setUsername(modelList.getUsername());
       individualGradeModelv2.setInGroupPerformance(modelList.getRanking_score());

       List<IndividualGradeModelv2> newList = new ArrayList<IndividualGradeModelv2>();
       newList.add(individualGradeModelv2);

        log.info("newList: {}",newList);
        return newList;
    }


    @Override
    public List<AllIndividualGradeRankingModel> getAllIndividualGradeRanking(int date) {

        List<AllIndividualGradeRankingModel> allIndividualGradeRanking = individualGradeMapper.getAllIndividualGradeRanking(date);

        int count = allIndividualGradeRanking.size();

        double percentage1 = (count * 0.2);
        double percentage2 = (count * 0.7);
        double percentage3 = (count * 0.9);


        for (int i = 1; i < count; ++i) {

            if (i <= percentage1) {
                allIndividualGradeRanking.get(i).setLetterGrade("A");
            } else if (i <= percentage2 && i > percentage1) {
                allIndividualGradeRanking.get(i).setLetterGrade("B");
            } else if (i <= percentage3 && i > percentage2) {
                allIndividualGradeRanking.get(i).setLetterGrade("C");
            } else {
                allIndividualGradeRanking.get(i).setLetterGrade("D");
            }

            individualGradeMapper.finalGradeUpdate(allIndividualGradeRanking.get(i).getLetterGrade(),
                    allIndividualGradeRanking.get(i).getUserId(), date);
            individualGradeMapper.update(allIndividualGradeRanking.get(i).getLetterGrade(),
                    allIndividualGradeRanking.get(i).getUserId(),
                    date);

        }
        return allIndividualGradeRanking;
    }






    @Override
    public List<IndividualGradeMonthModel> getTraineeGradeListMonth(IndividualGradeDTO individualGradeDTO) {

        List<IndividualGradeMonthModel> individualGradeModels = individualGradeMapper.filterTraineeGrade(individualGradeDTO);

        return individualGradeModels;
    }
}
