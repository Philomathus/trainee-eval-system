package com.kkcloud.trainee.system.utils;

import com.kkcloud.trainee.system.model.CsvExportModel;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVPrinter;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.Arrays;
import java.util.List;

public class RiskEntryListCsvHelper {

    public static String TYPE = "text/csv";
    String[] HEADERS = {"* Username",
                        "* Total Code Lines",
                        "Learning Performance",
                        "Development Performance",
                        "Average in Group Performance",
                        "Jira Working Hours",
                        "Actual Working Hours",
                        "Total Bonus",
                        "Total Deduction",
                        "Total Points",
                        "Letter Grade"};

    public static boolean hasCSVFormat(MultipartFile file) {
        if (TYPE.equals(file.getContentType())
                || file.getContentType().equals("application/vnd.ms-excel")) {
        return true;
        }
        return false;
    }
    //Header Name for EXCEL
    public static ByteArrayInputStream riskHelperToCsv(List<CsvExportModel> csvExportModels) {
        final CSVFormat format = CSVFormat.RFC4180.withHeader(  "* Username",
                                                                "* Total Code Lines",
                                                                "Learning Performance",
                                                                "Development Performance",
                                                                "Average in Group Performance",
                                                                "Jira Working Hours",
                                                                "Actual Working Hours",
                                                                "Total Bonus",
                                                                "Total Deduction",
                "Total Points",
                                                                "Letter Grade");

        try (ByteArrayOutputStream out = new ByteArrayOutputStream();
             CSVPrinter csvPrinter = new CSVPrinter(new PrintWriter(out), format);) {
            for (CsvExportModel csvExportModel : csvExportModels) {
                List<? extends Serializable> data = Arrays.asList(
                        csvExportModel.getUsername(),
                        csvExportModel.getTotalCodeLines(),
                        csvExportModel.getTotalLearningPerformance(),
                        csvExportModel.getTotalDevelopmentPerformance(),
                        csvExportModel.getAvg_in_group_performance(),
                        csvExportModel.getJiraWorkingHours(),
                        csvExportModel.getActualWorkingHours(),
                        csvExportModel.getTotalBonus(),
                        csvExportModel.getTotalDeduction(),
                        csvExportModel.getTotalPoints(),
                        csvExportModel.getTotalGrade());
                csvPrinter.printRecord(data);
            }
            csvPrinter.flush();
            return new ByteArrayInputStream(out.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException("Fail to export data to CSV file: " + e.getMessage());
        }
    }
}
