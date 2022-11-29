package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.*;
import com.kkcloud.trainee.system.mapper.UserMapper;
import com.kkcloud.trainee.system.mapper.UserPermissionMapper;
import com.kkcloud.trainee.system.model.UserModel;
import com.kkcloud.trainee.system.exception.UserAlreadyExistException;
import com.kkcloud.trainee.system.service.iface.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Slf4j
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    UserPermissionMapper userPermissionMapper;

    @Override
    public String register(RegisterDTO user) throws UserAlreadyExistException {

        //Let's check if user already registered with us
        if(userMapper.userExists(user.getEmail(), user.getUserUsername())){
            throw new UserAlreadyExistException("User already exists for this email");
        }

        RegisterDTO registerDTO = new RegisterDTO();
        registerDTO.setEmail(user.getEmail());
        registerDTO.setPassword(passwordEncoder.encode(user.getPassword()));
        registerDTO.setCreatedAt(LocalDateTime.now());
        registerDTO.setRoleId(user.getRoleId());
        registerDTO.setTeamId(user.getTeamId());
        registerDTO.setUserUsername(user.getUserUsername());
        registerDTO.setUserOnboardingDate(user.getUserOnboardingDate());
        registerDTO.setCreatedBy(user.getCreatedBy());
        registerDTO.setUserIsDeleted(user.getUserIsDeleted());
        registerDTO.setUserIsTeamLeader(user.getUserIsTeamLeader());
        userMapper.registerUser(registerDTO);


        log.info("registerDTO: {}",registerDTO);
        return "Success";

    }

    private void encodePassword(UserModel userModel, LoginDTO user) {
        userModel.setPassword(passwordEncoder.encode(user.getPassword()));
    }

    @Override
    public UserLoggedInDTO loginUser(LoginDTO loginDTO) throws BadCredentialsException {
        try {
            UserModel user = userMapper.findByUsername(loginDTO.getUsername())
                    .orElseThrow(() ->
                            new UsernameNotFoundException("User not found with username:" + loginDTO.getUsername()));

            Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(
                    loginDTO.getUsername(), loginDTO.getPassword()));

            SecurityContextHolder.getContext().setAuthentication(authentication);
            LocalDate correctDate = user.getOnboardingDate();
            correctDate.plusDays(1);

            user.setOnboardingDate(correctDate);

            UserLoggedInDTO userLoggedInDTO = new UserLoggedInDTO();

            BeanUtils.copyProperties(user, userLoggedInDTO);

            return userLoggedInDTO;
        }
        catch(BadCredentialsException e){
            return null;
        }
    }

    @Override
    public List<UserDetailsDTO> getUser(GetUserDTO getUserDTO) {
//        return null;
        return userPermissionMapper.findUserById(getUserDTO);
    }



    @Override
    public String insertMenteesToMentor(MenteesDTO menteesDTO){

        MenteesDTO obj = new MenteesDTO();

        obj.setTraineeMentorId(menteesDTO.getTraineeMentorId());
        obj.setTraineeMentorRecordId(menteesDTO.getTraineeMentorRecordId());
        obj.setTraineeUserId(menteesDTO.getTraineeUserId());
        obj.setMentorUserId(menteesDTO.getMentorUserId());

        userMapper.insertMenteeToMentor(obj);

        return "Success";

    }


}
