package com.kkcloud.trainee.system.controller;


import com.kkcloud.trainee.system.DTO.*;
import com.kkcloud.trainee.system.exception.UserAlreadyExistException;
import com.kkcloud.trainee.system.mapper.MentorEvaluationMapper;
import com.kkcloud.trainee.system.model.*;
import com.kkcloud.trainee.system.service.iface.*;
import com.kkcloud.trainee.system.vo.ResponseHelper;
import com.kkcloud.trainee.system.vo.ResponseVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("/api/trainee-system/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/v1/register")
    public ResponseVO<?> userRegister(final @Valid @RequestBody RegisterDTO userData) { //UserDataDTO
        try {
            String reg = userService.register(userData);
            return ResponseHelper.success();
        } catch (UserAlreadyExistException e) {
            return ResponseHelper.userExist();
        }
    }

    @PostMapping("/v1/login")
    public ResponseEntity<ResponseVO<UserLoggedInDTO>> authenticateUser(@Valid @RequestBody LoginDTO loginDto) {

        log.info("Testing logging in");
        System.out.println("Testing logging in");


        UserLoggedInDTO userLoggedInDTO = userService.loginUser(loginDto);
        if (userLoggedInDTO == null) {
            return new ResponseEntity<>(ResponseHelper.userNotFound(), HttpStatus.FORBIDDEN);
        } else {
            return new ResponseEntity<>(ResponseHelper.success(userLoggedInDTO), HttpStatus.OK);
        }
    }

    //list
    @Autowired
    UserServiceList userServiceList;

    @PostMapping("/v1/teamList")
    public ResponseVO <List<TeamDTO>> getAllTeamList(@RequestBody PositionDTO positionDTO) {
        List<TeamDTO> team = userServiceList.getAllTeamDetails(positionDTO);
        return new ResponseVO(200,"Successful Operation",team);
       // return userServiceList.getAllTeamDetails(positionDTO);
    }

    @PostMapping("/v1/departmentList")
    public ResponseVO <List<DepartmentModel>> getAllDepartmentList() {
        List<DepartmentModel> department = userServiceList.getAllDepartment();
        return new ResponseVO(200,"Successful Operation",department);
      //  return userServiceList.getAllDepartment();
    }

    @PostMapping("/v1/groupList")
    public ResponseVO <List<GroupModel>> getAllGroupList(@RequestBody PositionDTO positionDTO) {
        List<GroupModel> group = userServiceList.getAllGroupList(positionDTO);
        return new ResponseVO(200,"Successful Operation",group);
        //return userServiceList.getAllGroupList(positionDTO);
    }

    @PostMapping("/v1/userList")
    public ResponseVO <List<UserDetailsModel>> getAllUser(@RequestBody PositionDTO positionDTO) {
        List<UserDetailsModel> user = userServiceList.getAllUser(positionDTO);
        return  new ResponseVO(200,"Successful",user);
      //  System.out.println(positionDTO.getGroupId());
        //return userServiceList.getAllUser(positionDTO);
    }

    @Autowired
    UserUpdateService userUpdateService;

    @PostMapping("/v1/update")
    public ResponseVO updateUserPassword(@Valid @RequestBody ChangePasswordDto changePasswordDto) {
        String changes = userUpdateService.updateUserPassword(changePasswordDto);
        int code = 0;
        if (changes.equals("Success")) {
            changes = "Successfully Updated";
            code = 200;
        } else {
            code = 500;
        }
        return new ResponseVO(code, "" + changes, new ArrayList<>());
    }

    @PostMapping("/v1/updatePasswordByAdmin")
    public ResponseVO<?> updatePassword(@Valid @RequestBody ChangePasswordDto changePasswordDto) {
        try {
            userUpdateService.updatePassword(changePasswordDto);
            return ResponseHelper.success();
        } catch (Exception e) {
            return ResponseHelper.error();
        }
    }

    @PostMapping("/v1/deleteUser")
    public ResponseVO deleteUser(@RequestBody ChangePasswordDto changePasswordDto) {
        try {
            userUpdateService.deleteUser(changePasswordDto);
            return ResponseHelper.success();
        } catch (Exception e) {
            return ResponseHelper.error();
        }
    }

    @Autowired
    EmployeeService employeeService;

    @PostMapping("/v1/filter/employee")
    public ResponseVO<List<EmployeeDTO>> getEmployee(@RequestBody EmployeeDTO employeeDTO) {
        List<EmployeeDTO> employee = employeeService.getEmployee(employeeDTO);
        return new ResponseVO(200, "Successful Operation!", employee);
    }


    @Autowired
    TeamService teamService;

    @PostMapping("/v1/filter/team")
    public ResponseVO<List<TeamListModel>> getTeam(@RequestBody PositionDTO positionDTO){
        List<TeamListModel> team = teamService.getTeam(positionDTO);
        return new ResponseVO(200, "Successful Operation!",team);
    }


    @PostMapping("/v1/userListTraineeView")
    public ResponseVO <List<UserDetailsModel>> evaluateList(@RequestBody PositionDTO positionDTO) {
        List<UserDetailsModel> user = userServiceList.getEvaluateList(positionDTO);
        return new ResponseVO(200,"Successful Operation",user);
    }

    @Autowired
    MentorEvaluationMapper mentorEvaluationMapper;

    @Autowired
    MentorEvaluationService mentorEvaluationService;

//    @PostMapping("/v1/checkEvaluationStatus")
//    public ResponseVO checkEvaluationStatus(@RequestBody IndividualGradeDTO individualGradeDTO){
//        MentorEvaluationFormDTO checkEvalStatusDTO = new MentorEvaluationFormDTO();
//        checkEvalStatusDTO.setTraineeId(individualGradeDTO.getUserId());
//        checkEvalStatusDTO.setTraineeEvaluationDate(individualGradeDTO.getTraineeEvaluationDate());
//      boolean evaluationStatusBoolean = mentorEvaluationMapper.checkMentorEvaluated(checkEvalStatusDTO);
//      String evaluationStatus="";
//      if (evaluationStatusBoolean){
//          evaluationStatus = "Has been evaluated";
//      }
//        //  System.out.println(checkEvalStatusDTO.getTraineeEvaluationDate() + " " + checkEvalStatusDTO.getTraineeId());
//         return new ResponseVO(200,"Successful Operation",evaluationStatus);
//
//    }

    @PostMapping("/v1/checkEvaluationStatus")
    public ResponseVO checkEvaluationStatus(@RequestBody MentorEvaluationFormDTO mentorEvaluationFormDTO){
       int roleId = mentorEvaluationMapper.checkUserRoleId(mentorEvaluationFormDTO);
        String traineeEvaluationFormStatus = "";
        if(roleId!=3){
            mentorEvaluationFormDTO.setUpdatedAt(LocalDateTime.now());

            boolean evaluationStatusBoolean = mentorEvaluationMapper.checkMentorEvaluated(mentorEvaluationFormDTO);
            if(evaluationStatusBoolean==false){
                boolean checkTraineeFormStatus = mentorEvaluationMapper.checkTraineeFormStatus(mentorEvaluationFormDTO);
                if(checkTraineeFormStatus){
                    int checkMentorId = mentorEvaluationMapper.checkMentorId(mentorEvaluationFormDTO);
                    if(checkMentorId==mentorEvaluationFormDTO.getMentorId()){
                        traineeEvaluationFormStatus = "Continue with the evaluation";
                    }else{
                        traineeEvaluationFormStatus = "Trainee is being evaluated by other mentor";
                    }
                }else{
                    checkTraineeFormStatus = mentorEvaluationMapper.checkTraineeFormStatus1(mentorEvaluationFormDTO);
                    if(checkTraineeFormStatus){
                        mentorEvaluationMapper.updateLockTraineeEvaluationStatus(mentorEvaluationFormDTO);
                    }else{
                        mentorEvaluationService.lockTraineeEvaluationStatus(mentorEvaluationFormDTO);
                    }
                    traineeEvaluationFormStatus = "Continue with the evaluation";
                }
            }else{
                traineeEvaluationFormStatus = "Trainee has been evaluated";
            }

        }else {
            traineeEvaluationFormStatus = "Continue with the evaluation";
        }

        return new ResponseVO(200,"Successful Operation",traineeEvaluationFormStatus);
    }

    @PostMapping("/v1/closeEvaluationStatus")
    public ResponseVO cancelCheckEvaluationStatus(@RequestBody MentorEvaluationFormDTO mentorEvaluationFormDTO){
        mentorEvaluationMapper.cancelCheckEvaluationStatus(mentorEvaluationFormDTO);
        return new ResponseVO(200,"Successful Operation","");
    }


    @PostMapping("/v1/insertMentees")
    public ResponseVO<?> insertMenteesToMentor(@RequestBody MenteesDTO menteesDTO){

        try {
            userService.insertMenteesToMentor(menteesDTO);
            return ResponseHelper.success();

        } catch (Exception e) {
            return ResponseHelper.error();
        }
    }


}
