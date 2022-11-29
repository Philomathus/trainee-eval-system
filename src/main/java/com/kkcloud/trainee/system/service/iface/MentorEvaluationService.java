package com.kkcloud.trainee.system.service.iface;


import com.kkcloud.trainee.system.DTO.MentorEvaluationFormDTO;

public interface MentorEvaluationService {
//    void submitEvaluationForm(MentorEvaluationFormDTO mentorEvaluationFormDTO);
    void setAverageIngroupTraineeScore(int userId, int traineeDate);
    String submitEvaluationForm(MentorEvaluationFormDTO mentorEvaluationFormDTO);

    void lockTraineeEvaluationStatus(MentorEvaluationFormDTO mentorEvaluationFormDTO);

}

