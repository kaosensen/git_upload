--實作練習二
CREATE table 主表(
     容納設施編號 CHAR(8 BYTE)PRIMARY KEY,
     設施地址 NVARCHAR2(100),
     容納人數 VARCHAR2(10 BYTE),
     地下樓層數 VARCHAR2(10 BYTE),
     建築物別 CHAR(8 BYTE),
     村里辦公室 CHAR(8 BYTE),
     消防分隊 CHAR(8 BYTE));

ALTER TABLE 主表
ADD FOREIGN KEY (建築物別) REFERENCES 建築物類別(編號);
ALTER TABLE 主表
ADD FOREIGN KEY (村里辦公室) REFERENCES 辦公室資訊(村里別代碼);
ALTER TABLE 主表
ADD FOREIGN KEY (消防分隊) REFERENCES 消防分隊資訊(管轄分區代碼);


CREATE table 消防分隊資訊(
     管轄分區代碼 CHAR(8 BYTE)PRIMARY KEY,
     管轄分區 NVARCHAR2(20),
     分局地址 VARCHAR2(100 BYTE),
     分局電話 VARCHAR2(10 BYTE)); 

CREATE table 建築物類別(
     編號 CHAR(8 BYTE)PRIMARY KEY,
     建築物 NVARCHAR2(20)); 
     
CREATE table 辦公室資訊(
     村里別代碼 CHAR(8 BYTE)PRIMARY KEY,
     村里別 NVARCHAR2(20),
     村里辦公室 NVARCHAR2(100),
     村里辦公室電話 VARCHAR2(10 BYTE)); 

--實作練習三
--寫入消防隊資訊
INSERT INTO 消防分隊資訊 (管轄分區代碼,管轄分區,分局地址,分局電話)
VALUES('M001','竹南分局','苗栗縣竹南鎮民族街72號','037474796');
INSERT INTO 消防分隊資訊  (管轄分區代碼,管轄分區,分局地址,分局電話)
VALUES('M002','苗栗分局','苗栗縣苗栗市金鳳街109號','037320059');
INSERT INTO 消防分隊資訊 (管轄分區代碼,管轄分區,分局地址,分局電話)
VALUES('M003','頭份分局','苗栗縣頭份市中興路503號','037663004');

--寫入建築物類別
INSERT INTO 建築物類別 (編號,建築物)
VALUES('B01','公寓');
INSERT INTO 建築物類別 (編號,建築物)
VALUES('B02','大樓');
INSERT INTO 建築物類別 (編號,建築物)
VALUES('B03','公共設施');
INSERT INTO 建築物類別 (編號,建築物)
VALUES('B04','私營單位');

--寫入辦公室資訊
INSERT INTO 辦公室資訊 (村里別代碼,村里別,村里辦公室,村里辦公室電話)
VALUES('C001','大埔里','苗栗縣竹南鎮民族街72號','037474796');
INSERT INTO 辦公室資訊 (村里別代碼,村里別,村里辦公室,村里辦公室電話)
VALUES('C002','竹南里','竹南鎮公義路1035號','037581072');
INSERT INTO 辦公室資訊 (村里別代碼,村里別,村里辦公室,村里辦公室電話)
VALUES('C003','山佳里','竹南鎮竹南里中山路103號','037472735');
INSERT INTO 辦公室資訊 (村里別代碼,村里別,村里辦公室,村里辦公室電話)
VALUES('C004','埔頂里','竹南鎮山佳里國光街14號','037614186');
INSERT INTO 辦公室資訊 (村里別代碼,村里別,村里辦公室,村里辦公室電話)
VALUES('C005','綠苗里','後龍鎮埔頂里中興路136-1號','037724839');
INSERT INTO 辦公室資訊 (村里別代碼,村里別,村里辦公室,村里辦公室電話)
VALUES('C006','民族里','民族里民族路96號','037660001');
INSERT INTO 辦公室資訊 (村里別代碼,村里別,村里辦公室,村里辦公室電話)
VALUES('C007','忠孝里','忠孝里光大街82號','037661145');
INSERT INTO 辦公室資訊 (村里別代碼,村里別,村里辦公室,村里辦公室電話)
VALUES('C008','信義里','信義里信義路53巷1號','037616072');

--寫入主表
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S01','苗栗縣竹南鎮中埔街20號','100','1','B01','C001','M001');
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S02','苗栗縣竹南鎮和平街79號','3142','1','B02','C002','M001');
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S03','苗栗縣竹南鎮龍山路三段142號','1075','1','B02','C003','M001');
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S04','苗栗縣後龍鎮中華路1498號','32','1','B03','C004','M001');
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S05','苗栗縣苗栗市米市街80號','106','1','B01','C005','M002');
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S06','苗栗縣苗栗市光復路117號','26','1','B01','C005','M002');
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S07','苗栗縣苗栗市博愛街109號','2038','2','B02','C005','M002');
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S08','苗栗縣苗栗市大同路53號','128','2','B02','C005','M002');
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S09','苗栗縣頭份市民族里和平路102號','353','1','B03','C006','M003');
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S010','苗栗縣頭份市忠孝忠孝一路69號','501','1','B04','C007','M003');
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S011','苗栗縣頭份市信義里中正路65號','194','1','B01','C008','M003');
INSERT INTO 主表 (容納設施編號,設施地址,容納人數,地下樓層數,"建築物別","村里辦公室","消防分隊")
VALUES('S012','苗栗縣頭份市信義里中正路116號','78','1','B04','C008','M003');
--實作練習四

--四之一
SELECT  DISTINCT BBB.管轄分區 AS 轄管分局,
        BBB.分局電話 AS 分局連絡電話
FROM 主表 AAA
INNER JOIN 消防分隊資訊 BBB ON AAA.消防分隊 = BBB.管轄分區代碼
WHERE AAA."容納人數" > 1000

--四之二
SELECT  DISTINCT BBB.管轄分區 AS 轄管分局,
        BBB.分局電話 AS 分局連絡電話,
        COUNT(*) AS 避難設施大於1000容人數量的設施數量
FROM 主表 AAA
INNER JOIN 消防分隊資訊 BBB ON AAA.消防分隊 = BBB.管轄分區代碼
WHERE AAA."容納人數" > 1000
GROUP BY BBB.管轄分區,BBB.分局電話;

--四之三
SELECT  DISTINCT BBB.管轄分區 AS 轄管分局,
        BBB.分局電話 AS 分局連絡電話,
        COUNT(*) AS 避難設施大於1000容人數量的設施數量,
        AAA."設施地址" AS 避難設施地址,
        CCC."建築物" AS 類型
FROM 主表 AAA
INNER JOIN 消防分隊資訊 BBB ON AAA.消防分隊 = BBB.管轄分區代碼
INNER JOIN 建築物類別 CCC ON AAA."建築物別" = CCC."編號"
WHERE AAA."容納人數" > 1000
GROUP BY BBB.管轄分區,BBB.分局電話,AAA.設施地址,CCC.建築物;

--四之四

SELECT  BBB.管轄分區 AS 轄管分局,
        BBB.分局電話 AS 分局連絡電話,
        AAA."容納人數" AS 容人數量,
        AAA."設施地址" AS 避難設施地址,
        DDD."村里別" AS 村里別 
FROM 主表 AAA
INNER JOIN 消防分隊資訊 BBB ON AAA.消防分隊 = BBB.管轄分區代碼
INNER JOIN 辦公室資訊 DDD ON AAA."村里辦公室" = DDD."村里別代碼"
WHERE AAA."設施地址" LIKE '%中%'

--主表 AAA
--消防分隊資訊 BBB
--建築物類別 CCC
--辦公室資訊 DDD

--四之五

SELECT  DDD."村里別" AS 村里別, 
        DDD.村里辦公室 AS 村里辦公室位置,
        AAA."設施地址" AS 避難設施地址,
        AAA."容納人數" AS 容人數量
        
FROM 主表 AAA
INNER JOIN 建築物類別 CCC ON AAA.建築物別 = CCC.編號
INNER JOIN 辦公室資訊 DDD ON AAA."村里辦公室" = DDD."村里別代碼"
WHERE CCC.編號 = 'B01' OR CCC.編號 = 'B02'

--實作練習五
--五之一
UPDATE 主表
SET 容納人數 = '5000'
WHERE 設施地址 = '苗栗縣竹南鎮和平街79號'

--五之二
DELETE FROM 主表
WHERE 容納人數<1000
