package com.kkcloud.trainee.system.service.iface;

import com.kkcloud.trainee.system.DTO.*;
import com.kkcloud.trainee.system.model.*;

import java.io.ByteArrayInputStream;
import java.util.List;

public interface TeamPerformanceReport {
    List<TeamPerformanceModel> findAverage(TeamReportsDTO teamReportsDTO);
    List<TeamMemberScoreModel> displayMember(TeamMemberScoreDTO teamMemberScoreDTO);
    ByteArrayInputStream downloadRiskList(CsvExportDTO csvExportDTO);
    List<TeamOverallScoreModel> getOverallScore(PositionDTO positionDTO);
    TeamRankModel getTeamRank(TeamRankDTO teamRankDTO);
    List<TeamCodeListModel> getTeamLinesOfCode(IndividualRankingDTO individualRankingDTO);
}
