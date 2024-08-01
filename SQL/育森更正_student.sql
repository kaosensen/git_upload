--實作練習二
create table MAIN_TABLE(
     容納設施編號 CHAR(8 BYTE)PRIMARY KEY,
     設施地址 NVARCHAR2(100),
     容納人數 VARCHAR2(10 BYTE),
     地下樓層數 VARCHAR2(10 BYTE),
     建築物別 CHAR(8 BYTE),
     村里辦公室 CHAR(8 BYTE),
     消防分隊 CHAR(8 BYTE));
     
alter table MAIN_TABLE
add foreign key (建築物別) references 建築物類別(編號);
alter table MAIN_TABLE
add foreign key (村里辦公室) references 辦公室資訊(村里別代碼);
alter table MAIN_TABLE
add foreign key (消防分隊) references 消防分隊資訊(管轄分區代碼);


create table FB_INFORMATION(
     管轄分區代碼 CHAR(8 BYTE)PRIMARY KEY,
     管轄分區 NVARCHAR2(20),
     分局地址 VARCHAR2(100 BYTE),
     分局電話 VARCHAR2(10 BYTE)); 

create table BUILDING_CATEGORY(
     編號 CHAR(8 BYTE)PRIMARY KEY,
     建築物 NVARCHAR2(20)); 
     
create table OFFICE(
     村里別代碼 CHAR(8 BYTE)PRIMARY KEY,
     村里別 NVARCHAR2(20),
     村里辦公室 NVARCHAR2(100),
     村里辦公室電話 VARCHAR2(10 BYTE)); 

--實作練習三
--寫入消防隊資訊

insert into FB_INFORMATION (管轄分區代碼,管轄分區,分局地址,分局電話)
values('M001','竹南分局','苗栗縣竹南鎮民族街72號','037474796');
insert into FB_INFORMATION  (管轄分區代碼,管轄分區,分局地址,分局電話)
values('M002','苗栗分局','苗栗縣苗栗市金鳳街109號','037320059');
insert into FB_INFORMATION (管轄分區代碼,管轄分區,分局地址,分局電話)
values('M003','頭份分局','苗栗縣頭份市中興路503號','037663004');

--寫入建築物類別
insert into BUILDING_CATEGORY (編號,建築物)
values('B01','公寓');
insert into BUILDING_CATEGORY (編號,建築物)
values('B02','大樓');
insert into BUILDING_CATEGORY (編號,建築物)
values('B03','公共設施');
insert into BUILDING_CATEGORY (編號,建築物)
values('B04','私營單位');

--寫入辦公室資訊
insert into OFFICE (村里別代碼,村里別,村里辦公室,村里辦公室電話)
values('C001','大埔里','苗栗縣竹南鎮民族街72號','037474796');
insert into OFFICE (村里別代碼,村里別,村里辦公室,村里辦公室電話)
values('C002','竹南里','竹南鎮公義路1035號','037581072');
insert into OFFICE (村里別代碼,村里別,村里辦公室,村里辦公室電話)
values('C003','山佳里','竹南鎮竹南里中山路103號','037472735');
insert into OFFICE (村里別代碼,村里別,村里辦公室,村里辦公室電話)
values('C004','埔頂里','竹南鎮山佳里國光街14號','037614186');
insert into OFFICE (村里別代碼,村里別,村里辦公室,村里辦公室電話)
values('C005','綠苗里','後龍鎮埔頂里中興路136-1號','037724839');
insert into OFFICE (村里別代碼,村里別,村里辦公室,村里辦公室電話)
values('C006','民族里','民族里民族路96號','037660001');
insert into OFFICE (村里別代碼,村里別,村里辦公室,村里辦公室電話)
values('C007','忠孝里','忠孝里光大街82號','037661145');
insert into OFFICE (村里別代碼,村里別,村里辦公室,村里辦公室電話)
values('C008','信義里','信義里信義路53巷1號','037616072');

--寫入主表
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S01','苗栗縣竹南鎮中埔街20號','100','1','B01','C001','M001');
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S02','苗栗縣竹南鎮和平街79號','3142','1','B02','C002','M001');
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S03','苗栗縣竹南鎮龍山路三段142號','1075','1','B02','C003','M001');
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S04','苗栗縣後龍鎮中華路1498號','32','1','B03','C004','M001');
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S05','苗栗縣苗栗市米市街80號','106','1','B01','C005','M002');
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S06','苗栗縣苗栗市光復路117號','26','1','B01','C005','M002');
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S07','苗栗縣苗栗市博愛街109號','2038','2','B02','C005','M002');
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S08','苗栗縣苗栗市大同路53號','128','2','B02','C005','M002');
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S09','苗栗縣頭份市民族里和平路102號','353','1','B03','C006','M003');
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S010','苗栗縣頭份市忠孝忠孝一路69號','501','1','B04','C007','M003');
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S011','苗栗縣頭份市信義里中正路65號','194','1','B01','C008','M003');
insert into 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S012','苗栗縣頭份市信義里中正路116號','78','1','B04','C008','M003');
--實作練習四

--四之一

select  distinct BBB.管轄分區 as 轄管分局,
        BBB.分局電話 as 分局連絡電話
 from STUDENT.MAIN_TABLE AAA
 inner join STUDENT.FB_INFORMATION BBB on AAA.消防分隊 = BBB.管轄分區代碼
 where AAA."容納人數" > 1000;

--四之二
select  BBB.管轄分區 as 轄管分局,
        BBB.分局電話 as 分局連絡電話,
        count(設施地址) over(partition by 設施地址) as 避難設施大於1000容人數量的設施數量
 from STUDENT.MAIN_TABLE AAA
 inner join STUDENT.FB_INFORMATION BBB on AAA.消防分隊 = BBB.管轄分區代碼
 where AAA.容納人數 > 1000;
--GROUP BY BBB.管轄分區,BBB.分局電話;

--四之三
select  distinct BBB.管轄分區 as 轄管分局,
        BBB.分局電話 as 分局連絡電話,
        count(*) as 避難設施大於1000容人數量的設施數量,
        AAA.設施地址 as 避難設施地址,
        CCC.建築物 as 類型
 from STUDENT.MAIN_TABLE AAA
 inner join STUDENT.FB_INFORMATION BBB on AAA.消防分隊 = BBB.管轄分區代碼
 inner join STUDENT.BUILDING_CATEGORY CCC on AAA."建築物別" = CCC."編號"
 where AAA."容納人數" > 1000
 group by BBB.管轄分區,BBB.分局電話,AAA.設施地址,CCC.建築物;

--四之四

select  BBB.管轄分區 as 轄管分局,
        BBB.分局電話 as 分局連絡電話,
        AAA."容納人數" as 容人數量,
        AAA."設施地址" as 避難設施地址,
        DDD."VILLAGE" as 村里別 
 from STUDENT.MAIN_TABLE AAA
 inner join STUDENT.FB_INFORMATION BBB ON AAA.消防分隊 = BBB.管轄分區代碼
 inner join STUDENT.OFFICE DDD ON AAA."村里辦公室" = DDD."OFFICE_NUMBER"
 where AAA."設施地址" LIKE '%中%';

--主表 AAA
--消防分隊資訊 BBB
--建築物類別 CCC
--辦公室資訊 DDD

--四之五

SELECT  DDD.村里別 AS 村里別, 
        DDD.村里辦公室 AS 村里辦公室位置,
        AAA.設施地址 AS 避難設施地址,
        AAA.容納人數 AS 容人數量
        
FROM 主表 AAA
INNER JOIN 建築物類別 CCC ON AAA.建築物別 = CCC.編號
INNER JOIN 辦公室資訊 DDD ON AAA.村里辦公室 = DDD."村里別代碼"
WHERE CCC.編號 = 'B01' OR CCC.編號 = 'B02'
--where ccc.編號 in('B01','B02') 

--實作練習五
--五之一
UPDATE 主表
SET 容納人數 = '5000'
WHERE 設施地址 = '苗栗縣竹南鎮和平街79號'


--五之二
DELETE FROM 主表
WHERE 容納人數 < 1000
