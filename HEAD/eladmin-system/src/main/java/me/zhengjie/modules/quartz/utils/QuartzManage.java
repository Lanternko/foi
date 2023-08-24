/*
 *  Copyright 2019-2020 Zheng Jie
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
package me.zhengjie.modules.quartz.utils;

import lombok.extern.slf4j.Slf4j;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.modules.quartz.domain.QuartzJob;
import org.quartz.*;
import org.quartz.impl.triggers.CronTriggerImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;
import java.util.Date;
import static org.quartz.TriggerBuilder.newTrigger;

/**
 * @author Zheng Jie
 * @date 2019-01-07
 */
@Slf4j
@Component
public class QuartzManage {

    private static final String JOB_NAME = "TASK_";

    @Resource
    private Scheduler scheduler;

    public void addJob(QuartzJob quartzJob){
        try {
            // 構建job資訊
            JobDetail jobDetail = JobBuilder.newJob(ExecutionJob.class).
                    withIdentity(JOB_NAME + quartzJob.getId()).build();

            //通過觸發器名和cron 表達式建立 Trigger
            Trigger cronTrigger = newTrigger()
                    .withIdentity(JOB_NAME + quartzJob.getId())
                    .startNow()
                    .withSchedule(CronScheduleBuilder.cronSchedule(quartzJob.getCronExpression()))
                    .build();

            cronTrigger.getJobDataMap().put(QuartzJob.JOB_KEY, quartzJob);

            //重置啟動時間
            ((CronTriggerImpl)cronTrigger).setStartTime(new Date());

            //執行定時任務
            scheduler.scheduleJob(jobDetail,cronTrigger);

            // 暫停任務
            if (quartzJob.getIsPause()) {
                pauseJob(quartzJob);
            }
        } catch (Exception e){
            log.error("建立定時任務失敗", e);
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "建立定時任務失敗");
        }
    }

    /**
     * 更新job cron表達式
     * @param quartzJob /
     */
    public void updateJobCron(QuartzJob quartzJob){
        try {
            TriggerKey triggerKey = TriggerKey.triggerKey(JOB_NAME + quartzJob.getId());
            CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);
            // 如果不存在則建立一個定時任務
            if(trigger == null){
                addJob(quartzJob);
                trigger = (CronTrigger) scheduler.getTrigger(triggerKey);
            }
            CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(quartzJob.getCronExpression());
            trigger = trigger.getTriggerBuilder().withIdentity(triggerKey).withSchedule(scheduleBuilder).build();
            //重置啟動時間
            ((CronTriggerImpl)trigger).setStartTime(new Date());
            trigger.getJobDataMap().put(QuartzJob.JOB_KEY,quartzJob);

            scheduler.rescheduleJob(triggerKey, trigger);
            // 暫停任務
            if (quartzJob.getIsPause()) {
                pauseJob(quartzJob);
            }
        } catch (Exception e){
            log.error("更新定時任務失敗", e);
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "更新定時任務失敗");
        }

    }

    /**
     * 刪除一個job
     * @param quartzJob /
     */
    public void deleteJob(QuartzJob quartzJob){
        try {
            JobKey jobKey = JobKey.jobKey(JOB_NAME + quartzJob.getId());
            scheduler.pauseJob(jobKey);
            scheduler.deleteJob(jobKey);
        } catch (Exception e){
            log.error("刪除定時任務失敗", e);
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "刪除定時任務失敗");
        }
    }

    /**
     * 恢復一個job
     * @param quartzJob /
     */
    public void resumeJob(QuartzJob quartzJob){
        try {
            TriggerKey triggerKey = TriggerKey.triggerKey(JOB_NAME + quartzJob.getId());
            CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);
            // 如果不存在則建立一個定時任務
            if(trigger == null) {
                addJob(quartzJob);
            }
            JobKey jobKey = JobKey.jobKey(JOB_NAME + quartzJob.getId());
            scheduler.resumeJob(jobKey);
        } catch (Exception e){
            log.error("恢復定時任務失敗", e);
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "恢復定時任務失敗");
        }
    }

    /**
     * 立即執行job
     * @param quartzJob /
     */
    public void runJobNow(QuartzJob quartzJob){
        try {
            TriggerKey triggerKey = TriggerKey.triggerKey(JOB_NAME + quartzJob.getId());
            CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);
            // 如果不存在則建立一個定時任務
            if(trigger == null) {
                addJob(quartzJob);
            }
            JobDataMap dataMap = new JobDataMap();
            dataMap.put(QuartzJob.JOB_KEY, quartzJob);
            JobKey jobKey = JobKey.jobKey(JOB_NAME + quartzJob.getId());
            scheduler.triggerJob(jobKey,dataMap);
        } catch (Exception e){
            log.error("定時任務執行失敗", e);
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "定時任務執行失敗");
        }
    }

    /**
     * 暫停一個job
     * @param quartzJob /
     */
    public void pauseJob(QuartzJob quartzJob){
        try {
            JobKey jobKey = JobKey.jobKey(JOB_NAME + quartzJob.getId());
            scheduler.pauseJob(jobKey);
        } catch (Exception e){
            log.error("定時任務暫停失敗", e);
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "定時任務暫停失敗");
        }
    }
}
