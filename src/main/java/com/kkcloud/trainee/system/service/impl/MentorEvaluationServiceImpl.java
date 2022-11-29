package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.InGroupPerformanceDTO;
import com.kkcloud.trainee.system.DTO.JiraPointsDTO;
import com.kkcloud.trainee.system.DTO.MentorEvaluationFormDTO;
import com.kkcloud.trainee.system.mapper.InGroupPerformanceMapper;
import com.kkcloud.trainee.system.mapper.MentorEvaluationMapper;
import com.kkcloud.trainee.system.service.iface.MentorEvaluationService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
@Slf4j
public class MentorEvaluationServiceImpl implements MentorEvaluationService {

    @Autowired
    MentorEvaluationMapper mentorEvaluationMapper;


    @Autowired
    InGroupPerformanceMapper inGroupPerformanceMapper;

    @Override
    public String submitEvaluationForm(MentorEvaluationFormDTO mentorEvaluationFormDTO) {
        mentorEvaluationFormDTO.setUpdatedBy(this.getUsername());
        mentorEvaluationFormDTO.setUpdatedAt(LocalDateTime.now());

        /*Submission of entry happens here depending on what table*/
        /*Individual Performance*/
////        mentorEvaluationMapper.submitIndividualPerformance(mentorEvaluationFormDTO);
//


        /*Point Bonuses*/
        mentorEvaluationFormDTO.setTotalBonus(mentorEvaluationFormDTO.getLeadership()+
                mentorEvaluationFormDTO.getKnowledgeSharing()+
                mentorEvaluationFormDTO.getDocumentProduction());
////        mentorEvaluationMapper.submitPointBonuses(mentorEvaluationFormDTO);

        /*Point Deductions*/
        mentorEvaluationFormDTO.setTotalDeduction(mentorEvaluationFormDTO.getWorkViolation()+
                mentorEvaluationFormDTO.getAbsenteeism()+
                mentorEvaluationFormDTO.getLeave()+
                mentorEvaluationFormDTO.getLate());
//
////        System.out.println(mentorEvaluationFormDTO);
////        mentorEvaluationMapper.submitPointDeductions(mentorEvaluationFormDTO);

        /*check if the user has been evaluated using trainee ID and date*/
        /*if existing get trainee_evaluation_id and update the score
        * else submit as insert
        * */

        InGroupPerformanceDTO inGroupPerformanceDTO = new InGroupPerformanceDTO();
        inGroupPerformanceDTO.setTraineeEvaluationDate(mentorEvaluationFormDTO.getTraineeEvaluationDate());
        inGroupPerformanceDTO.setTraineeUserId(mentorEvaluationFormDTO.getTraineeId());
        inGroupPerformanceDTO.setEvaluatorUserId(mentorEvaluationFormDTO.getMentorId());
        inGroupPerformanceDTO.setTeamwork(mentorEvaluationFormDTO.getTeamWork());
        inGroupPerformanceDTO.setWorkAttitude(mentorEvaluationFormDTO.getWorkAttitude());
        inGroupPerformanceDTO.setProfessionalLevel(mentorEvaluationFormDTO.getProfessionalLevel());
        inGroupPerformanceDTO.setPersonalGrowth(mentorEvaluationFormDTO.getPersonalGrowth());
        inGroupPerformanceDTO.setWorkUnderPressure(mentorEvaluationFormDTO.getWorkUnderPressure());
        inGroupPerformanceDTO.setCreatedBy(mentorEvaluationFormDTO.getUpdatedBy());
        inGroupPerformanceDTO.setCreatedAt(mentorEvaluationFormDTO.getUpdatedAt());
//        System.out.println(inGroupPerformanceDTO);

//        Long checkTraineeEvaluationId = mentorEvaluationMapper.checkEvaluationID(mentorEvaluationFormDTO);
//        if (checkTraineeEvaluationId!=null){
//            if(checkTraineeEvaluationId>0) {
//                mentorEvaluationFormDTO.setTraineeEvaluationId(checkTraineeEvaluationId.intValue());
//                inGroupPerformanceDTO.setTraineeEvaluationId(checkTraineeEvaluationId.intValue());
//                mentorEvaluationMapper.updateEvaluationForm(mentorEvaluationFormDTO);}
//        }else{
//            mentorEvaluationMapper.submitEvaluationFormByMentor(mentorEvaluationFormDTO);
//            checkTraineeEvaluationId = mentorEvaluationMapper.checkEvaluationID(mentorEvaluationFormDTO);
//            System.out.println(checkTraineeEvaluationId);
//            inGroupPerformanceDTO.setTraineeEvaluationId(checkTraineeEvaluationId.intValue());
//
//        }
String evalStatus = "";
        boolean checkTraineeIdExist = mentorEvaluationMapper.checkTraineeIdExist(mentorEvaluationFormDTO);
//        System.out.println(checkTraineeIdExist);
        if(checkTraineeIdExist){
            boolean checkMentorEvaluated = mentorEvaluationMapper.checkMentorEvaluated((mentorEvaluationFormDTO));
//            System.out.println(checkMentorEvaluated);
                if(checkMentorEvaluated){

                    evalStatus = "This trainee has been evaluated by other mentor!";
                }else{
                    mentorEvaluationFormDTO.setTraineeEvaluationId(mentorEvaluationMapper.getInGroupTraineeEvaluationId(mentorEvaluationFormDTO));
                inGroupPerformanceDTO.setTraineeEvaluationId(mentorEvaluationFormDTO.getTraineeEvaluationId());
                    mentorEvaluationMapper.updateEvaluationForm(mentorEvaluationFormDTO);
                    inGroupPerformanceMapper.ingroupperf(inGroupPerformanceDTO);
                    evalStatus = "Evaluation submitted";
                }

        }else{
            mentorEvaluationMapper.submitEvaluationFormByMentor(mentorEvaluationFormDTO);
            inGroupPerformanceDTO.setTraineeEvaluationId(mentorEvaluationMapper.getInGroupTraineeEvaluationId(mentorEvaluationFormDTO));
            inGroupPerformanceMapper.ingroupperf(inGroupPerformanceDTO);
            evalStatus = "Evaluation submitted";
        }

        log.info("Member Evaluation Form Data: {}" +
                        " ingroup:{}",
                mentorEvaluationFormDTO,
                inGroupPerformanceDTO);
        setAverageIngroupTraineeScore(mentorEvaluationFormDTO.getTraineeId(), mentorEvaluationFormDTO.getTraineeEvaluationDate());

//        mentorEvaluationMapper.updateAverageIngroup(inGroupPerformanceDTO.getTraineeEvaluationId(), mentorEvaluationFormDTO.getTraineeId(), );

        addJiraRating(mentorEvaluationFormDTO.getTraineeEvaluationDate());
        addCodeLineRating(mentorEvaluationFormDTO.getTraineeEvaluationDate());
        addWorkingHoursRating(mentorEvaluationFormDTO.getTraineeEvaluationDate());
        return evalStatus;



        }

    @Override
    public void setAverageIngroupTraineeScore(int userId, int traineeDate) {
        MentorEvaluationFormDTO saveIngroupDTO = new MentorEvaluationFormDTO();
        saveIngroupDTO.setTraineeId(userId);
        saveIngroupDTO.setTraineeEvaluationDate(traineeDate);
        int traineeEvaluationId = mentorEvaluationMapper.getInGroupTraineeEvaluationId(saveIngroupDTO);
        mentorEvaluationMapper.updateAverageIngroup(traineeEvaluationId, userId, traineeDate);
    }


    void addWorkingHoursRating(int traineeEvaluationDate) {
        List<MentorEvaluationFormDTO> rankWorkingHours = mentorEvaluationMapper.checkWorkingHours(traineeEvaluationDate);
        int totalRankWorkingHours = rankWorkingHours.size();
        int topTen=0, topNext=0;
        if(totalRankWorkingHours>0){
            topTen = (int) Math.ceil(totalRankWorkingHours*.10);
            if(totalRankWorkingHours>0){
                topNext = (int) Math.ceil(totalRankWorkingHours*.20);
            }
        }
        for(MentorEvaluationFormDTO rankWorkingHoursList:rankWorkingHours){

            JiraPointsDTO workingHoursRankDTO = new JiraPointsDTO();
            int num1 = rankWorkingHoursList.getMentorId();
            workingHoursRankDTO.setRowNum(num1);
            workingHoursRankDTO.setUserId(rankWorkingHoursList.getTraineeId());
            if(num1>0&&num1<topTen+1){
                workingHoursRankDTO.setUserGrade(10);
            }else if(num1<topNext+1&&num1>topTen) {
                workingHoursRankDTO.setUserGrade(5);
            }else{
                workingHoursRankDTO.setUserGrade(0);
            }
            mentorEvaluationMapper.updateWorkingHoursRate(workingHoursRankDTO);

        }


    }

    void addCodeLineRating(int traineeEvaluationDate) {

        /*10 Top 10% of the total code	30
          20  Total code Top 11~30%	25
          20 Total code Top 50%~31%	20
          20 Total code Top 70%~51%	15
        The rest have code submission records	10
        No code commit record	0*/
        List<MentorEvaluationFormDTO> rankListLineOfCodes = mentorEvaluationMapper.checkCodelines(traineeEvaluationDate);
        int codelines = rankListLineOfCodes.size();
        int topTen = 0, topFive = 0, topOther = 0;
        topTen = (int) Math.ceil(codelines * .10);
        if (codelines > 0) {

            topFive = (int) Math.ceil(codelines * .30);
            if (codelines > 0) {

                topOther = (int) Math.ceil(codelines * .50);
                if (codelines > 0) {

                    topOther = (int) Math.ceil(codelines * .70);

                }
            }
        }

        for (MentorEvaluationFormDTO rankListSave : rankListLineOfCodes) {
            JiraPointsDTO totalcodelinessave = new JiraPointsDTO();
            int num1 = rankListSave.getMentorId();
            int codelinesstat = rankListSave.getJiraWorkingHours();
            totalcodelinessave.setRowNum(num1);
            totalcodelinessave.setUserId(rankListSave.getTraineeId());

            if (num1 > 0 && num1 < topTen + 1) {
                totalcodelinessave.setUserGrade(30);
                mentorEvaluationMapper.updateCodeLinesRate(totalcodelinessave);
            } else if (num1 < topFive + 1 && num1 > topTen) {

                totalcodelinessave.setUserGrade(25);
                mentorEvaluationMapper.updateCodeLinesRate(totalcodelinessave);
            } else if (num1 <= topOther + 1 && num1 > topFive) {

                totalcodelinessave.setUserGrade(20);
                mentorEvaluationMapper.updateCodeLinesRate(totalcodelinessave);
            } else {
                if(codelinesstat==0){
                    totalcodelinessave.setUserGrade(0);
                }else{
                    totalcodelinessave.setUserGrade(10);
                }

                mentorEvaluationMapper.updateCodeLinesRate(totalcodelinessave);
            }

        }

            /* <result column="jiraWorkingHours" property="jiraWorkingHours"/>
        <result column="traineeId" property="traineeId"/>
        <result column="mentorId" property="mentorId"/>*/

    }


    String getUsername(){
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String userName="";
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

    void addJiraRating(int traineeEvaluationDate){
        List<MentorEvaluationFormDTO> rankListJira = mentorEvaluationMapper.checkRankLineofCodes(traineeEvaluationDate);
//        System.out.println(rankListLineOfCodes.size());
//        System.out.println(rankListLineOfCodes.stream().iterator().);
        int totalTrainee = rankListJira.size();
        int topTen=0, topFive=0, topOther=0;
        topTen = (int) Math.ceil(totalTrainee*.10);
        if(totalTrainee>0){
            totalTrainee-=topTen;
            topFive = topTen+topTen;
            if(totalTrainee>0){
                totalTrainee-=topFive;
                topOther=totalTrainee;
            }
        }

        for(MentorEvaluationFormDTO rankListSave:rankListJira){

            JiraPointsDTO jiraRankListSave = new JiraPointsDTO();
            int num1 = rankListSave.getMentorId();
            jiraRankListSave.setRowNum(num1);
            jiraRankListSave.setUserId(rankListSave.getTraineeId());
            if(num1>0&&num1<topTen+1){
                jiraRankListSave.setUserGrade(10);
                mentorEvaluationMapper.updateJiraRate(jiraRankListSave);
            }else if(num1<topFive+1&&num1>topTen) {

                jiraRankListSave.setUserGrade(5);
                mentorEvaluationMapper.updateJiraRate(jiraRankListSave);
            }
            else{
                jiraRankListSave.setUserGrade(0);
                mentorEvaluationMapper.updateJiraRate(jiraRankListSave);
            }
    }
}

    @Override
    public void lockTraineeEvaluationStatus(MentorEvaluationFormDTO mentorEvaluationFormDTO) {
        mentorEvaluationMapper.insertLockTraineeEvaluationStatus(mentorEvaluationFormDTO);
    }
}
