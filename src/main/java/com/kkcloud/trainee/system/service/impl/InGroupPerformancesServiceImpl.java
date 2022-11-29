package com.kkcloud.trainee.system.service.impl;


import com.kkcloud.trainee.system.DTO.InGroupPerformanceDTO;
import com.kkcloud.trainee.system.DTO.IndividualRankingDTO;
import com.kkcloud.trainee.system.mapper.InGroupPerformanceMapper;
import com.kkcloud.trainee.system.model.IGPModel;
import com.kkcloud.trainee.system.model.LOCModel;
import com.kkcloud.trainee.system.service.iface.InGroupPerformancesService;
import com.kkcloud.trainee.system.service.iface.MentorEvaluationService;
import com.kkcloud.trainee.system.vo.ResponseHelper;
import com.kkcloud.trainee.system.vo.ResponseVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.time.LocalDateTime;
import java.util.List;
@Slf4j
@Service
public class InGroupPerformancesServiceImpl implements InGroupPerformancesService {

    @Autowired
    InGroupPerformanceMapper inGroupPerformanceMapper;

    @Autowired
    MentorEvaluationService mentorEvaluationService;

    @Override
    public InGroupPerformanceDTO groupperformance(InGroupPerformanceDTO inGroupPerformanceDTO) {

//        Long checkIfExisting


                /*check if existing
                *   -if not
                *           create trainee evaluation id and get it
                *           then save the ingroup performance
                *   -if exisitng, get the evaluation id then save the ingroup performance*/

//            boolean userRole = inGroupPerformanceMapper.checkIfExistingUser(inGroupPerformanceDTO);
//            if(userRole){
//                inGroupPerformanceMapper.submitIngroupFormExisting(inGroupPerformanceDTO);
//            }------------------


        List<InGroupPerformanceDTO> x = inGroupPerformanceMapper.existById(inGroupPerformanceDTO);
        boolean userRole = inGroupPerformanceMapper.selectUserByRole(inGroupPerformanceDTO);
            if(userRole){
                for(InGroupPerformanceDTO vv: x){
                    int gg = vv.getTraineeEvaluationId();

                    if(!x.isEmpty()){
                        inGroupPerformanceDTO.setTraineeEvaluationId(gg);
                        inGroupPerformanceDTO.setEvaluatorUserId(inGroupPerformanceDTO.getEvaluatorUserId());
                        inGroupPerformanceDTO.setWorkAttitude(inGroupPerformanceDTO.getWorkAttitude());
                        inGroupPerformanceDTO.setProfessionalLevel(inGroupPerformanceDTO.getProfessionalLevel());
                        inGroupPerformanceDTO.setPersonalGrowth(inGroupPerformanceDTO.getPersonalGrowth());
                        inGroupPerformanceDTO.setTeamwork(inGroupPerformanceDTO.getTeamwork());
                        inGroupPerformanceDTO.setWorkUnderPressure(inGroupPerformanceDTO.getWorkUnderPressure());
                        inGroupPerformanceDTO.setCreatedAt(LocalDateTime.now());
                        inGroupPerformanceDTO.setCreatedBy(getUsername());
                        //System.out.println(inGroupPerformanceDTO);
                        inGroupPerformanceMapper.ingroupperf(inGroupPerformanceDTO);
//                        return inGroupPerformanceDTO;
                    }
                }
            }else{
                boolean user1 = inGroupPerformanceMapper.selectUser(inGroupPerformanceDTO);
                if(user1){
                    inGroupPerformanceDTO.setTraineeUserId(inGroupPerformanceDTO.getTraineeUserId());
                    inGroupPerformanceDTO.setCreatedAt(LocalDateTime.now());
                    inGroupPerformanceMapper.insertRecord(inGroupPerformanceDTO);

//                    inGroupPerformanceDTO.setTraineeEvaluationId(gg);
                    inGroupPerformanceDTO.setEvaluatorUserId(inGroupPerformanceDTO.getEvaluatorUserId());
                    inGroupPerformanceDTO.setWorkAttitude(inGroupPerformanceDTO.getWorkAttitude());
                    inGroupPerformanceDTO.setProfessionalLevel(inGroupPerformanceDTO.getProfessionalLevel());
                    inGroupPerformanceDTO.setPersonalGrowth(inGroupPerformanceDTO.getPersonalGrowth());
                    inGroupPerformanceDTO.setTeamwork(inGroupPerformanceDTO.getTeamwork());
                    inGroupPerformanceDTO.setWorkUnderPressure(inGroupPerformanceDTO.getWorkUnderPressure());
                    inGroupPerformanceDTO.setCreatedAt(LocalDateTime.now());
                    inGroupPerformanceDTO.setCreatedBy(getUsername());
                    //System.out.println(inGroupPerformanceDTO);
                    inGroupPerformanceMapper.ingroupperfNewTraineeId(inGroupPerformanceDTO);
//                    return inGroupPerformanceDTO;
                }
            }

        mentorEvaluationService.setAverageIngroupTraineeScore(inGroupPerformanceDTO.getTraineeUserId(), inGroupPerformanceDTO.getTraineeEvaluationDate());

//        LocalDate currentdate = LocalDate.now();
//        SimpleDateFormat simpleformat = new SimpleDateFormat("MM");
//        String dateChecker = currentdate.getYear() + simpleformat.format(new Date());
//        System.out.println(dateChecker);
        return null;
    }

    @Override
    public List<IGPModel> getInGroupPerformanceList(InGroupPerformanceDTO inGroupPerformanceDTO) {

        List<IGPModel> modelList;
        modelList = inGroupPerformanceMapper.getInGroupPerformanceList(inGroupPerformanceDTO);

        DecimalFormat df = new DecimalFormat();
        df.setMaximumFractionDigits(2);

        DecimalFormat df1 = new DecimalFormat();
        df1.setMaximumFractionDigits(0);


        for (IGPModel list: modelList) {

            list.setAverage_work_attitude(Double.parseDouble(df.format(list.getAverage_work_attitude())));
            list.setAverage_professional_level(Double.parseDouble(df.format(list.getAverage_professional_level())));
            list.setAverage_personal_growth(Double.parseDouble(df.format(list.getAverage_personal_growth())));
            list.setAverage_teamwork(Double.parseDouble(df.format(list.getAverage_teamwork())));
            list.setAverage_work_under_pressure(Double.parseDouble(df.format(list.getAverage_work_under_pressure())));
            list.setTotal_points(Double.parseDouble(df1.format(list.getTotal_points())));


        }
        log.info("modelList: {}",modelList);
        return modelList;
    }

    @Override
    public List<LOCModel> getLinesOfCodesList(IndividualRankingDTO individualRankingDTO){
        List<LOCModel> modelList;
        modelList = inGroupPerformanceMapper.getLinesOfCodesList(individualRankingDTO);
        return modelList;
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

}
