package com.kkcloud.trainee.system.service.impl;

import com.kkcloud.trainee.system.DTO.*;
import com.kkcloud.trainee.system.mapper.TeamPerformanceReportMapper;
import com.kkcloud.trainee.system.model.*;
import com.kkcloud.trainee.system.service.iface.TeamPerformanceReport;
import com.kkcloud.trainee.system.utils.RiskEntryListCsvHelper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.ByteArrayInputStream;
import java.util.List;

@Service
@Slf4j
public class TeamPerformanceReportImpl implements TeamPerformanceReport {
    @Autowired
    TeamPerformanceReportMapper teamPerformanceReportMapper;

    @Override
    public List<TeamPerformanceModel> findAverage(TeamReportsDTO teamReportsDTO)
    {
        TeamPerformanceModel igFinal = new TeamPerformanceModel();
        List<TeamPerformanceModel> avs = teamPerformanceReportMapper.findAverage(teamReportsDTO);
        List<Integer> igp = teamPerformanceReportMapper.getGroupPoints(teamReportsDTO);
        List<Integer> icp = teamPerformanceReportMapper.getCodePoints(teamReportsDTO);
        int a = 20;
        int b = 0;
        int c = 0;

        int count = teamPerformanceReportMapper.countRecord(teamReportsDTO.getGroupId(),teamReportsDTO.getMonthRequested());
        int memberTotalScore = teamPerformanceReportMapper.displayMember2(teamReportsDTO.getGroupId(),teamReportsDTO.getMonthRequested());


        for(Integer ic : icp)
        {
            igFinal.setCodeScore(ic);
        }

        if(igp.size() != 0) {
            System.out.println(igp.size() + " 1st");
            for (Integer ig : igp)
            {
                if (ig != null) {
                    b += ig;
                    igFinal.setTotalBonus(b);
                    System.out.println(b + " No Error : " + c + " Loop ");
                    c++;
                }
            }
        }

        Double aaa = memberTotalScore / count * 0.7;

        int integer = aaa.intValue();


        for(TeamPerformanceModel vv : avs)
        {
            vv.setCodeScore(igFinal.getCodeScore());
            vv.setTotalBonus(igFinal.getTotalBonus());
            vv.setTotalScore(integer);
            vv.setTotalGroupScore(igFinal.getCodeScore()+ igFinal.getTotalBonus()+ vv.getTotalScore());


        }

        log.info("avs: {}", avs);
        return avs;

    }


    @Override
    public List<TeamCodeListModel> getTeamLinesOfCode(IndividualRankingDTO individualRankingDTO)
    {
        List<TeamCodeListModel> totalTeamCode = teamPerformanceReportMapper.getTeamLinesOfCode(individualRankingDTO);
        return totalTeamCode;
    }

    @Override
    public List<TeamMemberScoreModel> displayMember(TeamMemberScoreDTO teamMemberScoreDTO)
    {
        return teamPerformanceReportMapper.displayMember(teamMemberScoreDTO);
    }

    public ByteArrayInputStream downloadRiskList(CsvExportDTO csvExportDTO) {
//        PageHelper.startPage(csvExportDTO.getPage_no(), csvExportDTO.getPage_size());
        List<CsvExportModel> risk =  teamPerformanceReportMapper.downloadRiskEntry(csvExportDTO);
        ByteArrayInputStream downLoad = RiskEntryListCsvHelper.riskHelperToCsv(risk);
        return downLoad;
    }

    @Override
    public List<TeamOverallScoreModel> getOverallScore(PositionDTO positionDTO) {
        List<TeamOverallScoreModel> teamScore =  teamPerformanceReportMapper.getOverallScore(positionDTO);
        return teamScore;
    }
    @Override
    public TeamRankModel getTeamRank(TeamRankDTO teamRankDTO) {

        List<TeamRankModel> rks = teamPerformanceReportMapper.getTeamRank(teamRankDTO);

        int count = rks.size();

        for (int i = 0; i < count; ++i) {
            if (i < count * 0.25)
                rks.get(i).setTeamRank("1");
            else if (i < count * 0.5)
                rks.get(i).setTeamRank("2");
            else if (i < count * 0.75)
                rks.get(i).setTeamRank("3");
            else
                rks.get(i).setTeamRank("4");
        }
       // System.out.println(rks);
        log.info("rks: {}", rks);
        return rks.stream().filter(rk -> rk.getTeamId() == teamRankDTO.getGroupId()).findFirst().orElse(null);
    }


}
