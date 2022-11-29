package com.kkcloud.trainee.system.controller;


import com.kkcloud.trainee.system.DTO.InGroupPerformanceDTO;
import com.kkcloud.trainee.system.DTO.IndividualGradeDTO;
import com.kkcloud.trainee.system.DTO.IndividualRankingDTO;
import com.kkcloud.trainee.system.DTO.OverallScoreDTO;
import com.kkcloud.trainee.system.model.*;
import com.kkcloud.trainee.system.service.iface.InGroupPerformancesService;
import com.kkcloud.trainee.system.service.iface.IndividualGradeService;
import com.kkcloud.trainee.system.service.iface.IndividualRankingService;
import com.kkcloud.trainee.system.service.iface.OverallScoreService;
import com.kkcloud.trainee.system.vo.ResponseVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("/api/trainee-system/reports")
public class ReportsController {

    @Autowired
    IndividualRankingService individualRankingService;

    @Autowired
    InGroupPerformancesService inGroupPerformancesService;

    @Autowired
    IndividualGradeService individualGradeService;

    @Autowired
    OverallScoreService overallScoreService;

    @PostMapping("/v1/individualRanking/jiraWorkingHours")
        public ResponseVO<List<IndividualRankingModel>> getWorkingHours(@RequestBody IndividualRankingDTO individualRankingDTO){

            List<IndividualRankingModel> work = individualRankingService.getWorkingHours(individualRankingDTO);

            return new ResponseVO(200, "Successful Operation!",work);
        }


     @PostMapping("/v1/individualRanking/actualWorkingHours")
        public ResponseVO<List<ActualWorkingHoursModel>> getActualHours(@RequestBody IndividualRankingDTO individualRankingDTO){

        List<ActualWorkingHoursModel> actual = individualRankingService.getActualHours(individualRankingDTO);

         return new ResponseVO(200, "Successful Operation!",actual);
     }

    @PostMapping("/v1/individualRanking/inGroupPerformance")
    public ResponseVO<List<IGPModel>> reportsInGroupPerfromance(@Valid @RequestBody InGroupPerformanceDTO inGroupPerformanceDTO){
        List<IGPModel> data = inGroupPerformancesService.getInGroupPerformanceList(inGroupPerformanceDTO);
        return new ResponseVO<>(200, "Successful Operation!", data);
    }

//
    @PostMapping("/v1/individualRanking/linesOfCodes")
    public ResponseVO<List<LOCModel>> reportsLinesOfCodes(@Valid @RequestBody IndividualRankingDTO individualRankingDTO) {
        List<LOCModel> data = inGroupPerformancesService.getLinesOfCodesList(individualRankingDTO);
        return new ResponseVO<>(200, "Successful Operation!", data);
//
     }

    @PostMapping("/v1/individualRanking/employeePerformanceReport")
    public ResponseVO<List<IndividualGradeModelv2>> getReport(@RequestBody IndividualGradeDTO individualGradeDTO) {
        try {
            List<IndividualGradeModelv2> individualGrade = individualGradeService.getIndividualGrade(individualGradeDTO);

            return new ResponseVO(200, "Successful Operation!", individualGrade);
        }catch(Exception e){

            List<IndividualGradeModelv2> individualGrade = new ArrayList<IndividualGradeModelv2>();
            return new ResponseVO(109011, "No Data Found", individualGrade);
        }
    }

    @PostMapping("/v1/individualRanking/employeeOverAllScore")
    public ResponseVO<List<OverallScoreModel>> getReport(@RequestBody OverallScoreDTO overallScoreDTO){

        List<OverallScoreModel> overallScoreModels = overallScoreService.getOverallScore(overallScoreDTO);

        return new ResponseVO(200,"Successful Operation!", overallScoreModels);
    }


    @PostMapping("/v1/individualRanking/employeeGradeMonth")
    public ResponseVO<List<IndividualGradeMonthModel>> getTraineeGradeListMonth(@RequestBody IndividualGradeDTO individualGradeDTO){

        List<IndividualGradeMonthModel> individualGrade = individualGradeService.getTraineeGradeListMonth(individualGradeDTO);

        return new ResponseVO(200,"Successful Operation!",individualGrade);
    }



}
