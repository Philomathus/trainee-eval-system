package com.kkcloud.trainee.system.controller;


import com.kkcloud.trainee.system.DTO.MentorEvaluationFormDTO;
import com.kkcloud.trainee.system.service.iface.MentorEvaluationService;
import com.kkcloud.trainee.system.vo.ResponseVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/api/trainee-system/mentor")
public class MentorScoringController {
    @Autowired
    MentorEvaluationService mentorEvaluationService;

    @PostMapping("/v1/submitEvaluationForm")
    public ResponseVO submitEvaluationForm(@RequestBody  MentorEvaluationFormDTO mentorEvaluationFormDTO) {

        try{
           String evalStatus =  mentorEvaluationService.submitEvaluationForm(mentorEvaluationFormDTO);
            return new ResponseVO(200, "Successful Operation!", evalStatus);
        } catch (Exception e){
            return new ResponseVO(500, "Successful Operation!", e);
        }

    }
}
