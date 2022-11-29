package com.kkcloud.trainee.system;

//import com.ctrip.framework.apollo.spring.annotation.EnableApolloConfig;
import com.ctrip.framework.apollo.spring.annotation.EnableApolloConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableApolloConfig
public class TraineeSystemApplication {
    public static void main(String[]  args) {
        SpringApplication.run(TraineeSystemApplication.class, args);
    }
}
