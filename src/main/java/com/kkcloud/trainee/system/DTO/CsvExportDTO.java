package com.kkcloud.trainee.system.DTO;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class CsvExportDTO implements Serializable {
    private int csvExport;
    private int monthRequested;
}
