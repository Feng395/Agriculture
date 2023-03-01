/*
SQLyog Ultimate v10.42 
MySQL - 5.7.31-log : Database - ry
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ry` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ry`;

/*Table structure for table `agr_peasant` */

DROP TABLE IF EXISTS `agr_peasant`;

CREATE TABLE `agr_peasant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键（与业务无关）',
  `pea_id` bigint(20) NOT NULL COMMENT '户编号',
  `pea_name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `pea_card` varchar(255) NOT NULL COMMENT '证件号码',
  `pea_village` varchar(255) DEFAULT NULL COMMENT '自然村',
  `pea_year` varchar(255) DEFAULT NULL COMMENT '年度',
  `pea_relation` varchar(255) DEFAULT NULL COMMENT '与户主关系',
  `pea_reason` varchar(255) DEFAULT NULL COMMENT '致贫原因',
  `pea_health` varchar(255) DEFAULT NULL COMMENT '健康状况',
  `pea_age` int(11) DEFAULT NULL COMMENT '年龄',
  `pea_status` varchar(255) DEFAULT NULL COMMENT '在校状况',
  `pea_nation` varchar(255) DEFAULT NULL COMMENT '民族',
  `pea_tel` varchar(255) DEFAULT NULL COMMENT '户联系电话',
  `pea_time` varchar(255) DEFAULT NULL COMMENT '人员识别时间',
  `pea_ability` varchar(255) DEFAULT NULL COMMENT '劳动技能',
  `pea_education` varchar(255) DEFAULT NULL COMMENT '文化程度',
  `pea_type` varchar(255) DEFAULT NULL COMMENT '户类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `agr_peasant` */

insert  into `agr_peasant`(`id`,`pea_id`,`pea_name`,`pea_card`,`pea_village`,`pea_year`,`pea_relation`,`pea_reason`,`pea_health`,`pea_age`,`pea_status`,`pea_nation`,`pea_tel`,`pea_time`,`pea_ability`,`pea_education`,`pea_type`) values (1,3106232976,'刘洪臣','220821196805104514','后六合','2023','户主','因病','健康',55,'暂无','汉族','15943667380','2013年12月','普通劳动力','无','脱贫户'),(2,3106232976,'韩淑芝','222326196911294522','后六合','2023',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3106232997,'孙喜林','222326196008024534','六家子西','2023',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

insert  into `gen_table`(`table_id`,`table_name`,`table_comment`,`sub_table_name`,`sub_table_fk_name`,`class_name`,`tpl_category`,`package_name`,`module_name`,`business_name`,`function_name`,`function_author`,`gen_type`,`gen_path`,`options`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'stu_info','个人测试代码生成功能所创建的学生表','',NULL,'StuInfo','crud','com.ruoyi.project','student123','student','学生（测试代码生成功能）','Chen','0','/','{\"parentMenuId\":\"1062\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"测试功能\",\"treeCode\":\"\"}','admin','2023-02-24 20:27:28','','2023-02-24 20:36:29',''),(3,'agr_peasant','农户信息表','',NULL,'AgrPeasant','crud','com.ruoyi.project','agriculture','peasant_info','农户个人信息','Chen','0','/','{\"parentMenuId\":\"1062\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"测试功能\",\"treeCode\":\"\"}','admin','2023-03-01 17:05:36','','2023-03-01 19:46:54','');

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`java_type`,`java_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values (3,'2','id','自增主键（与业务无关）','bigint(20)','Long','id','1','1',NULL,NULL,NULL,NULL,NULL,'EQ','input','',1,'admin','2023-02-24 20:27:28',NULL,'2023-02-24 20:36:29'),(4,'2','stu_id','学生编号','bigint(20)','Long','stuId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2023-02-24 20:27:28',NULL,'2023-02-24 20:36:29'),(5,'2','stu_name','学生姓名','varchar(255)','String','stuName','0','0',NULL,'1','1','1','1','LIKE','input','',3,'admin','2023-02-24 20:27:28',NULL,'2023-02-24 20:36:29'),(6,'2','stu_age','学生年龄','int(11)','Long','stuAge','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2023-02-24 20:27:28',NULL,'2023-02-24 20:36:29'),(7,'2','stu_sex','学生性别（0是女  1是男）','int(11)','Long','stuSex','0','0',NULL,'1','1','1','1','EQ','select','',5,'admin','2023-02-24 20:27:28',NULL,'2023-02-24 20:36:29'),(8,'3','id','自增主键（与业务无关）','bigint(20)','Long','id','1','1',NULL,NULL,NULL,NULL,NULL,'EQ','input','',1,'admin','2023-03-01 17:05:36',NULL,'2023-03-01 19:46:54'),(9,'3','pea_id','户编号','bigint(20)','Long','peaId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2023-03-01 17:05:36',NULL,'2023-03-01 19:46:54'),(10,'3','pea_name','姓名','varchar(255)','String','peaName','0','0',NULL,'1','1','1','1','LIKE','input','',3,'admin','2023-03-01 17:05:36',NULL,'2023-03-01 19:46:54'),(11,'3','pea_card','证件号码','varchar(255)','String','peaCard','0','0','1','1','1','1','1','EQ','input','',4,'admin','2023-03-01 17:05:36',NULL,'2023-03-01 19:46:54'),(12,'3','pea_village','自然村','varchar(255)','String','peaVillage','0','0',NULL,'1','1','1',NULL,'EQ','input','',5,'admin','2023-03-01 17:05:36',NULL,'2023-03-01 19:46:54'),(13,'3','pea_year','年度','varchar(255)','String','peaYear','0','0',NULL,NULL,NULL,NULL,NULL,'EQ','input','',6,'admin','2023-03-01 17:05:36',NULL,'2023-03-01 19:46:54'),(14,'3','pea_relation','与户主关系','varchar(255)','String','peaRelation','0','0',NULL,'1','1','1','1','EQ','input','',7,'','2023-03-01 19:05:08',NULL,'2023-03-01 19:46:54'),(15,'3','pea_reason','致贫原因','varchar(255)','String','peaReason','0','0',NULL,'1','1','1',NULL,'EQ','input','',8,'','2023-03-01 19:05:08',NULL,'2023-03-01 19:46:54'),(16,'3','pea_health','健康状况','varchar(255)','String','peaHealth','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',9,'','2023-03-01 19:05:08',NULL,'2023-03-01 19:46:54'),(17,'3','pea_age','年龄','int(11)','Long','peaAge','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',10,'','2023-03-01 19:05:08',NULL,'2023-03-01 19:46:54'),(18,'3','pea_status','在校状况','varchar(255)','String','peaStatus','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',11,'','2023-03-01 19:05:08',NULL,'2023-03-01 19:46:54'),(19,'3','pea_nation','民族','varchar(255)','String','peaNation','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',12,'','2023-03-01 19:05:08',NULL,'2023-03-01 19:46:54'),(20,'3','pea_tel','户联系电话','varchar(255)','String','peaTel','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',13,'','2023-03-01 19:05:08',NULL,'2023-03-01 19:46:54'),(21,'3','pea_time','人员识别时间','varchar(255)','String','peaTime','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',14,'','2023-03-01 19:05:08',NULL,'2023-03-01 19:46:54'),(22,'3','pea_ability','劳动技能','varchar(255)','String','peaAbility','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',15,'','2023-03-01 19:05:08',NULL,'2023-03-01 19:46:54'),(23,'3','pea_education','文化程度','varchar(255)','String','peaEducation','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',16,'','2023-03-01 19:05:08',NULL,'2023-03-01 19:46:54'),(24,'3','pea_type','户类型','varchar(255)','String','peaType','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',17,'','2023-03-01 19:10:27',NULL,'2023-03-01 19:46:54');

/*Table structure for table `qrtz_blob_triggers` */

DROP TABLE IF EXISTS `qrtz_blob_triggers`;

CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blob类型的触发器表';

/*Data for the table `qrtz_blob_triggers` */

/*Table structure for table `qrtz_calendars` */

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历信息表';

/*Data for the table `qrtz_calendars` */

/*Table structure for table `qrtz_cron_triggers` */

DROP TABLE IF EXISTS `qrtz_cron_triggers`;

CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron类型的触发器表';

/*Data for the table `qrtz_cron_triggers` */

insert  into `qrtz_cron_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`cron_expression`,`time_zone_id`) values ('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');

/*Table structure for table `qrtz_fired_triggers` */

DROP TABLE IF EXISTS `qrtz_fired_triggers`;

CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已触发的触发器表';

/*Data for the table `qrtz_fired_triggers` */

/*Table structure for table `qrtz_job_details` */

DROP TABLE IF EXISTS `qrtz_job_details`;

CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务详细信息表';

/*Data for the table `qrtz_job_details` */

insert  into `qrtz_job_details`(`sched_name`,`job_name`,`job_group`,`description`,`job_class_name`,`is_durable`,`is_nonconcurrent`,`is_update_data`,`requests_recovery`,`job_data`) values ('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0(com.ruoyi.project.monitor.job.domain.Job\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0�|k<@xpt\0\0pppt\01t\00/15 * * * * ?t\0ryTask.ryParams(\'ry\')t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（有参）t\03t\01x\0'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution','0','1','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0TASK_PROPERTIESsr\0(com.ruoyi.project.monitor.job.domain.Job\0\0\0\0\0\0\0\0L\0\nconcurrentt\0Ljava/lang/String;L\0cronExpressionq\0~\0	L\0invokeTargetq\0~\0	L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\rmisfirePolicyq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0paramsq\0~\0L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0�|k<@xpt\0\0pppt\01t\00/20 * * * * ?t\08ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)t\0DEFAULTsr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0系统默认（多参）t\03t\01x\0');

/*Table structure for table `qrtz_locks` */

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储的悲观锁信息表';

/*Data for the table `qrtz_locks` */

insert  into `qrtz_locks`(`sched_name`,`lock_name`) values ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');

/*Table structure for table `qrtz_paused_trigger_grps` */

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂停的触发器表';

/*Data for the table `qrtz_paused_trigger_grps` */

/*Table structure for table `qrtz_scheduler_state` */

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度器状态表';

/*Data for the table `qrtz_scheduler_state` */

insert  into `qrtz_scheduler_state`(`sched_name`,`instance_name`,`last_checkin_time`,`checkin_interval`) values ('RuoyiScheduler','chen1677230447764',1677230495250,15000);

/*Table structure for table `qrtz_simple_triggers` */

DROP TABLE IF EXISTS `qrtz_simple_triggers`;

CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单触发器的信息表';

/*Data for the table `qrtz_simple_triggers` */

/*Table structure for table `qrtz_simprop_triggers` */

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;

CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='同步机制的行锁表';

/*Data for the table `qrtz_simprop_triggers` */

/*Table structure for table `qrtz_triggers` */

DROP TABLE IF EXISTS `qrtz_triggers`;

CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器详细信息表';

/*Data for the table `qrtz_triggers` */

insert  into `qrtz_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`job_name`,`job_group`,`description`,`next_fire_time`,`prev_fire_time`,`priority`,`trigger_state`,`trigger_type`,`start_time`,`end_time`,`calendar_name`,`misfire_instr`,`job_data`) values ('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1677230460000,-1,5,'PAUSED','CRON',1677230447000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1677230460000,-1,5,'PAUSED','CRON',1677230447000,0,NULL,2,'');

/*Table structure for table `stu_info` */

DROP TABLE IF EXISTS `stu_info`;

CREATE TABLE `stu_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键（与业务无关）',
  `stu_id` bigint(20) NOT NULL COMMENT '学生编号',
  `stu_name` varchar(255) DEFAULT NULL COMMENT '学生姓名',
  `stu_age` int(11) DEFAULT NULL COMMENT '学生年龄',
  `stu_sex` int(11) DEFAULT NULL COMMENT '学生性别（0是女  1是男）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `stu_info` */

insert  into `stu_info`(`id`,`stu_id`,`stu_name`,`stu_age`,`stu_sex`) values (1,1,'陈修昊',20,NULL),(2,2,'陈浩',12,NULL);

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2023-02-23 11:57:28','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2023-02-23 11:57:28','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2023-02-23 11:57:28','',NULL,'深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue'),(4,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2023-02-23 11:57:28','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(5,'用户管理-密码字符范围','sys.account.chrtype','0','Y','admin','2023-02-23 11:57:28','',NULL,'默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）'),(6,'用户管理-初始密码修改策略','sys.account.initPasswordModify','0','Y','admin','2023-02-23 11:57:28','',NULL,'0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),(7,'用户管理-账号密码更新周期','sys.account.passwordValidateDays','0','Y','admin','2023-02-23 11:57:28','',NULL,'密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框'),(8,'主框架页-菜单导航显示风格','sys.index.menuStyle','default','Y','admin','2023-02-23 11:57:28','',NULL,'菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）'),(9,'主框架页-是否开启页脚','sys.index.footer','true','Y','admin','2023-02-23 11:57:28','admin','2023-02-24 19:19:19','是否开启底部页脚显示（true显示，false隐藏）'),(10,'主框架页-是否开启页签','sys.index.tagsView','true','Y','admin','2023-02-23 11:57:28','admin','2023-02-24 19:18:11','是否开启菜单多页签显示（true显示，false隐藏）'),(11,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2023-02-23 11:57:28','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2023-02-23 11:57:27','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-02-23 11:57:27','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','2','admin','2023-02-23 11:57:27','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-02-23 11:57:27','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2023-02-23 11:57:27','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','2','admin','2023-02-23 11:57:27','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','2','admin','2023-02-23 11:57:27','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','2','admin','2023-02-23 11:57:27','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','2','admin','2023-02-23 11:57:27','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2023-02-23 11:57:27','',NULL);

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,1,'男','0','sys_user_sex','','','Y','0','admin','2023-02-23 11:57:28','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2023-02-23 11:57:28','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2023-02-23 11:57:28','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2023-02-23 11:57:28','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2023-02-23 11:57:28','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2023-02-23 11:57:28','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2023-02-23 11:57:28','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2023-02-23 11:57:28','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2023-02-23 11:57:28','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2023-02-23 11:57:28','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2023-02-23 11:57:28','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2023-02-23 11:57:28','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2023-02-23 11:57:28','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2023-02-23 11:57:28','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2023-02-23 11:57:28','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2023-02-23 11:57:28','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2023-02-23 11:57:28','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2023-02-23 11:57:28','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2023-02-23 11:57:28','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2023-02-23 11:57:28','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2023-02-23 11:57:28','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2023-02-23 11:57:28','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2023-02-23 11:57:28','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2023-02-23 11:57:28','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2023-02-23 11:57:28','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2023-02-23 11:57:28','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2023-02-23 11:57:28','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2023-02-23 11:57:28','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2023-02-23 11:57:28','',NULL,'停用状态');

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'用户性别','sys_user_sex','0','admin','2023-02-23 11:57:28','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2023-02-23 11:57:28','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2023-02-23 11:57:28','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2023-02-23 11:57:28','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2023-02-23 11:57:28','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2023-02-23 11:57:28','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2023-02-23 11:57:28','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2023-02-23 11:57:28','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2023-02-23 11:57:28','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2023-02-23 11:57:28','',NULL,'登录状态列表');

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2023-02-23 11:57:28','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2023-02-23 11:57:28','',NULL,'');

/*Table structure for table `sys_job_log` */

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`login_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values (100,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-23 11:58:00'),(101,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-23 11:59:29'),(102,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-23 12:01:55'),(103,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-23 12:03:40'),(104,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-02-23 12:08:02'),(105,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-02-23 12:08:03'),(106,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-02-23 12:10:06'),(107,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-02-23 12:11:25'),(108,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-23 12:11:56'),(109,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 17:21:00'),(110,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 18:40:36'),(111,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 18:42:05'),(112,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 18:45:15'),(113,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 18:47:27'),(114,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 18:49:12'),(115,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 19:16:10'),(116,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 19:24:27'),(117,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 19:25:15'),(118,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 19:34:41'),(119,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 19:40:15'),(120,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 19:41:23'),(121,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 19:44:47'),(122,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-02-24 19:48:54'),(123,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 19:48:57'),(124,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 19:52:00'),(125,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 19:55:25'),(126,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 20:00:51'),(127,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 20:04:05'),(128,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 20:07:51'),(129,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 20:17:53'),(130,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 20:18:57'),(131,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 20:38:58'),(132,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 20:57:49'),(133,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-24 21:00:08'),(134,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-25 10:50:52'),(135,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-25 10:53:09'),(136,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-25 11:40:56'),(137,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-28 19:50:26'),(138,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-28 20:02:14'),(139,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-02-28 20:30:22'),(140,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 10:26:57'),(141,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 10:37:55'),(142,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 10:40:20'),(143,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 10:43:17'),(144,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 10:44:12'),(145,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 10:44:49'),(146,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 10:53:34'),(147,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 11:03:47'),(148,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 11:04:50'),(149,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 11:05:28'),(150,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 11:22:30'),(151,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 11:40:27'),(152,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 16:21:08'),(153,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 16:29:25'),(154,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 16:46:55'),(155,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 16:49:09'),(156,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 16:53:19'),(157,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 16:56:19'),(158,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 16:57:44'),(159,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 17:02:29'),(160,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 17:03:34'),(161,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 17:18:25'),(162,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 17:19:37'),(163,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 17:33:35'),(164,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 18:02:46'),(165,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 18:52:34'),(166,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 18:54:31'),(167,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 18:56:32'),(168,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 18:58:36'),(169,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 19:01:44'),(170,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 19:02:42'),(171,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 19:10:21'),(172,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 19:23:55'),(173,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 19:26:58'),(174,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 19:27:14'),(175,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 19:32:46'),(176,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 19:37:48'),(177,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 19:41:09'),(178,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 19:53:44'),(179,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 19:56:05'),(180,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-01 20:03:04'),(181,'chen','127.0.0.1','内网IP','Chrome 11','Windows 10','1','密码输入错误1次','2023-03-01 20:03:09'),(182,'chen','127.0.0.1','内网IP','Chrome 11','Windows 10','1','密码输入错误2次','2023-03-01 20:03:10'),(183,'chen','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 20:03:16'),(184,'chen','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-01 20:03:37'),(185,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 20:03:38'),(186,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-01 20:03:40'),(187,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 20:03:42'),(188,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-01 20:06:23'),(189,'chen','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 20:06:32'),(190,'chen','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-03-01 20:07:17'),(191,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-03-01 20:07:18');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1077 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`url`,`target`,`menu_type`,`visible`,`is_refresh`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'系统管理',0,7,'#','','M','0','1','','fa fa-gear','admin','2023-02-23 11:57:27','',NULL,'系统管理目录'),(2,'系统监控',0,8,'#','','M','0','1','','fa fa-video-camera','admin','2023-02-23 11:57:27','',NULL,'系统监控目录'),(3,'系统工具',0,9,'#','','M','0','1','','fa fa-bars','admin','2023-02-23 11:57:27','',NULL,'系统工具目录'),(4,'若依官网',0,10,'http://ruoyi.vip','menuBlank','C','0','1','','fa fa-location-arrow','admin','2023-02-23 11:57:27','',NULL,'若依官网地址'),(5,'农户收入信息管理',0,1,'#','menuItem','C','0','1','','#','Chen','2023-03-01 16:34:18','admin','2023-03-01 17:00:41','农户收入信息管理目录'),(6,'收入信息常用功能',0,2,'#','','C','0','1',NULL,'#','Chen','2023-03-01 16:34:21','',NULL,'收入信息常用功能目录'),(7,'年度人均收入对比',0,3,'#','','C','0','1',NULL,'#','Chen','2023-03-01 16:34:22','',NULL,'年度人均收入对比目录'),(8,'年度一览表生成',0,4,'#','','C','0','1',NULL,'#','Chen','2023-03-01 16:34:24','',NULL,'年度一览表生成目录'),(9,'农户管理',0,5,'agriculture/peasant_info','menuItem','C','0','1','','#','Chen','2023-03-01 18:55:53','admin','2023-03-01 19:28:22','农户管理目录'),(10,'字典管理',0,6,'/system/dict','menuItem','C','0','1','system:dict:view','#','admin','2023-02-23 11:57:27','admin','2023-03-01 16:59:36','字典管理菜单'),(100,'用户管理',1,1,'/system/user','menuItem','C','0','1','system:user:view','#','admin','2023-02-23 11:57:27','admin','2023-03-01 16:59:25','用户管理菜单'),(101,'角色管理',1,2,'/system/role','','C','0','1','system:role:view','fa fa-user-secret','admin','2023-02-23 11:57:27','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','1','system:menu:view','fa fa-th-list','admin','2023-02-23 11:57:27','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','','C','0','1','system:dept:view','fa fa-outdent','admin','2023-02-23 11:57:27','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'/system/post','','C','0','1','system:post:view','fa fa-address-card-o','admin','2023-02-23 11:57:27','',NULL,'岗位管理菜单'),(106,'参数设置',1,7,'/system/config','','C','0','1','system:config:view','fa fa-sun-o','admin','2023-02-23 11:57:27','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'/system/notice','','C','0','1','system:notice:view','fa fa-bullhorn','admin','2023-02-23 11:57:27','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','1','','fa fa-pencil-square-o','admin','2023-02-23 11:57:27','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','1','monitor:online:view','fa fa-user-circle','admin','2023-02-23 11:57:27','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','0','1','monitor:job:view','fa fa-tasks','admin','2023-02-23 11:57:27','',NULL,'定时任务菜单'),(111,'Druid内置数据监控后台',2,3,'/monitor/data','menuItem','C','0','1','monitor:data:view','fa fa-bug','admin','2023-02-23 11:57:27','admin','2023-02-25 11:42:15','数据监控菜单'),(112,'服务监控',2,4,'/monitor/server','','C','0','1','monitor:server:view','fa fa-server','admin','2023-02-23 11:57:27','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'/monitor/cache','','C','0','1','monitor:cache:view','fa fa-cube','admin','2023-02-23 11:57:27','',NULL,'缓存监控菜单'),(114,'表单构建',3,1,'/tool/build','','C','0','1','tool:build:view','fa fa-wpforms','admin','2023-02-23 11:57:27','',NULL,'表单构建菜单'),(115,'代码生成',3,2,'/tool/gen','','C','0','1','tool:gen:view','fa fa-code','admin','2023-02-23 11:57:27','',NULL,'代码生成菜单'),(116,'Swagger系统接口',3,3,'/tool/swagger','menuItem','C','0','1','tool:swagger:view','fa fa-gg','admin','2023-02-23 11:57:27','admin','2023-02-28 19:51:32','系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','1','monitor:operlog:view','fa fa-address-book','admin','2023-02-23 11:57:27','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','1','monitor:logininfor:view','fa fa-file-image-o','admin','2023-02-23 11:57:27','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'#','menuItem','F','0','1','system:user:list','#','admin','2023-02-23 11:57:27','admin','2023-03-01 19:25:38',''),(1001,'用户新增',100,2,'#','menuItem','F','0','1','system:user:add','#','admin','2023-02-23 11:57:27','admin','2023-03-01 19:25:51',''),(1002,'用户修改',100,3,'#','menuItem','F','0','1','system:user:edit','#','admin','2023-02-23 11:57:27','admin','2023-03-01 19:26:07',''),(1003,'用户删除',100,4,'#','menuItem','F','0','1','system:user:remove','#','admin','2023-02-23 11:57:27','admin','2023-03-01 19:26:30',''),(1004,'用户导出',100,5,'#','menuItem','F','0','1','system:user:export','#','admin','2023-02-23 11:57:27','admin','2023-03-01 19:25:06',''),(1005,'用户导入',100,6,'#','menuItem','F','0','1','system:user:import','#','admin','2023-02-23 11:57:27','admin','2023-03-01 19:26:46',''),(1006,'重置密码',100,7,'#','menuItem','F','0','1','system:user:resetPwd','#','admin','2023-02-23 11:57:27','admin','2023-03-01 19:27:34',''),(1007,'角色查询',101,1,'#','','F','0','1','system:role:list','#','admin','2023-02-23 11:57:27','',NULL,''),(1008,'角色新增',101,2,'#','','F','0','1','system:role:add','#','admin','2023-02-23 11:57:27','',NULL,''),(1009,'角色修改',101,3,'#','','F','0','1','system:role:edit','#','admin','2023-02-23 11:57:27','',NULL,''),(1010,'角色删除',101,4,'#','','F','0','1','system:role:remove','#','admin','2023-02-23 11:57:27','',NULL,''),(1011,'角色导出',101,5,'#','','F','0','1','system:role:export','#','admin','2023-02-23 11:57:27','',NULL,''),(1012,'菜单查询',102,1,'#','','F','0','1','system:menu:list','#','admin','2023-02-23 11:57:27','',NULL,''),(1013,'菜单新增',102,2,'#','','F','0','1','system:menu:add','#','admin','2023-02-23 11:57:27','',NULL,''),(1014,'菜单修改',102,3,'#','','F','0','1','system:menu:edit','#','admin','2023-02-23 11:57:27','',NULL,''),(1015,'菜单删除',102,4,'#','','F','0','1','system:menu:remove','#','admin','2023-02-23 11:57:27','',NULL,''),(1016,'部门查询',103,1,'#','','F','0','1','system:dept:list','#','admin','2023-02-23 11:57:27','',NULL,''),(1017,'部门新增',103,2,'#','','F','0','1','system:dept:add','#','admin','2023-02-23 11:57:27','',NULL,''),(1018,'部门修改',103,3,'#','','F','0','1','system:dept:edit','#','admin','2023-02-23 11:57:27','',NULL,''),(1019,'部门删除',103,4,'#','','F','0','1','system:dept:remove','#','admin','2023-02-23 11:57:27','',NULL,''),(1020,'岗位查询',104,1,'#','','F','0','1','system:post:list','#','admin','2023-02-23 11:57:27','',NULL,''),(1021,'岗位新增',104,2,'#','','F','0','1','system:post:add','#','admin','2023-02-23 11:57:27','',NULL,''),(1022,'岗位修改',104,3,'#','','F','0','1','system:post:edit','#','admin','2023-02-23 11:57:27','',NULL,''),(1023,'岗位删除',104,4,'#','','F','0','1','system:post:remove','#','admin','2023-02-23 11:57:27','',NULL,''),(1024,'岗位导出',104,5,'#','','F','0','1','system:post:export','#','admin','2023-02-23 11:57:27','',NULL,''),(1025,'字典查询',10,1,'#','','F','0','1','system:dict:list','#','admin','2023-02-23 11:57:27','',NULL,''),(1026,'字典新增',10,2,'#','','F','0','1','system:dict:add','#','admin','2023-02-23 11:57:27','',NULL,''),(1027,'字典修改',10,3,'#','','F','0','1','system:dict:edit','#','admin','2023-02-23 11:57:27','',NULL,''),(1028,'字典删除',10,4,'#','','F','0','1','system:dict:remove','#','admin','2023-02-23 11:57:27','',NULL,''),(1029,'字典导出',10,5,'#','','F','0','1','system:dict:export','#','admin','2023-02-23 11:57:27','',NULL,''),(1030,'参数查询',106,1,'#','','F','0','1','system:config:list','#','admin','2023-02-23 11:57:27','',NULL,''),(1031,'参数新增',106,2,'#','','F','0','1','system:config:add','#','admin','2023-02-23 11:57:27','',NULL,''),(1032,'参数修改',106,3,'#','','F','0','1','system:config:edit','#','admin','2023-02-23 11:57:27','',NULL,''),(1033,'参数删除',106,4,'#','','F','0','1','system:config:remove','#','admin','2023-02-23 11:57:27','',NULL,''),(1034,'参数导出',106,5,'#','','F','0','1','system:config:export','#','admin','2023-02-23 11:57:27','',NULL,''),(1035,'公告查询',107,1,'#','','F','0','1','system:notice:list','#','admin','2023-02-23 11:57:28','',NULL,''),(1036,'公告新增',107,2,'#','','F','0','1','system:notice:add','#','admin','2023-02-23 11:57:28','',NULL,''),(1037,'公告修改',107,3,'#','','F','0','1','system:notice:edit','#','admin','2023-02-23 11:57:28','',NULL,''),(1038,'公告删除',107,4,'#','','F','0','1','system:notice:remove','#','admin','2023-02-23 11:57:28','',NULL,''),(1039,'操作查询',500,1,'#','','F','0','1','monitor:operlog:list','#','admin','2023-02-23 11:57:28','',NULL,''),(1040,'操作删除',500,2,'#','','F','0','1','monitor:operlog:remove','#','admin','2023-02-23 11:57:28','',NULL,''),(1041,'详细信息',500,3,'#','','F','0','1','monitor:operlog:detail','#','admin','2023-02-23 11:57:28','',NULL,''),(1042,'日志导出',500,4,'#','','F','0','1','monitor:operlog:export','#','admin','2023-02-23 11:57:28','',NULL,''),(1043,'登录查询',501,1,'#','','F','0','1','monitor:logininfor:list','#','admin','2023-02-23 11:57:28','',NULL,''),(1044,'登录删除',501,2,'#','','F','0','1','monitor:logininfor:remove','#','admin','2023-02-23 11:57:28','',NULL,''),(1045,'日志导出',501,3,'#','','F','0','1','monitor:logininfor:export','#','admin','2023-02-23 11:57:28','',NULL,''),(1046,'账户解锁',501,4,'#','','F','0','1','monitor:logininfor:unlock','#','admin','2023-02-23 11:57:28','',NULL,''),(1047,'在线查询',109,1,'#','','F','0','1','monitor:online:list','#','admin','2023-02-23 11:57:28','',NULL,''),(1048,'批量强退',109,2,'#','','F','0','1','monitor:online:batchForceLogout','#','admin','2023-02-23 11:57:28','',NULL,''),(1049,'单条强退',109,3,'#','','F','0','1','monitor:online:forceLogout','#','admin','2023-02-23 11:57:28','',NULL,''),(1050,'任务查询',110,1,'#','','F','0','1','monitor:job:list','#','admin','2023-02-23 11:57:28','',NULL,''),(1051,'任务新增',110,2,'#','','F','0','1','monitor:job:add','#','admin','2023-02-23 11:57:28','',NULL,''),(1052,'任务修改',110,3,'#','','F','0','1','monitor:job:edit','#','admin','2023-02-23 11:57:28','',NULL,''),(1053,'任务删除',110,4,'#','','F','0','1','monitor:job:remove','#','admin','2023-02-23 11:57:28','',NULL,''),(1054,'状态修改',110,5,'#','','F','0','1','monitor:job:changeStatus','#','admin','2023-02-23 11:57:28','',NULL,''),(1055,'任务详细',110,6,'#','','F','0','1','monitor:job:detail','#','admin','2023-02-23 11:57:28','',NULL,''),(1056,'任务导出',110,7,'#','','F','0','1','monitor:job:export','#','admin','2023-02-23 11:57:28','',NULL,''),(1057,'生成查询',115,1,'#','','F','0','1','tool:gen:list','#','admin','2023-02-23 11:57:28','',NULL,''),(1058,'生成修改',115,2,'#','','F','0','1','tool:gen:edit','#','admin','2023-02-23 11:57:28','',NULL,''),(1059,'生成删除',115,3,'#','','F','0','1','tool:gen:remove','#','admin','2023-02-23 11:57:28','',NULL,''),(1060,'预览代码',115,4,'#','','F','0','1','tool:gen:preview','#','admin','2023-02-23 11:57:28','',NULL,''),(1061,'生成代码',115,5,'#','','F','0','1','tool:gen:code','#','admin','2023-02-23 11:57:28','',NULL,''),(1062,'测试功能',0,0,'#','menuItem','M','0','1',NULL,'fa fa-window-maximize','admin','2023-02-24 20:30:38','',NULL,''),(1063,'学生管理',1062,1,'/student123/student','menuItem','C','0','1','student123:student:view','fa fa-mortar-board','admin','2023-02-24 20:43:39','',NULL,''),(1064,'学生修改',1063,1,'#','menuItem','F','0','1','student123:student:edit','#','admin','2023-02-24 20:45:14','',NULL,''),(1065,'学生查询',1063,0,'#','menuItem','F','0','1','student123:student:list','#','admin','2023-02-24 20:47:32','',NULL,''),(1072,'农户个人信息查询',9,1,'#','','F','0','1','agriculture:peasant_info:list','#','admin','2023-03-01 19:21:28','',NULL,''),(1073,'农户个人信息新增',9,2,'#','','F','0','1','agriculture:peasant_info:add','#','admin','2023-03-01 19:21:28','',NULL,''),(1074,'农户个人信息修改',9,3,'#','','F','0','1','agriculture:peasant_info:edit','#','admin','2023-03-01 19:21:28','',NULL,''),(1075,'农户个人信息删除',9,4,'#','','F','0','1','agriculture:peasant_info:remove','#','admin','2023-03-01 19:21:28','',NULL,''),(1076,'农户个人信息导出',9,5,'#','','F','0','1','agriculture:peasant_info:export','#','admin','2023-03-01 19:21:28','',NULL,'');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知公告表';

/*Data for the table `sys_notice` */

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

insert  into `sys_oper_log`(`oper_id`,`title`,`business_type`,`method`,`request_method`,`operator_type`,`oper_name`,`dept_name`,`oper_url`,`oper_ip`,`oper_location`,`oper_param`,`json_result`,`status`,`error_msg`,`oper_time`,`cost_time`) values (100,'角色管理',2,'com.ruoyi.project.system.role.controller.RoleController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116,4\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:15:09',65),(101,'角色管理',2,'com.ruoyi.project.system.role.controller.RoleController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通k\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116,4\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:15:25',19),(102,'用户管理',2,'com.ruoyi.project.system.user.controller.UserController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/user/edit','127.0.0.1','内网IP','{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"1\"],\"dept.deptName\":[\"测试部门\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:16:26',11),(103,'部门管理',3,'com.ruoyi.project.system.dept.controller.DeptController.remove()','GET',1,'admin','研发部门','/RuoYi-fast/system/dept/remove/109','127.0.0.1','内网IP','109','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:17:12',7),(104,'部门管理',3,'com.ruoyi.project.system.dept.controller.DeptController.remove()','GET',1,'admin','研发部门','/RuoYi-fast/system/dept/remove/108','127.0.0.1','内网IP','108','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:17:16',5),(105,'部门管理',3,'com.ruoyi.project.system.dept.controller.DeptController.remove()','GET',1,'admin','研发部门','/RuoYi-fast/system/dept/remove/102','127.0.0.1','内网IP','102','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:17:19',6),(106,'部门管理',3,'com.ruoyi.project.system.dept.controller.DeptController.remove()','GET',1,'admin','研发部门','/RuoYi-fast/system/dept/remove/107','127.0.0.1','内网IP','107','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:17:22',5),(107,'用户管理',2,'com.ruoyi.project.system.user.controller.UserController.changeStatus()','POST',1,'admin','研发部门','/RuoYi-fast/system/user/changeStatus','127.0.0.1','内网IP','{\"userId\":[\"1\"],\"status\":[\"1\"]}',NULL,1,'不允许操作超级管理员用户','2023-02-23 12:18:42',0),(108,'用户管理',3,'com.ruoyi.project.system.user.controller.UserController.remove()','POST',1,'admin','研发部门','/RuoYi-fast/system/user/remove','127.0.0.1','内网IP','{\"ids\":[\"2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:18:50',8),(109,'在线用户',7,'com.ruoyi.project.monitor.online.controller.UserOnlineController.batchForceLogout()','POST',1,'admin','研发部门','/RuoYi-fast/monitor/online/batchForceLogout','127.0.0.1','内网IP','{\"ids\":[\"dc693a49-c238-49f4-9959-5fb1995e22b8\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:19:50',9),(110,'定时任务',3,'com.ruoyi.project.monitor.job.controller.JobController.remove()','POST',1,'admin','研发部门','/RuoYi-fast/monitor/job/remove','127.0.0.1','内网IP','{\"ids\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:20:08',7),(111,'代码生成',6,'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"sys_user_role\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:20:48',20),(112,'参数管理',2,'com.ruoyi.project.system.config.controller.ConfigController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/config/edit','127.0.0.1','内网IP','{\"configId\":[\"9\"],\"configName\":[\"主框架页-是否开启页脚\"],\"configKey\":[\"sys.index.footer\"],\"configValue\":[\"false\"],\"configType\":[\"Y\"],\"remark\":[\"是否开启底部页脚显示（true显示，false隐藏）\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:22:11',7),(113,'参数管理',2,'com.ruoyi.project.system.config.controller.ConfigController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/config/edit','127.0.0.1','内网IP','{\"configId\":[\"10\"],\"configName\":[\"主框架页-是否开启页签\"],\"configKey\":[\"sys.index.tagsView\"],\"configValue\":[\"false\"],\"configType\":[\"Y\"],\"remark\":[\"是否开启菜单多页签显示（true显示，false隐藏）\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:22:35',17),(114,'部门管理',3,'com.ruoyi.project.system.dept.controller.DeptController.remove()','GET',1,'admin','研发部门','/RuoYi-fast/system/dept/remove/106','127.0.0.1','内网IP','106','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:23:02',6),(115,'部门管理',3,'com.ruoyi.project.system.dept.controller.DeptController.remove()','GET',1,'admin','研发部门','/RuoYi-fast/system/dept/remove/105','127.0.0.1','内网IP','105','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:23:08',5),(116,'部门管理',3,'com.ruoyi.project.system.dept.controller.DeptController.remove()','GET',1,'admin','研发部门','/RuoYi-fast/system/dept/remove/104','127.0.0.1','内网IP','104','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:23:10',7),(117,'部门管理',3,'com.ruoyi.project.system.dept.controller.DeptController.remove()','GET',1,'admin','研发部门','/RuoYi-fast/system/dept/remove/103','127.0.0.1','内网IP','103','{\"msg\":\"部门存在用户,不允许删除\",\"code\":301}',0,NULL,'2023-02-23 12:23:13',3),(118,'通知公告',2,'com.ruoyi.project.system.notice.controller.NoticeController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/notice/edit','127.0.0.1','内网IP','{\"noticeId\":[\"2\"],\"noticeTitle\":[\"维护通知：2018-07-01 若依系统凌晨维护\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"维护内容\"],\"status\":[\"0\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:24:59',3),(119,'通知公告',3,'com.ruoyi.project.system.notice.controller.NoticeController.remove()','POST',1,'admin','研发部门','/RuoYi-fast/system/notice/remove','127.0.0.1','内网IP','{\"ids\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:25:18',3),(120,'通知公告',3,'com.ruoyi.project.system.notice.controller.NoticeController.remove()','POST',1,'admin','研发部门','/RuoYi-fast/system/notice/remove','127.0.0.1','内网IP','{\"ids\":[\"2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:25:22',3),(121,'岗位管理',3,'com.ruoyi.project.system.post.controller.PostController.remove()','POST',1,'admin','研发部门','/RuoYi-fast/system/post/remove','127.0.0.1','内网IP','{\"ids\":[\"2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:25:50',4),(122,'岗位管理',3,'com.ruoyi.project.system.post.controller.PostController.remove()','POST',1,'admin','研发部门','/RuoYi-fast/system/post/remove','127.0.0.1','内网IP','{\"ids\":[\"3\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-23 12:25:53',4),(123,'参数管理',3,'com.ruoyi.project.system.config.controller.ConfigController.remove()','POST',1,'admin','研发部门','/RuoYi-fast/system/config/remove','127.0.0.1','内网IP','{\"ids\":[\"3\"]}',NULL,1,'内置参数【sys.index.sideTheme】不能删除 ','2023-02-24 19:17:57',48),(124,'参数管理',2,'com.ruoyi.project.system.config.controller.ConfigController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/config/edit','127.0.0.1','内网IP','{\"configId\":[\"10\"],\"configName\":[\"主框架页-是否开启页签\"],\"configKey\":[\"sys.index.tagsView\"],\"configValue\":[\"true\"],\"configType\":[\"Y\"],\"remark\":[\"是否开启菜单多页签显示（true显示，false隐藏）\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 19:18:11',10),(125,'参数管理',2,'com.ruoyi.project.system.config.controller.ConfigController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/config/edit','127.0.0.1','内网IP','{\"configId\":[\"9\"],\"configName\":[\"主框架页-是否开启页脚\"],\"configKey\":[\"sys.index.footer\"],\"configValue\":[\"true\"],\"configType\":[\"Y\"],\"remark\":[\"是否开启底部页脚显示（true显示，false隐藏）\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 19:19:19',9),(126,'菜单管理',3,'com.ruoyi.project.system.menu.controller.MenuController.remove()','GET',1,'admin','研发部门','/RuoYi-fast/system/menu/remove/4','127.0.0.1','内网IP','4','{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}',0,NULL,'2023-02-24 20:04:15',46),(127,'代码生成',3,'com.ruoyi.project.tool.gen.controller.GenController.remove()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/remove','127.0.0.1','内网IP','{\"ids\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:26:56',50),(128,'代码生成',6,'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"stu_info\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:27:28',35),(129,'菜单管理',1,'com.ruoyi.project.system.menu.controller.MenuController.addSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"测试功能\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"fa fa-window-maximize\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:30:38',9),(130,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"2\"],\"tableName\":[\"stu_info\"],\"tableComment\":[\"个人测试代码生成功能所创建的学生表\"],\"className\":[\"StuInfo\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"3\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"4\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学生编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"stuId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"5\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"6\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"学生年龄\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"stuAge\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"7\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学生性别（0是女  1是男）\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"stuSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project\"],\"moduleName\":[\"student\"],\"businessName\":[\"student_service\"],\"functionName\":[\"学生（测试代码生成功能）\"],\"params[parentMenuI','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:34:49',17),(131,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"2\"],\"tableName\":[\"stu_info\"],\"tableComment\":[\"个人测试代码生成功能所创建的学生表\"],\"className\":[\"StuInfo\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"3\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"4\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学生编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"stuId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"5\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"6\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"学生年龄\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"stuAge\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"7\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学生性别（0是女  1是男）\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"stuSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project\"],\"moduleName\":[\"student123\"],\"businessName\":[\"student\"],\"functionName\":[\"学生（测试代码生成功能）\"],\"params[parentMenuId]\":[','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:36:00',10),(132,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"2\"],\"tableName\":[\"stu_info\"],\"tableComment\":[\"个人测试代码生成功能所创建的学生表\"],\"className\":[\"StuInfo\"],\"functionAuthor\":[\"Chen\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"3\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"4\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学生编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"stuId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"5\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"stuName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"6\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"学生年龄\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"stuAge\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"7\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"学生性别（0是女  1是男）\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"stuSex\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project\"],\"moduleName\":[\"student123\"],\"businessName\":[\"student\"],\"functionName\":[\"学生（测试代码生成功能）\"],\"params[parentMenuId]\":[\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:36:29',10),(133,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/RuoYi-fast/tool/gen/download/stu_info','127.0.0.1','内网IP','\"stu_info\"',NULL,0,NULL,'2023-02-24 20:37:05',32),(134,'菜单管理',1,'com.ruoyi.project.system.menu.controller.MenuController.addSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"学生管理\"],\"url\":[\"/student123/student\"],\"target\":[\"menuItem\"],\"perms\":[\"student123:student:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-mortar-board\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:43:39',18),(135,'菜单管理',1,'com.ruoyi.project.system.menu.controller.MenuController.addSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"1063\"],\"menuType\":[\"F\"],\"menuName\":[\"学生修改\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"student123:student:edit\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:45:14',6),(136,'学生（测试代码生成功能）',1,'com.ruoyi.project.student.controller.StuInfoController.addSave()','POST',1,'admin','研发部门','/RuoYi-fast/student123/student/add','127.0.0.1','内网IP','{\"stuId\":[\"1\"],\"stuName\":[\"\"],\"stuAge\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:46:04',6),(137,'菜单管理',1,'com.ruoyi.project.system.menu.controller.MenuController.addSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"1063\"],\"menuType\":[\"F\"],\"menuName\":[\"学生查询\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"student123:student:list\"],\"orderNum\":[\"0\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:47:32',8),(138,'学生（测试代码生成功能）',2,'com.ruoyi.project.student.controller.StuInfoController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/student123/student/edit','127.0.0.1','内网IP','{\"id\":[\"1\"],\"stuId\":[\"1\"],\"stuName\":[\"陈修昊\"],\"stuAge\":[\"20\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:48:02',3),(139,'学生（测试代码生成功能）',1,'com.ruoyi.project.student.controller.StuInfoController.addSave()','POST',1,'admin','研发部门','/RuoYi-fast/student123/student/add','127.0.0.1','内网IP','{\"stuId\":[\"2\"],\"stuName\":[\"陈浩\"],\"stuAge\":[\"12\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-24 20:54:58',4),(140,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"111\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"Druid内置数据监控后台\"],\"url\":[\"/monitor/data\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:data:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bug\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-25 11:42:15',56),(141,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"116\"],\"parentId\":[\"3\"],\"menuType\":[\"C\"],\"menuName\":[\"Swagger系统接口\"],\"url\":[\"/tool/swagger\"],\"target\":[\"menuItem\"],\"perms\":[\"tool:swagger:view\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-gg\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-02-28 19:51:32',53),(142,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"5\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"农户收入信息管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 16:50:30',51),(143,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"9\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"/system/user\"],\"target\":[\"menuBlank\"],\"perms\":[\"system:user:view\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-user-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 16:56:46',46),(144,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"9\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"/system/user\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:view\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-user-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 16:58:10',6),(145,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"10\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"字典管理\"],\"url\":[\"/system/dict\"],\"target\":[\"menuBlank\"],\"perms\":[\"system:dict:view\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-bookmark-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 16:58:20',7),(146,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"10\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"字典管理\"],\"url\":[\"/system/dict\"],\"target\":[\"menuItem\"],\"perms\":[\"system:dict:view\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-bookmark-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 16:58:29',6),(147,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"9\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"/system/user\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:view\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 16:58:54',6),(148,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"10\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"字典管理\"],\"url\":[\"/system/dict\"],\"target\":[\"menuItem\"],\"perms\":[\"system:dict:view\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 16:59:00',8),(149,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"9\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"/system/user\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:view\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 16:59:16',6),(150,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"9\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"/system/user\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 16:59:25',6),(151,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"10\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"字典管理\"],\"url\":[\"/system/dict\"],\"target\":[\"menuItem\"],\"perms\":[\"system:dict:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 16:59:36',6),(152,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"5\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"农户收入信息管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 17:00:21',6),(153,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"5\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"农户收入信息管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 17:00:41',5),(154,'代码生成',6,'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":[\"agr_peasant\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 17:05:36',85),(155,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"agr_peasant\"],\"tableComment\":[\"农户信息表\"],\"className\":[\"AgrPeasant\"],\"functionAuthor\":[\"Chen\"],\"remark\":[\"用于农户收入信息管理\"],\"columns[0].columnId\":[\"8\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"9\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"户编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"peaId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"10\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"peaName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"11\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"证件号码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"peaCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"12\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"自然村\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"peaVillage\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"13\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"年度\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"peaYear\"],\"columns[5].isI','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 17:11:23',16),(156,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/RuoYi-fast/tool/gen/download/agr_peasant','127.0.0.1','内网IP','\"agr_peasant\"',NULL,0,NULL,'2023-03-01 17:11:33',112),(157,'农户个人信息',1,'com.ruoyi.project.peasant_info.controller.AgrPeasantController.addSave()','POST',1,'admin','研发部门','/RuoYi-fast/agriculture/peasant_info/add','127.0.0.1','内网IP','{\"peaId\":[\"3106232976\"],\"peaName\":[\"韩淑芝\"],\"peaCard\":[\"222326196911294522\"],\"peaVillage\":[\"后六合\"],\"peaYear\":[\"2023\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 17:21:37',44),(158,'农户个人信息',1,'com.ruoyi.project.peasant_info.controller.AgrPeasantController.addSave()','POST',1,'admin','研发部门','/RuoYi-fast/agriculture/peasant_info/add','127.0.0.1','内网IP','{\"peaId\":[\"3106232997\"],\"peaName\":[\"孙喜林\"],\"peaCard\":[\"222326196008024534\"],\"peaVillage\":[\"六家子西\"],\"peaYear\":[\"2023\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 17:22:37',3),(159,'创建表',0,'com.ruoyi.project.tool.gen.controller.GenController.create()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/createTable','127.0.0.1','内网IP','{\"sql\":[\"CREATE TABLE `agr_peasant` (\\n  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT \'自增主键（与业务无关）\',\\n  `pea_id` bigint(20) NOT NULL COMMENT \'户编号\',\\n  `pea_name` varchar(255) DEFAULT NULL COMMENT \'姓名\',\\n  `pea_card` varchar(255) NOT NULL COMMENT \'证件号码\',\\n  `pea_village` varchar(255) DEFAULT NULL COMMENT \'自然村\',\\n  `pea_year` varchar(255) DEFAULT NULL COMMENT \'年度\',\\n  `pea_relation` varchar(255) DEFAULT NULL COMMENT \'与户主关系\',\\n  `pea_reason` varchar(255) DEFAULT NULL COMMENT \'致贫原因\',\\n  `pea_health` varchar(255) DEFAULT NULL COMMENT \'健康状况\',\\n  `pea_age` int(11) DEFAULT NULL COMMENT \'年龄\',\\n  `pea_status` varchar(255) DEFAULT NULL COMMENT \'在校状况\',\\n  `pea_nation` varchar(255) DEFAULT NULL COMMENT \'民族\',\\n  `pea_tel` varchar(255) DEFAULT NULL COMMENT \'户联系电话\',\\n  `pea_time` varchar(255) DEFAULT NULL COMMENT \'人员识别时间\',\\n  `pea_ability` varchar(255) DEFAULT NULL COMMENT \'劳动技能\',\\n  `pea_education` varchar(255) DEFAULT NULL COMMENT \'文化程度\',\\n  PRIMARY KEY (`id`)\\n) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8\\n\"]}','{\"msg\":\"创建表结构异常\",\"code\":500}',0,NULL,'2023-03-01 19:04:51',68),(160,'创建表',0,'com.ruoyi.project.tool.gen.controller.GenController.create()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/createTable','127.0.0.1','内网IP','{\"sql\":[\"CREATE TABLE `agr_peasant` (\\n  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT \'自增主键（与业务无关）\',\\n  `pea_id` bigint(20) NOT NULL COMMENT \'户编号\',\\n  `pea_name` varchar(255) DEFAULT NULL COMMENT \'姓名\',\\n  `pea_card` varchar(255) NOT NULL COMMENT \'证件号码\',\\n  `pea_village` varchar(255) DEFAULT NULL COMMENT \'自然村\',\\n  `pea_year` varchar(255) DEFAULT NULL COMMENT \'年度\',\\n  `pea_relation` varchar(255) DEFAULT NULL COMMENT \'与户主关系\',\\n  `pea_reason` varchar(255) DEFAULT NULL COMMENT \'致贫原因\',\\n  `pea_health` varchar(255) DEFAULT NULL COMMENT \'健康状况\',\\n  `pea_age` int(11) DEFAULT NULL COMMENT \'年龄\',\\n  `pea_status` varchar(255) DEFAULT NULL COMMENT \'在校状况\',\\n  `pea_nation` varchar(255) DEFAULT NULL COMMENT \'民族\',\\n  `pea_tel` varchar(255) DEFAULT NULL COMMENT \'户联系电话\',\\n  `pea_time` varchar(255) DEFAULT NULL COMMENT \'人员识别时间\',\\n  `pea_ability` varchar(255) DEFAULT NULL COMMENT \'劳动技能\',\\n  `pea_education` varchar(255) DEFAULT NULL COMMENT \'文化程度\',\\n  PRIMARY KEY (`id`)\\n) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8\\n\"]}','{\"msg\":\"创建表结构异常\",\"code\":500}',0,NULL,'2023-03-01 19:05:00',9),(161,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.synchDb()','GET',1,'admin','研发部门','/RuoYi-fast/tool/gen/synchDb/agr_peasant','127.0.0.1','内网IP','\"agr_peasant\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:05:08',58),(162,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"agr_peasant\"],\"tableComment\":[\"农户信息表\"],\"className\":[\"AgrPeasant\"],\"functionAuthor\":[\"Chen\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"8\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"9\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"户编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"peaId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"10\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"peaName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"11\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"证件号码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"peaCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"12\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"自然村\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"peaVillage\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"13\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"年度\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"peaY','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:08:43',30),(163,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.synchDb()','GET',1,'admin','研发部门','/RuoYi-fast/tool/gen/synchDb/agr_peasant','127.0.0.1','内网IP','\"agr_peasant\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:10:27',102),(164,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"agr_peasant\"],\"tableComment\":[\"农户信息表\"],\"className\":[\"AgrPeasant\"],\"functionAuthor\":[\"Chen\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"8\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"9\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"户编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"peaId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"10\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"peaName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"11\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"证件号码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"peaCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"12\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"自然村\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"peaVillage\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"13\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"年度\"],\"columns[5].javaType\":[\"String\"],\"c','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:18:38',35),(165,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/RuoYi-fast/tool/gen/download/agr_peasant','127.0.0.1','内网IP','\"agr_peasant\"',NULL,0,NULL,'2023-03-01 19:18:46',120),(166,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"1004\"],\"parentId\":[\"100\"],\"menuType\":[\"F\"],\"menuName\":[\"用户导出\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:export\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:25:07',44),(167,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"1000\"],\"parentId\":[\"100\"],\"menuType\":[\"F\"],\"menuName\":[\"用户查询\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:25:38',7),(168,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"1001\"],\"parentId\":[\"100\"],\"menuType\":[\"F\"],\"menuName\":[\"用户新增\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:add\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:25:51',12),(169,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"1002\"],\"parentId\":[\"100\"],\"menuType\":[\"F\"],\"menuName\":[\"用户修改\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:edit\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:26:07',6),(170,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"1003\"],\"parentId\":[\"100\"],\"menuType\":[\"F\"],\"menuName\":[\"用户删除\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:remove\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:26:30',6),(171,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"1005\"],\"parentId\":[\"100\"],\"menuType\":[\"F\"],\"menuName\":[\"用户导入\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:import\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:26:46',7),(172,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"1006\"],\"parentId\":[\"100\"],\"menuType\":[\"F\"],\"menuName\":[\"重置密码\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:user:resetPwd\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:27:34',7),(173,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"9\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"农户管理\"],\"url\":[\"agriculture/peasant_info\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:28:01',7),(174,'菜单管理',2,'com.ruoyi.project.system.menu.controller.MenuController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"9\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"农户管理\"],\"url\":[\"agriculture/peasant_info\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:28:22',7),(175,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"agr_peasant\"],\"tableComment\":[\"农户信息表\"],\"className\":[\"AgrPeasant\"],\"functionAuthor\":[\"Chen\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"8\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"9\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"户编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"peaId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"10\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"peaName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"11\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"证件号码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"peaCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"12\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"自然村\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"peaVillage\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"13\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"年度\"],\"columns[5].javaType\":[\"String\"],\"c','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:29:03',31),(176,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"agr_peasant\"],\"tableComment\":[\"农户信息表\"],\"className\":[\"AgrPeasant\"],\"functionAuthor\":[\"Chen\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"8\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"9\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"户编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"peaId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"10\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"peaName\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"11\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"证件号码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"peaCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"12\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"自然村\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"peaVillage\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"13\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"年度\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"peaYear\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlTy','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:31:46',25),(177,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/RuoYi-fast/tool/gen/download/agr_peasant','127.0.0.1','内网IP','\"agr_peasant\"',NULL,0,NULL,'2023-03-01 19:31:58',117),(178,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"agr_peasant\"],\"tableComment\":[\"农户信息表\"],\"className\":[\"AgrPeasant\"],\"functionAuthor\":[\"Chen\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"8\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"9\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"户编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"peaId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"10\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"peaName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"11\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"证件号码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"peaCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"12\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"自然村\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"peaVillage\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"13\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"年度\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"peaYear\"],\"columns[5].queryType','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:36:39',52),(179,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"agr_peasant\"],\"tableComment\":[\"农户信息表\"],\"className\":[\"AgrPeasant\"],\"functionAuthor\":[\"Chen\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"8\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"9\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"户编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"peaId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"10\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"peaName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"11\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"证件号码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"peaCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"12\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"自然村\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"peaVillage\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"13\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"年度\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"peaYear\"],\"columns[5].queryType','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:36:47',26),(180,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/RuoYi-fast/tool/gen/download/agr_peasant','127.0.0.1','内网IP','\"agr_peasant\"',NULL,0,NULL,'2023-03-01 19:36:50',121),(181,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"agr_peasant\"],\"tableComment\":[\"农户信息表\"],\"className\":[\"AgrPeasant\"],\"functionAuthor\":[\"Chen\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"8\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"9\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"户编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"peaId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"10\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"peaName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"11\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"证件号码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"peaCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"12\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"自然村\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"peaVillage\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"13\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"年度\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"peaYear\"],\"columns[5].queryType\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:39:35',50),(182,'代码生成',8,'com.ruoyi.project.tool.gen.controller.GenController.download()','GET',1,'admin','研发部门','/RuoYi-fast/tool/gen/download/agr_peasant','127.0.0.1','内网IP','\"agr_peasant\"',NULL,0,NULL,'2023-03-01 19:39:37',114),(183,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"agr_peasant\"],\"tableComment\":[\"农户信息表\"],\"className\":[\"AgrPeasant\"],\"functionAuthor\":[\"Chen\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"8\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"9\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"户编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"peaId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"10\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"peaName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"11\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"证件号码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"peaCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"12\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"自然村\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"peaVillage\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"checkbox\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"13\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"年度\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"peaYear\"],\"columns[5].queryT','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:45:15',61),(184,'代码生成',2,'com.ruoyi.project.tool.gen.controller.GenController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"3\"],\"tableName\":[\"agr_peasant\"],\"tableComment\":[\"农户信息表\"],\"className\":[\"AgrPeasant\"],\"functionAuthor\":[\"Chen\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"8\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"自增主键（与业务无关）\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"9\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"户编号\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"peaId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"10\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"peaName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"11\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"证件号码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"peaCard\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"12\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"自然村\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"peaVillage\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"13\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"年度\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"peaYear\"],\"columns[5].queryType\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 19:46:54',26),(185,'用户管理',1,'com.ruoyi.project.system.user.controller.UserController.addSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/user/add','127.0.0.1','内网IP','{\"deptId\":[\"100\"],\"userName\":[\"CXH\"],\"deptName\":[\"若依科技\"],\"phonenumber\":[\"17660681181\"],\"email\":[\"1145666543@qq.com\"],\"loginName\":[\"chen\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"4\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 20:02:44',58),(186,'用户管理',2,'com.ruoyi.project.system.user.controller.UserController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/user/edit','127.0.0.1','内网IP','{\"userId\":[\"3\"],\"deptId\":[\"100\"],\"userName\":[\"CXH\"],\"dept.deptName\":[\"若依科技\"],\"phonenumber\":[\"17660681181\"],\"email\":[\"1145666543@qq.com\"],\"loginName\":[\"chen\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 20:04:00',20),(187,'用户管理',4,'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()','POST',1,'admin','研发部门','/RuoYi-fast/system/user/authRole/insertAuthRole','127.0.0.1','内网IP','{\"userId\":[\"3\"],\"roleIds\":[\"\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 20:04:16',4),(188,'角色管理',2,'com.ruoyi.project.system.role.controller.RoleController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/role/edit','127.0.0.1','内网IP','{\"roleId\":[\"2\"],\"roleName\":[\"普通人员\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"5,6,7,8,9,1072,1073,1074,1075,1076,10,1025,1026,1027,1028,1029\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 20:06:00',11),(189,'用户管理',2,'com.ruoyi.project.system.user.controller.UserController.editSave()','POST',1,'admin','研发部门','/RuoYi-fast/system/user/edit','127.0.0.1','内网IP','{\"userId\":[\"3\"],\"deptId\":[\"100\"],\"userName\":[\"CXH\"],\"dept.deptName\":[\"若依科技\"],\"phonenumber\":[\"17660681181\"],\"email\":[\"1145666543@qq.com\"],\"loginName\":[\"chen\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"4\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2023-03-01 20:06:17',14);

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'ceo','董事长',1,'0','admin','2023-02-23 11:57:27','',NULL,''),(4,'user','普通员工',4,'0','admin','2023-02-23 11:57:27','',NULL,'');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,'超级管理员','admin',1,'1','0','0','admin','2023-02-23 11:57:27','',NULL,'超级管理员'),(2,'普通人员','common',2,'2','0','0','admin','2023-02-23 11:57:27','admin','2023-03-01 20:06:00','普通角色');

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values (2,100),(2,101),(2,105);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values (2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1072),(2,1073),(2,1074),(2,1075),(2,1076);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`login_name`,`user_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`salt`,`status`,`del_flag`,`login_ip`,`login_date`,`pwd_update_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values (1,103,'admin','若依','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2023-03-01 20:07:19','2023-02-23 11:57:27','admin','2023-02-23 11:57:27','','2023-03-01 20:07:18','管理员'),(2,105,'ry','1','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','0','2','127.0.0.1','2023-02-23 11:57:27','2023-02-23 11:57:27','admin','2023-02-23 11:57:27','admin','2023-02-23 12:16:26','测试员'),(3,100,'chen','CXH','00','1145666543@qq.com','17660681181','0','','7ce1208db9abe151778fc87f8404bf60','010e00','0','0','127.0.0.1','2023-03-01 20:06:32',NULL,'admin','2023-03-01 20:02:44','admin','2023-03-01 20:06:32','');

/*Table structure for table `sys_user_online` */

DROP TABLE IF EXISTS `sys_user_online`;

CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

/*Data for the table `sys_user_online` */

insert  into `sys_user_online`(`sessionId`,`login_name`,`dept_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`start_timestamp`,`last_access_time`,`expire_time`) values ('6660c8b6-b9f4-42df-aca1-5cdd5590fc46','admin','研发部门','127.0.0.1','内网IP','Chrome 11','Windows 10','on_line','2023-03-01 20:07:17','2023-03-01 20:07:19',1800000);

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values (1,1),(3,4);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values (1,1),(3,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
