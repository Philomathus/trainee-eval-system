package com.kkcloud.trainee.system.controller;

import com.kkcloud.trainee.system.DTO.*;
import com.kkcloud.trainee.system.model.*;
import com.kkcloud.trainee.system.service.iface.TeamPerformanceReport;
import com.kkcloud.trainee.system.vo.ResponseHelper;
import com.kkcloud.trainee.system.vo.ResponseVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static java.time.LocalDate.now;

@RestController
@Slf4j
@RequestMapping("/api/trainee-system/team-reports")
public class TeamReportsController {

    @Autowired
    TeamPerformanceReport teamPerformanceReport;

    @PostMapping("/v1/list")
    public ResponseVO<List<TeamPerformanceModel>> getTotalAverage(@RequestBody TeamReportsDTO teamReportsDTO) {
        return ResponseHelper.success(teamPerformanceReport.findAverage(teamReportsDTO));
    }

    @PostMapping("/v1/rank")
    public ResponseVO<TeamRankModel> getRank(@RequestBody TeamRankDTO teamRankDTO){
        return ResponseHelper.success(teamPerformanceReport.getTeamRank(teamRankDTO));
    }

    @PostMapping("/v1/teamPerformanceRanking/linesOfCodes")
    public ResponseVO<List<TeamCodeListModel>> getTeamLinesOfCode(@RequestBody IndividualRankingDTO individualRankingDTO) {
        List<TeamCodeListModel> TeamLOC = teamPerformanceReport.getTeamLinesOfCode(individualRankingDTO);
        return new ResponseVO<>(200, "Successful Operation!", TeamLOC);

    }
    @PostMapping("/v1/member")
    public ResponseVO<List<TeamMemberScoreModel>> getMemberScore(@RequestBody TeamMemberScoreDTO teamMemberScoreDTO) {
        return ResponseHelper.success(teamPerformanceReport.displayMember(teamMemberScoreDTO));
    }

    @PostMapping("/v1/csvExport")
    public ResponseEntity<Resource> downloadFile(@RequestBody CsvExportDTO csvExportDTO) {
        InputStreamResource file = new InputStreamResource(teamPerformanceReport.downloadRiskList(csvExportDTO));
        log.info("Success {}",csvExportDTO);
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + now()+"Export_Report.csv")
                .contentType(MediaType.parseMediaType("application/csv"))
                .body(file);
    }

    @PostMapping("/v1/teamPerformanceRanking/overallScore")
    public  ResponseVO<List<TeamOverallScoreModel>>getOverallScore(@RequestBody PositionDTO positionDTO){
        List<TeamOverallScoreModel> teamOverallScore = teamPerformanceReport.getOverallScore(positionDTO);
        return  new ResponseVO(200,"Successful Operation!",teamOverallScore);
    }

}
