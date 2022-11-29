package com.kkcloud.trainee.system.mapper;

import com.kkcloud.trainee.system.DTO.JiraPointsDTO;
import com.kkcloud.trainee.system.DTO.MentorEvaluationFormDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface MentorEvaluationMapper {
    void submitIndividualPerformance(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    void submitPointBonuses(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    void submitPointDeductions(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    void submitEvaluationFormByMentor(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    List<MentorEvaluationFormDTO> checkRankLineofCodes(int traineeEvaluationDate);

    void updateJiraRate(JiraPointsDTO jiraPointsDTO);

    List<MentorEvaluationFormDTO> checkCodelines(int traineeEvaluationDate);

    void updateCodeLinesRate(JiraPointsDTO totalcodelinessave);

    List<MentorEvaluationFormDTO> checkWorkingHours(int traineeEvaluationDate);


    void updateWorkingHoursRate(JiraPointsDTO workingHoursRankDTO);

    Long checkEvaluationID(MentorEvaluationFormDTO mentorEvaluationFormDTO);


    void updateEvaluationForm(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    void updateAverageIngroup(@Param("evalId") int  evalId, @Param("userId") int  userId, @Param("traineeEvaluationDate") int traineeEvaluationDate);

    boolean checkTraineeIdExist(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    boolean checkMentorEvaluated(MentorEvaluationFormDTO mentorEvaluationFormDTO);
    int getInGroupTraineeEvaluationId(MentorEvaluationFormDTO mentorEvaluationFormDTO);


    void insertLockTraineeEvaluationStatus(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    boolean checkTraineeFormStatus(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    int checkMentorId(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    void cancelCheckEvaluationStatus(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    boolean checkTraineeFormStatus1(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    void updateLockTraineeEvaluationStatus(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    int checkUserRoleId(MentorEvaluationFormDTO mentorEvaluationFormDTO);

}
