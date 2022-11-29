package com.kkcloud.trainee.system.mapper;
import com.github.pagehelper.Page;
import com.kkcloud.trainee.system.DTO.*;
import com.kkcloud.trainee.system.model.*;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface TeamPerformanceReportMapper {
    List<TeamPerformanceModel> findAverage(TeamReportsDTO teamReportsDTO);
    List<Integer> getGroupPoints(TeamReportsDTO teamReportsDTO);
    List<Integer> getCodePoints(TeamReportsDTO teamReportsDTO);
    List<TeamMemberScoreModel> displayMember(TeamMemberScoreDTO teamMemberScoreDTO);
    int displayMember2(int id, int date);
    Page<CsvExportModel> downloadRiskEntry(CsvExportDTO csvExportDTO);
    List<TeamOverallScoreModel> getOverallScore(PositionDTO positionDTO);
    List<TeamRankModel> getTeamRank(TeamRankDTO teamRankDTO);
    List<TeamCodeListModel> getTeamLinesOfCode(IndividualRankingDTO individualRankingDTO);
    int countRecord(int groupId, int monthRequested);

}