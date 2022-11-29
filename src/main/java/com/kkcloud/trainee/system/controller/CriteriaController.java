package com.kkcloud.trainee.system.controller;

import com.kkcloud.trainee.system.DTO.InGroupPerformanceDTO;
import com.kkcloud.trainee.system.service.iface.InGroupPerformancesService;
import com.kkcloud.trainee.system.vo.ResponseVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.ArrayList;

@Slf4j
@RestController
@RequestMapping("/api/trainee-system/criteria")
public class CriteriaController {

    @Autowired
    InGroupPerformancesService inGroupPerformancesService;

    @PostMapping("/v1/trainee/in/group/performance")
    public ResponseVO inGroupPerf(@Valid @RequestBody InGroupPerformanceDTO inGroupPerformanceDTO) {
        inGroupPerformancesService.groupperformance(inGroupPerformanceDTO);
        return new ResponseVO(200, "Successful Operation",new ArrayList());
    }
}
