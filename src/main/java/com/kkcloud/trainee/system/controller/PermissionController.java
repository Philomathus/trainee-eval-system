package com.kkcloud.trainee.system.controller;

import com.kkcloud.trainee.system.DTO.*;
import com.kkcloud.trainee.system.mapper.DetailPermissionMapper;
import com.kkcloud.trainee.system.model.IndividualGradeModel;
import com.kkcloud.trainee.system.model.PermissionDetail;
import com.kkcloud.trainee.system.service.iface.*;
import com.kkcloud.trainee.system.vo.ResponseHelper;
import com.kkcloud.trainee.system.vo.ResponseVO;
import com.kkcloud.trainee.system.model.PermissionHeader;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("/api/trainee-system/permission")
public class PermissionController {


    @Autowired
    HeaderService  headerService;
 //
    @PostMapping ("/v1/getHeaderPermission")
    public ResponseVO<List<PermissionHeader>>getById(@Validated @RequestBody HeaderDTO headerDTO){
        List<PermissionHeader>  permit = headerService.getHeader(headerDTO);
        log.info("Successful Operation!");
      return ResponseHelper.success(permit);
//        return new ResponseVO(200,"Successful Operation!",permit);
     }
//
    @Autowired
    DetailPermissionMapper detailPermissionMapper;

    @PostMapping ("/v1/getDetailPermission")
    public ResponseVO<List<PermissionDetail>> getUserById(@RequestBody PermissionDTO permissionDTO) {
        List<PermissionDetail> detail = detailPermissionMapper.findById(permissionDTO);
        return new ResponseVO(200, "Successful Operation!", detail);
    }

    @Autowired
    UserService userService;

    @PostMapping ("/v1/getUserPermission")
    public ResponseVO<List<UserDetailsDTO>> getUserId(@RequestBody GetUserDTO getUserDTO) {
        try {
            List<UserDetailsDTO>user = userService.getUser(getUserDTO);
            log.info("Successful Operation!", getUserDTO);
            return ResponseHelper.success(user);
        } catch(Exception e) {
            log.error("Unsuccessful Operation!", e.getMessage(), e);
            return ResponseHelper.error();
        }
    }

    @Autowired
    UpdateDetailTitleService updateDetailTitleService;

    @PostMapping("/v1/updateDetail")
    public ResponseVO updateDetailsAll(@RequestBody UpdateDetailTitleDTO updateDetailTitleDTO) {
        return new ResponseVO(200, updateDetailTitleService.updateDetailTitle(updateDetailTitleDTO), new ArrayList());
    }


    @Autowired
    UpdateService updateService;
//
    @PostMapping("v1/updatePermission")
    public ResponseVO<?> updateDetail(@RequestBody UpdateDTO updateDTO){
        String result = updateService.updateDetails(updateDTO);
//            log.error("No record found!", result);
//            return  ResponseHelper.userNotFound();

            log.info("Successful Operation!", result);
            return ResponseHelper.success(result);
       // return new ResponseVO(200, "Successful Operation","");
    }

}
