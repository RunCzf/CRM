/*
 Navicat Premium Data Transfer

 Source Server         : Oracle
 Source Server Type    : Oracle
 Source Server Version : 100200
 Source Host           : 127.0.0.1:1521
 Source Schema         : JD1702

 Target Server Type    : Oracle
 Target Server Version : 100200
 File Encoding         : 65001

 Date: 30/05/2019 13:01:55
*/


-- ----------------------------
-- Table structure for CST_ACTIVITY
-- ----------------------------
DROP TABLE "JD1702"."CST_ACTIVITY";
CREATE TABLE "JD1702"."CST_ACTIVITY" (
  "ATV_ID" NUMBER NOT NULL ,
  "ATV_CUST_NO" CHAR(50 BYTE) NOT NULL ,
  "ATV_CUST_NAME" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "ATV_PLACE" VARCHAR2(200 BYTE) DEFAULT NULL ,
  "ATV_TITLE" VARCHAR2(500 BYTE) DEFAULT NULL ,
  "ATV_DESC" VARCHAR2(1000 BYTE) DEFAULT NULL ,
  "ATV_CUST_ID" NUMBER 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CST_ACTIVITY
-- ----------------------------
INSERT INTO "JD1702"."CST_ACTIVITY" VALUES ('1', '1                                                 ', 'briup', '陆家嘴银城中路68号', '售后服务', '还没有付钱！！', '1');
INSERT INTO "JD1702"."CST_ACTIVITY" VALUES ('2', '2                                                 ', 'tom', '马鞍山中路', '售前咨询', '成功', '1');

-- ----------------------------
-- Table structure for CST_CUSTOMER
-- ----------------------------
DROP TABLE "JD1702"."CST_CUSTOMER";
CREATE TABLE "JD1702"."CST_CUSTOMER" (
  "CUST_ID" NUMBER NOT NULL ,
  "CUST_NO" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "CUST_NAME" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "CUST_REGION" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "CUST_MANAGER_ID" NUMBER DEFAULT NULL ,
  "CUST_MANAGER_NAME" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "CUST_LEVEL" NUMBER DEFAULT NULL ,
  "CUST_LEVEL_LABEL" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "CUST_SATISFY" NUMBER DEFAULT NULL ,
  "CUST_CREDIT" NUMBER DEFAULT NULL ,
  "CUST_ADDR" VARCHAR2(300 BYTE) DEFAULT NULL ,
  "CUST_ZIP" CHAR(10 BYTE) DEFAULT NULL ,
  "CUST_TEL" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "CUST_FAX" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "CUST_WEBSITE" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "CUST_LICENCE_NO" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "CUST_CHIEFTAIN" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "CUST_BANKROLL" NUMBER DEFAULT NULL ,
  "CUST_TURNOVER" NUMBER DEFAULT NULL ,
  "CUST_BANK" VARCHAR2(200 BYTE) DEFAULT NULL ,
  "CUST_BANK_ACCOUNT" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "CUST_LOCAL_TAX_NO" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "CUST_NATIONAL_TAX_NO" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "CUST_STATUS" CHAR(2 BYTE) DEFAULT NULL 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CST_CUSTOMER
-- ----------------------------
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('1', '1', 'briup', '北京', '4', 'jingli', '0', '普通客户', '3', '3', '北京', '226400    ', '1316038888', '123qwqwq', '129@qq.com', '1234567', 'zhangsan', '20', '30', '工商', '111', '333', '123', '1 ');
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('2', '2', 'tom', '北京', '5', 'lili', '1', '普通客户', '0', '2', '北京', '226000    ', '12160388888', '123qwqw', '123@qq.com', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1 ');
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('3', '3', 'sun', '华北', '5', 'lili', '1', '普通客户', '0', '0', '北京', '226000    ', '11160388888', '123qwqw', '123@qq.com', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, '1 ');
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('4', '4', 'hua', '北京', '4', 'jingli', '0', '大客户', '2', '1', '华北', '226400    ', '132423432', '56ggsre3', '298@163.com', '3423', 'ls', '30', '20', '农行', '333', '222', '111', '1 ');
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('5', '5', 'mi', '华北', '4', 'jingli', '1', '重点开发客户', '2', '3', '华北', '229400    ', '189423432', '56ggsre3', '298@163.com', '3423', 'ls', '30', '20', '农行', '333', '222', '111', '1 ');
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('6', '6', 'test', '北京', NULL, 'jingli', '0', '普通客户', '3', '3', '中南', '12845     ', '12845', '1212qwqa', 'baidu.com', 'fshfja', 'zhangsan', '45', '50', '建设银行', '123456', '789456', '4585', '1 ');
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('122', '122', 'zzz', '北京', NULL, 'jingli', NULL, '普通客户', '3', '3', '555', '2333      ', '5552332', '2323', '32323', '233', '232', '323', '232333', '233232233', '233', '232', '2332', NULL);
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('12', '12', 'zzz', '北京', NULL, 'jingli', NULL, '普通客户', '3', '3', '1111', '111       ', '111', '111', '111', '11', '11', '11', '111', '11', '11', '11', '11', NULL);
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('15', '15', 'a3355', '华北', NULL, 'lili', NULL, '大客户', '3', '3', '1111', '111       ', '111', '111', '111', '11', '11', '11', '111', '11', '11', '11', '11', NULL);
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('16', '16', '45', '华北', NULL, 'lili', NULL, '重点开发客户', '1', '4', '四川', '29811     ', '656565', '298@163.com', '123qwqw', '1356', 'xiaoxiao', '6556', '6556', '6565', '6556', '556', '6565', NULL);
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('17', '17', 'woha1', '北京', NULL, 'jingli', NULL, '普通客户', '3', '4', '四川', '29811     ', '656565', '298@163.com', 'wwww', '1356', 'xiaoxiao', '65', '655', '6565', '6556', '556', '6565', NULL);
INSERT INTO "JD1702"."CST_CUSTOMER" VALUES ('18', '18', 'xz', '中南', NULL, 'lili', NULL, '合作伙伴', '5', '5', '四川', '111       ', '123456', '111@163.com', 'wwww', '00', '555', '65555', '222', '12345', '01', '11', '6666', NULL);

-- ----------------------------
-- Table structure for CST_LINKMAN
-- ----------------------------
DROP TABLE "JD1702"."CST_LINKMAN";
CREATE TABLE "JD1702"."CST_LINKMAN" (
  "LKM_ID" NUMBER NOT NULL ,
  "LKM_CUST_ID" NUMBER ,
  "LKM_CUST_NO" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "LKM_CUST_NAME" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "LKM_NAME" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "LKM_SEX" VARCHAR2(10 BYTE) DEFAULT NULL ,
  "LKM_POSTION" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "LKM_TEL" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "LKM_MOBILE" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "LKM_MEMO" VARCHAR2(600 BYTE) DEFAULT NULL 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CST_LINKMAN
-- ----------------------------
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('1', '1', '1', 'briup', 'san', '男', '客服经理', '123456', '234567', '干什么');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('2', '1', '1', 'briup', 'san', '男', '客服经理', '123456', '234567', '干啥');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('3', '2', '2', 'tom', 'jack', '女', '主管', '0123', '13356845952', '好美丽');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('45', '15', '15', 'a3355', 'zhangzhang', '男', 'jingguan', '454', '222', '455');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('5', NULL, NULL, NULL, 'zhangzhang', '男', 'jingguan', '454', '1123', '455');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('6', NULL, NULL, NULL, 'zhangzhang', '男', 'jingguan', '454', '11231', '455');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('46', '17', '17', 'woha1', '雄安', '男', '无', '2552', '1254', '好');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('47', '18', '18', '小张', 'zhangzhang', '女', 'jingguan', '454', '1123', '455');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('48', '18', '18', '小张', 'xiao网', '男', '安徽啥', '111111', '1111', '1');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('10', '16', '16', NULL, 'zhangzhang', '女', 'jingguan', '454', '1123', '455');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('11', '16', '16', NULL, '12', NULL, '122', '12', '121', '12');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('13', '16', '16', NULL, '111111', '女', '1111', '1111', '1111', '111');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('14', '16', '16', NULL, 'zhangzhang', '男', 'jingguan', '454', '1123', '455');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('15', '16', '16', NULL, '121', '男', '12', '12', '12', '21');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('16', '16', '16', 'a1', '01', '女', '01', '01', '101', '01');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('17', '16', '16', 'a1', 'zhangzh', '男', 'jingguan', '454', '1123', '455');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('18', '16', '16', 'a1', '1', '男', '1', '12', '21', '12');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('19', '16', '16', 'a1', '45', '男', '45', '54', '45', '54');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('25', '16', '16', '45', '25', '男', '45', '54', '4', '5');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('27', '16', '16', '45', 'zhangzhang', '男', 'jingguan', '454', '1123', '455');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('28', '16', '16', '45', '哈哈', '女', '1', '1', '1', '1');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('29', '16', '16', '45', '丫丫', '女', '1', '1', '1', '1');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('30', '16', '16', '45', '嗯嗯', '男', '2', '2', '2', '2');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('31', '16', '16', '45', '嘻嘻', '女', '33', '33', '33', '33');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('32', '16', '16', '45', '二二', '女', '12', '12', '12', '12');
INSERT INTO "JD1702"."CST_LINKMAN" VALUES ('33', '16', '16', '45', 'we', '女', '224', '42', '42', '24');

-- ----------------------------
-- Table structure for CST_LOG
-- ----------------------------
DROP TABLE "JD1702"."CST_LOG";
CREATE TABLE "JD1702"."CST_LOG" (
  "LOG_ID" NUMBER NOT NULL ,
  "LOG_OP" VARCHAR2(20 BYTE) DEFAULT NULL ,
  "LOG_EVENT" VARCHAR2(200 BYTE) DEFAULT NULL ,
  "LOG_DATE" DATE DEFAULT NULL 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CST_LOG
-- ----------------------------
INSERT INTO "JD1702"."CST_LOG" VALUES ('1', 'jingli', '登录了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('2', 'jingli', '退出了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('3', 'jingli', '登录了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('4', 'jingli', '退出了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('5', 'zhuguan', '登录了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('6', 'zhuguan', '退出了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('7', 'gaoguan', '登录了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('8', 'gaoguan', '退出了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('9', 'guanliyuan', '登录了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('10', 'guanliyuan', '退出了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('11', 'jingli', '登录了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('12', 'jingli', '退出了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "JD1702"."CST_LOG" VALUES ('13', 'zhuguan', '登录了系统', TO_DATE('2017-04-20 15:43:01', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for CST_SERVICE
-- ----------------------------
DROP TABLE "JD1702"."CST_SERVICE";
CREATE TABLE "JD1702"."CST_SERVICE" (
  "SVR_ID" NUMBER NOT NULL ,
  "SVR_TYPE" VARCHAR2(20 BYTE) NOT NULL ,
  "SVR_TITLE" VARCHAR2(500 BYTE) DEFAULT NULL ,
  "SVR_CUST_NAME" VARCHAR2(17 BYTE) DEFAULT NULL ,
  "SVR_STATUS" VARCHAR2(10 BYTE) DEFAULT NULL ,
  "SVR_REQUEST" VARCHAR2(500 BYTE) DEFAULT NULL ,
  "SVR_CREATE_BY" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "SVR_DUE_TO" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "SVR_DEAL" VARCHAR2(500 BYTE) DEFAULT NULL ,
  "SVR_RESULT" VARCHAR2(500 BYTE) DEFAULT NULL ,
  "SVR_SATISFY" NUMBER DEFAULT NULL 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CST_SERVICE
-- ----------------------------
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('1', '咨询', '测试', 'tom', '已分配', '测试', 'lili', 'lili', NULL, '不通过', '0');
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('2', '投诉', '售后', 'tom', '已处理', '新买手机一星期就坏了，不要修了，退钱！！！！', 'jingli', 'jingli', '请问出现了什么问题呢？', '不通过', '0');
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('3', '咨询', '测试2', 'briup', '已分配', '测试', 'jingli', 'jingli', NULL, '通过', '0');
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('4', '建议', '电子产品便宜点', 'tom', '已处理', '太贵了，买不起', 'lili', 'jingli', NULL, '通过', '0');
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('5', '咨询', '咨询咨询', 'briup', '已归档', '咨询咨询咨询', 'jingli', 'jingli', '问题解决', '已经解决好了', '4');
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('6', '咨询', '咨询问题', 'tom', '已归档', '请问有什么问题吗？', 'jingli', 'jingli', '有什么问题？', '服务已经的到解决', '5');
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('7', '咨询', 'safaf', 'briup', '已分配', 'asd', 'gaoguan', NULL, NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('8', '投诉', 'yy', 'mi', '已分配', 'fs', 'gaoguan', NULL, NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('9', '投诉', '为撒谎', 'hua', '已分配', 'weq', 'gaoguan', NULL, NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('10', '咨询', 'FFD', 'tom', '已分配', 'AFDAS', 'gaoguan', NULL, NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('11', '咨询', 'sadfa', 'briup', '已分配', 'asfd', 'gaoguan', NULL, NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('12', '投诉', 'dsfsad', 'briup', '已分配', '
fgu', 'gaoguan', NULL, NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('13', '投诉', '3443', 'briup', '已分配', '343434', 'gaoguan', 'jingli', NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('14', '咨询', '433443', 'briup', '已分配', '43343434', 'gaoguan', 'jingli', NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('15', '投诉', '34343434', 'briup', '已分配', '3343434', 'gaoguan', NULL, NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('16', '建议', 're''re''r', 'briup', '已分配', '二恶二二二', 'gaoguan', 'jingli', NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('17', '咨询', '11111111111111111', 'briup', '已分配', '1111111111111111', 'gaoguan', 'lili', NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('18', '咨询', 'asdf', 'briup', '已分配', 'j''', 'gaoguan', 'jingli', NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('19', '投诉', 'SDjjj', 'briup', '已分配', '1111', 'gaoguan', 'lili', NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('20', '咨询', '5555', 'briup', '已分配', '25522', 'gaoguan', 'jingli', NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('21', '投诉', '5555', 'briup', '已分配', '5555', 'gaoguan', 'jingli', NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('22', '咨询', '1251', 'briup', '已分配', '255', 'gaoguan', 'jingli', NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('23', '咨询', '52466', 'briup', '新创建', '1524', 'gaoguan', NULL, NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('24', '咨询', '5555', 'briup', '新创建', '4545', 'gaoguan', NULL, NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('27', '咨询', 'wangyiyyi', 'sun', '新创建', 'hshshsh', 'gaoguan', NULL, NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('47', '建议', 'SD', 'briup', '新创建', '222222', 'gaoguan', NULL, NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('48', '咨询', '买买买', '45', '已分配', '买手机', 'gaoguan', 'jingli', NULL, NULL, NULL);
INSERT INTO "JD1702"."CST_SERVICE" VALUES ('49', '投诉', '质量有问题', 'mi', '已分配', '想换一个新的', 'jingli', 'lili', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ORDERS
-- ----------------------------
DROP TABLE "JD1702"."ORDERS";
CREATE TABLE "JD1702"."ORDERS" (
  "ODR_ID" NUMBER NOT NULL ,
  "ODR_CUSTOMER" VARCHAR2(200 BYTE) DEFAULT NULL ,
  "ODR_ADDR" VARCHAR2(400 BYTE) DEFAULT NULL ,
  "ODR_STATUS" CHAR(1 BYTE) DEFAULT NULL ,
  "ODR_CUST_ID" NUMBER 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ORDERS
-- ----------------------------
INSERT INTO "JD1702"."ORDERS" VALUES ('1', 'briup', '北京', '1', '1');
INSERT INTO "JD1702"."ORDERS" VALUES ('2', 'tom', '北京', '1', '2');
INSERT INTO "JD1702"."ORDERS" VALUES ('3', 'sun', '华北', '2', '3');
INSERT INTO "JD1702"."ORDERS" VALUES ('18', '小张', '中南', NULL, '18');
INSERT INTO "JD1702"."ORDERS" VALUES ('12', 'zzz', '北京', NULL, '12');

-- ----------------------------
-- Table structure for ORDERS_LINE
-- ----------------------------
DROP TABLE "JD1702"."ORDERS_LINE";
CREATE TABLE "JD1702"."ORDERS_LINE" (
  "ODD_ID" NUMBER NOT NULL ,
  "ODD_ORDER_ID" NUMBER ,
  "ODD_COUNT" NUMBER DEFAULT NULL ,
  "ODD_UNIT" VARCHAR2(20 BYTE) DEFAULT NULL ,
  "ODD_PRICE" NUMBER DEFAULT NULL ,
  "PROD_ID" NUMBER 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ORDERS_LINE
-- ----------------------------
INSERT INTO "JD1702"."ORDERS_LINE" VALUES ('1', '1', '100', '台', '500000', '1');
INSERT INTO "JD1702"."ORDERS_LINE" VALUES ('2', '2', '20', '台', '100000', '1');
INSERT INTO "JD1702"."ORDERS_LINE" VALUES ('3', '3', '4000', '本', '80000', '3');
INSERT INTO "JD1702"."ORDERS_LINE" VALUES ('18', '18', '50000', '斤', '250000', '2');

-- ----------------------------
-- Table structure for PRODUCT
-- ----------------------------
DROP TABLE "JD1702"."PRODUCT";
CREATE TABLE "JD1702"."PRODUCT" (
  "PROD_ID" NUMBER NOT NULL ,
  "PROD_NAME" VARCHAR2(400 BYTE) DEFAULT NULL ,
  "PROD_TYPE" VARCHAR2(200 BYTE) DEFAULT NULL ,
  "PROD_BATCH" VARCHAR2(200 BYTE) DEFAULT NULL ,
  "PROD_UNIT" VARCHAR2(20 BYTE) DEFAULT NULL ,
  "PROD_PRICE" NUMBER DEFAULT NULL ,
  "PROD_MEMO" VARCHAR2(400 BYTE) DEFAULT NULL 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PRODUCT
-- ----------------------------
INSERT INTO "JD1702"."PRODUCT" VALUES ('1', 'compu', '通信', '二级/三批次', '台', '5000', '1');
INSERT INTO "JD1702"."PRODUCT" VALUES ('2', 'briup', '水果', '一级/一批', '斤', '5', '1');
INSERT INTO "JD1702"."PRODUCT" VALUES ('3', 'a', '书籍', '一级/一批', '本', '20', '1');
INSERT INTO "JD1702"."PRODUCT" VALUES ('4', 'c', '电子', '一级/一批', '台', '2000', '1');

-- ----------------------------
-- Table structure for SAL_CHANCE
-- ----------------------------
DROP TABLE "JD1702"."SAL_CHANCE";
CREATE TABLE "JD1702"."SAL_CHANCE" (
  "CHC_ID" NUMBER NOT NULL ,
  "CHC_SOURCE" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "CHC_CUST_NAME" VARCHAR2(200 BYTE) DEFAULT NULL ,
  "CHC_TITLE" VARCHAR2(400 BYTE) DEFAULT NULL ,
  "CHC_RATE" NUMBER DEFAULT NULL ,
  "CHC_LINKMAN" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "CHC_TEL" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "CHC_ADDR" VARCHAR2(50 BYTE) DEFAULT NULL ,
  "CHC_DESC" VARCHAR2(4000 BYTE) DEFAULT NULL ,
  "CHC_CREATE_BY" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "CHC_DUE_TO" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "CHC_STATUS" CHAR(10 BYTE) DEFAULT NULL 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SAL_CHANCE
-- ----------------------------
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('1', 'sf', '客户1', '好', '77', 'c', '11111', NULL, '好好好', NULL, 'lili', 'success   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('2', '客户1', '客户2', '好', '98', '在', '11111', NULL, 'fsdfa', NULL, 'jingli', 'success   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('3', 'sal', 'jin', '自然人客户', '66', 'jing', '17688888888', '北京', '很好', 'zhuguan', 'jingli', 'success   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('4', 'lu', 'chao', '是不是傻', '100', 'wait', '188999999999', '北京', '活的像一个高仿', 'zhuguan', 'jingli', 'success   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('5', 'wet', 'sun', '泡脚', '100', 'chao', '18988888888', '北京', '没事就泡脚', 'zhuguan', 'lili', 'success   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('6', 'sh', 'la', '哈哈哈', '67', 'zhangsan', '7894654654', '中南', '很嗨很哈', 'zhuguan', 'jingli', 'success   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('7', 'tv', 'zu', '矮', '80', 'chao', '18988888888', '北京', '增高鞋很适合他', 'zhuguan', 'jingli', 'success   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('8', 'ptp', 'tom1', '确认', '60', 'yu', '19833333333', '北京', '劳动市场人员需要工作', 'zhuguan', 'jingli', 'develop   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('9', 'ch', 'zz', '很好', '45', 'good', '7894646513', '中南', '很好', 'zhuguan', 'jingli', 'success   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('10', '等哈说', 'zhzh', '很好', '34', 'zz', '456465446', '华北', '对话框撒娇啊快点哈斯卡打算', 'zhuguan', 'jingli', 'success   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('13', 'sf', 'z', '好', '45', 'chao', '11111', '华北', '54222', 'gaoguan', 'lili', NULL);
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('12', NULL, '客户3', '阿三', '54', NULL, NULL, NULL, '阿萨飒', NULL, 'lili', 'develop   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('16', 'qq', '客户5', '好', '22', '在', '11', NULL, '啊啊', NULL, 'lili', 'success   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('14', NULL, '客户3', '好', '45', '在', '11111', NULL, NULL, NULL, 'jingli', 'success   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('19', 'sf', 'z111', '好', '45', '在', '11111', '北京', '45', 'gaoguan', NULL, 'develop   ');
INSERT INTO "JD1702"."SAL_CHANCE" VALUES ('15', '客户1', '客户4', '好', '55', '在', '11111', '华北', '所示222', 'gaoguan', NULL, NULL);

-- ----------------------------
-- Table structure for SAL_PLAN
-- ----------------------------
DROP TABLE "JD1702"."SAL_PLAN";
CREATE TABLE "JD1702"."SAL_PLAN" (
  "PLA_ID" NUMBER NOT NULL ,
  "PLA_CHC_ID" NUMBER ,
  "PLA_TODO" VARCHAR2(1000 BYTE) DEFAULT NULL ,
  "PLA_RESULT" VARCHAR2(1000 BYTE) DEFAULT NULL 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SAL_PLAN
-- ----------------------------
INSERT INTO "JD1702"."SAL_PLAN" VALUES ('3', '19', 'wawawa', NULL);
INSERT INTO "JD1702"."SAL_PLAN" VALUES ('22', '19', NULL, NULL);

-- ----------------------------
-- Table structure for STORAGE
-- ----------------------------
DROP TABLE "JD1702"."STORAGE";
CREATE TABLE "JD1702"."STORAGE" (
  "STK_ID" NUMBER ,
  "STK_WAREHOURSE" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "STK_COUNT" NUMBER DEFAULT NULL ,
  "STK_MEMO" VARCHAR2(400 BYTE) DEFAULT NULL ,
  "STK_WARE" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "STK_NAME" VARCHAR2(400 BYTE) DEFAULT NULL 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of STORAGE
-- ----------------------------
INSERT INTO "JD1702"."STORAGE" VALUES ('1', '1号仓库', '500', '台', 'B13货位', 'compu');
INSERT INTO "JD1702"."STORAGE" VALUES ('2', '3号仓库', '300', '斤', 'A7货位', 'briup');

-- ----------------------------
-- Table structure for SYS_ROLE
-- ----------------------------
DROP TABLE "JD1702"."SYS_ROLE";
CREATE TABLE "JD1702"."SYS_ROLE" (
  "ROLE_ID" NUMBER NOT NULL ,
  "ROLE_NAME" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "ROLE_DESC" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "ROLE_FLAG" NUMBER DEFAULT NULL 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SYS_ROLE
-- ----------------------------
INSERT INTO "JD1702"."SYS_ROLE" VALUES ('1', '管理员', '超管', '1');
INSERT INTO "JD1702"."SYS_ROLE" VALUES ('2', '高管', '管理员', '1');
INSERT INTO "JD1702"."SYS_ROLE" VALUES ('3', '销售主管', '服务分配', '1');
INSERT INTO "JD1702"."SYS_ROLE" VALUES ('4', '客户经理', '服务创建', '1');
INSERT INTO "JD1702"."SYS_ROLE" VALUES ('112', '122', '66 2          ', '1');

-- ----------------------------
-- Table structure for SYS_USER
-- ----------------------------
DROP TABLE "JD1702"."SYS_USER";
CREATE TABLE "JD1702"."SYS_USER" (
  "USR_ID" NUMBER NOT NULL ,
  "USR_NAME" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "USR_PASSWORD" VARCHAR2(100 BYTE) DEFAULT NULL ,
  "USR_FLAG" NUMBER DEFAULT NULL ,
  "USR_ROLE_ID" NUMBER 
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SYS_USER
-- ----------------------------
INSERT INTO "JD1702"."SYS_USER" VALUES ('1', 'guanliyuan', '123456', '1', '1');
INSERT INTO "JD1702"."SYS_USER" VALUES ('2', 'gaoguan', '123456', '1', '2');
INSERT INTO "JD1702"."SYS_USER" VALUES ('3', 'zhuguan', '123456', '0', '3');
INSERT INTO "JD1702"."SYS_USER" VALUES ('4', 'jingli', '123456', '1', '4');
INSERT INTO "JD1702"."SYS_USER" VALUES ('5', 'lili', '123456', '1', '4');
INSERT INTO "JD1702"."SYS_USER" VALUES ('6', 'zz', '123456', '1', '3');
INSERT INTO "JD1702"."SYS_USER" VALUES ('7', 'lili', '123456', '1', NULL);
INSERT INTO "JD1702"."SYS_USER" VALUES ('8', '王五', '123456', '1', NULL);
INSERT INTO "JD1702"."SYS_USER" VALUES ('9', 'yanhua', '123456', '1', NULL);
INSERT INTO "JD1702"."SYS_USER" VALUES ('10', 'xiaoli', '123456', '1', NULL);
INSERT INTO "JD1702"."SYS_USER" VALUES ('11', 'wangda', '123456', '1', NULL);
INSERT INTO "JD1702"."SYS_USER" VALUES ('12', 'yangyang', '123456', '1', NULL);
INSERT INTO "JD1702"."SYS_USER" VALUES ('120', 'a1100', '123456', '1', '2');
INSERT INTO "JD1702"."SYS_USER" VALUES ('123', 'fsdfds', 'sdfsdfdsf', '1', NULL);
INSERT INTO "JD1702"."SYS_USER" VALUES ('132', 'dfasdf', 'fdsfsdfasd', '1', NULL);
INSERT INTO "JD1702"."SYS_USER" VALUES ('43', 'fdgdfs', 'sgfdgdfgdf', '1', NULL);
INSERT INTO "JD1702"."SYS_USER" VALUES ('15', 'dfgfds', 'dfsgfdgsdf', '1', NULL);
INSERT INTO "JD1702"."SYS_USER" VALUES ('153', 'dsfads', 'fsdfsdfs', '1', NULL);
INSERT INTO "JD1702"."SYS_USER" VALUES ('17', 'yanhua', '123456', '1', '2');
INSERT INTO "JD1702"."SYS_USER" VALUES ('18', 'yanhua2', 'sdfdsfsd', '1', '2');
INSERT INTO "JD1702"."SYS_USER" VALUES ('19', 'xiaoli', '123456', '0', '2');
INSERT INTO "JD1702"."SYS_USER" VALUES ('20', 'za', '123456', '0', '2');

-- ----------------------------
-- Primary Key structure for table CST_ACTIVITY
-- ----------------------------
ALTER TABLE "JD1702"."CST_ACTIVITY" ADD CONSTRAINT "SYS_C005803" PRIMARY KEY ("ATV_ID");

-- ----------------------------
-- Checks structure for table CST_ACTIVITY
-- ----------------------------
ALTER TABLE "JD1702"."CST_ACTIVITY" ADD CONSTRAINT "SYS_C005802" CHECK ("ATV_CUST_NO" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table CST_CUSTOMER
-- ----------------------------
ALTER TABLE "JD1702"."CST_CUSTOMER" ADD CONSTRAINT "SYS_C005801" PRIMARY KEY ("CUST_ID");

-- ----------------------------
-- Primary Key structure for table CST_LINKMAN
-- ----------------------------
ALTER TABLE "JD1702"."CST_LINKMAN" ADD CONSTRAINT "SYS_C005805" PRIMARY KEY ("LKM_ID");

-- ----------------------------
-- Primary Key structure for table CST_LOG
-- ----------------------------
ALTER TABLE "JD1702"."CST_LOG" ADD CONSTRAINT "SYS_C005807" PRIMARY KEY ("LOG_ID");

-- ----------------------------
-- Primary Key structure for table CST_SERVICE
-- ----------------------------
ALTER TABLE "JD1702"."CST_SERVICE" ADD CONSTRAINT "SYS_C005809" PRIMARY KEY ("SVR_ID");

-- ----------------------------
-- Checks structure for table CST_SERVICE
-- ----------------------------
ALTER TABLE "JD1702"."CST_SERVICE" ADD CONSTRAINT "SYS_C005808" CHECK ("SVR_TYPE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ORDERS
-- ----------------------------
ALTER TABLE "JD1702"."ORDERS" ADD CONSTRAINT "SYS_C005810" PRIMARY KEY ("ODR_ID");

-- ----------------------------
-- Primary Key structure for table ORDERS_LINE
-- ----------------------------
ALTER TABLE "JD1702"."ORDERS_LINE" ADD CONSTRAINT "SYS_C005813" PRIMARY KEY ("ODD_ID");

-- ----------------------------
-- Primary Key structure for table PRODUCT
-- ----------------------------
ALTER TABLE "JD1702"."PRODUCT" ADD CONSTRAINT "SYS_C005812" PRIMARY KEY ("PROD_ID");

-- ----------------------------
-- Primary Key structure for table SAL_CHANCE
-- ----------------------------
ALTER TABLE "JD1702"."SAL_CHANCE" ADD CONSTRAINT "SYS_C005820" PRIMARY KEY ("CHC_ID");

-- ----------------------------
-- Primary Key structure for table SAL_PLAN
-- ----------------------------
ALTER TABLE "JD1702"."SAL_PLAN" ADD CONSTRAINT "SYS_C005821" PRIMARY KEY ("PLA_ID");

-- ----------------------------
-- Primary Key structure for table SYS_ROLE
-- ----------------------------
ALTER TABLE "JD1702"."SYS_ROLE" ADD CONSTRAINT "SYS_C005817" PRIMARY KEY ("ROLE_ID");

-- ----------------------------
-- Primary Key structure for table SYS_USER
-- ----------------------------
ALTER TABLE "JD1702"."SYS_USER" ADD CONSTRAINT "SYS_C005818" PRIMARY KEY ("USR_ID");

-- ----------------------------
-- Foreign Keys structure for table CST_ACTIVITY
-- ----------------------------
ALTER TABLE "JD1702"."CST_ACTIVITY" ADD CONSTRAINT "SYS_C005804" FOREIGN KEY ("ATV_CUST_ID") REFERENCES "JD1702"."CST_CUSTOMER" ("CUST_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table CST_LINKMAN
-- ----------------------------
ALTER TABLE "JD1702"."CST_LINKMAN" ADD CONSTRAINT "SYS_C005806" FOREIGN KEY ("LKM_CUST_ID") REFERENCES "JD1702"."CST_CUSTOMER" ("CUST_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ORDERS
-- ----------------------------
ALTER TABLE "JD1702"."ORDERS" ADD CONSTRAINT "SYS_C005811" FOREIGN KEY ("ODR_CUST_ID") REFERENCES "JD1702"."CST_CUSTOMER" ("CUST_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ORDERS_LINE
-- ----------------------------
ALTER TABLE "JD1702"."ORDERS_LINE" ADD CONSTRAINT "SYS_C005814" FOREIGN KEY ("ODD_ORDER_ID") REFERENCES "JD1702"."ORDERS" ("ODR_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "JD1702"."ORDERS_LINE" ADD CONSTRAINT "SYS_C005815" FOREIGN KEY ("PROD_ID") REFERENCES "JD1702"."PRODUCT" ("PROD_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table SAL_PLAN
-- ----------------------------
ALTER TABLE "JD1702"."SAL_PLAN" ADD CONSTRAINT "SYS_C005822" FOREIGN KEY ("PLA_CHC_ID") REFERENCES "JD1702"."SAL_CHANCE" ("CHC_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table STORAGE
-- ----------------------------
ALTER TABLE "JD1702"."STORAGE" ADD CONSTRAINT "SYS_C005816" FOREIGN KEY ("STK_ID") REFERENCES "JD1702"."PRODUCT" ("PROD_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table SYS_USER
-- ----------------------------
ALTER TABLE "JD1702"."SYS_USER" ADD CONSTRAINT "SYS_C005819" FOREIGN KEY ("USR_ROLE_ID") REFERENCES "JD1702"."SYS_ROLE" ("ROLE_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
