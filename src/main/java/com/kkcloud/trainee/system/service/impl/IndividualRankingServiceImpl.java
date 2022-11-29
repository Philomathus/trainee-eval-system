package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.IndividualRankingDTO;
import com.kkcloud.trainee.system.DTO.TeamDTO;
import com.kkcloud.trainee.system.mapper.IndividualRankingMapper;
import com.kkcloud.trainee.system.model.ActualWorkingHoursModel;
import com.kkcloud.trainee.system.model.IndividualRankingModel;
import com.kkcloud.trainee.system.model.TeamListModel;
import com.kkcloud.trainee.system.service.iface.IndividualRankingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class IndividualRankingServiceImpl  implements IndividualRankingService {


    @Autowired
    IndividualRankingMapper individualRankingMapper;


    public List<IndividualRankingModel> getWorkingHours(IndividualRankingDTO individualRankingDTO) {
        return individualRankingMapper.getJiraWorkingHours(individualRankingDTO);


    }
        public List<ActualWorkingHoursModel> getActualHours(IndividualRankingDTO individualRankingDTO){
            return individualRankingMapper.getActualHours(individualRankingDTO);

        }


    }
