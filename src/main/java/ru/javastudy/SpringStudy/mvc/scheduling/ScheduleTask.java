package ru.javastudy.SpringStudy.mvc.scheduling;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class ScheduleTask {

    @Scheduled(fixedDelay = 10000)
    public void fixedDelay() {
        System.out.println("Fixed delay every 10 sec " + new Date());
    }

    @Scheduled(cron = "0/30 * * * * ?")
    public void cronSchedule() {
        System.out.println("CronSchedule every 30 sec " + new Date());
    }
}
