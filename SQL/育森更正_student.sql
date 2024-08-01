--��@�m�ߤG
create table MAIN_TABLE(
     �e�ǳ]�I�s�� CHAR(8 BYTE)PRIMARY KEY,
     �]�I�a�} NVARCHAR2(100),
     �e�ǤH�� VARCHAR2(10 BYTE),
     �a�U�Ӽh�� VARCHAR2(10 BYTE),
     �ؿv���O CHAR(8 BYTE),
     �����줽�� CHAR(8 BYTE),
     �������� CHAR(8 BYTE));
     
alter table MAIN_TABLE
add foreign key (�ؿv���O) references �ؿv�����O(�s��);
alter table MAIN_TABLE
add foreign key (�����줽��) references �줽�Ǹ�T(�����O�N�X);
alter table MAIN_TABLE
add foreign key (��������) references ����������T(���Ҥ��ϥN�X);


create table FB_INFORMATION(
     ���Ҥ��ϥN�X CHAR(8 BYTE)PRIMARY KEY,
     ���Ҥ��� NVARCHAR2(20),
     �����a�} VARCHAR2(100 BYTE),
     �����q�� VARCHAR2(10 BYTE)); 

create table BUILDING_CATEGORY(
     �s�� CHAR(8 BYTE)PRIMARY KEY,
     �ؿv�� NVARCHAR2(20)); 
     
create table OFFICE(
     �����O�N�X CHAR(8 BYTE)PRIMARY KEY,
     �����O NVARCHAR2(20),
     �����줽�� NVARCHAR2(100),
     �����줽�ǹq�� VARCHAR2(10 BYTE)); 

--��@�m�ߤT
--�g�J��������T

insert into FB_INFORMATION (���Ҥ��ϥN�X,���Ҥ���,�����a�},�����q��)
values('M001','�˫n����','�]�߿��˫n����ڵ�72��','037474796');
insert into FB_INFORMATION  (���Ҥ��ϥN�X,���Ҥ���,�����a�},�����q��)
values('M002','�]�ߤ���','�]�߿��]�ߥ������109��','037320059');
insert into FB_INFORMATION (���Ҥ��ϥN�X,���Ҥ���,�����a�},�����q��)
values('M003','�Y������','�]�߿��Y����������503��','037663004');

--�g�J�ؿv�����O
insert into BUILDING_CATEGORY (�s��,�ؿv��)
values('B01','���J');
insert into BUILDING_CATEGORY (�s��,�ؿv��)
values('B02','�j��');
insert into BUILDING_CATEGORY (�s��,�ؿv��)
values('B03','���@�]�I');
insert into BUILDING_CATEGORY (�s��,�ؿv��)
values('B04','�p����');

--�g�J�줽�Ǹ�T
insert into OFFICE (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
values('C001','�j�H��','�]�߿��˫n����ڵ�72��','037474796');
insert into OFFICE (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
values('C002','�˫n��','�˫n���q��1035��','037581072');
insert into OFFICE (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
values('C003','�s�Ψ�','�˫n��˫n�����s��103��','037472735');
insert into OFFICE (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
values('C004','�H����','�˫n��s�Ψ������14��','037614186');
insert into OFFICE (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
values('C005','��]��','���s��H����������136-1��','037724839');
insert into OFFICE (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
values('C006','���ڨ�','���ڨ����ڸ�96��','037660001');
insert into OFFICE (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
values('C007','������','���������j��82��','037661145');
insert into OFFICE (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
values('C008','�H�q��','�H�q���H�q��53��1��','037616072');

--�g�J�D��
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S01','�]�߿��˫n���H��20��','100','1','B01','C001','M001');
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S02','�]�߿��˫n��M����79��','3142','1','B02','C002','M001');
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S03','�]�߿��˫n���s�s���T�q142��','1075','1','B02','C003','M001');
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S04','�]�߿����s���ظ�1498��','32','1','B03','C004','M001');
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S05','�]�߿��]�ߥ��̥���80��','106','1','B01','C005','M002');
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S06','�]�߿��]�ߥ����_��117��','26','1','B01','C005','M002');
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S07','�]�߿��]�ߥ��շR��109��','2038','2','B02','C005','M002');
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S08','�]�߿��]�ߥ��j�P��53��','128','2','B02','C005','M002');
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S09','�]�߿��Y�������ڨ��M����102��','353','1','B03','C006','M003');
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S010','�]�߿��Y�������������@��69��','501','1','B04','C007','M003');
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S011','�]�߿��Y�����H�q��������65��','194','1','B01','C008','M003');
insert into �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S012','�]�߿��Y�����H�q��������116��','78','1','B04','C008','M003');
--��@�m�ߥ|

--�|���@

select  distinct BBB.���Ҥ��� as �Һޤ���,
        BBB.�����q�� as �����s���q��
 from STUDENT.MAIN_TABLE AAA
 inner join STUDENT.FB_INFORMATION BBB on AAA.�������� = BBB.���Ҥ��ϥN�X
 where AAA."�e�ǤH��" > 1000;

--�|���G
select  BBB.���Ҥ��� as �Һޤ���,
        BBB.�����q�� as �����s���q��,
        count(�]�I�a�}) over(partition by �]�I�a�}) as �����]�I�j��1000�e�H�ƶq���]�I�ƶq
 from STUDENT.MAIN_TABLE AAA
 inner join STUDENT.FB_INFORMATION BBB on AAA.�������� = BBB.���Ҥ��ϥN�X
 where AAA.�e�ǤH�� > 1000;
--GROUP BY BBB.���Ҥ���,BBB.�����q��;

--�|���T
select  distinct BBB.���Ҥ��� as �Һޤ���,
        BBB.�����q�� as �����s���q��,
        count(*) as �����]�I�j��1000�e�H�ƶq���]�I�ƶq,
        AAA.�]�I�a�} as �����]�I�a�},
        CCC.�ؿv�� as ����
 from STUDENT.MAIN_TABLE AAA
 inner join STUDENT.FB_INFORMATION BBB on AAA.�������� = BBB.���Ҥ��ϥN�X
 inner join STUDENT.BUILDING_CATEGORY CCC on AAA."�ؿv���O" = CCC."�s��"
 where AAA."�e�ǤH��" > 1000
 group by BBB.���Ҥ���,BBB.�����q��,AAA.�]�I�a�},CCC.�ؿv��;

--�|���|

select  BBB.���Ҥ��� as �Һޤ���,
        BBB.�����q�� as �����s���q��,
        AAA."�e�ǤH��" as �e�H�ƶq,
        AAA."�]�I�a�}" as �����]�I�a�},
        DDD."VILLAGE" as �����O 
 from STUDENT.MAIN_TABLE AAA
 inner join STUDENT.FB_INFORMATION BBB ON AAA.�������� = BBB.���Ҥ��ϥN�X
 inner join STUDENT.OFFICE DDD ON AAA."�����줽��" = DDD."OFFICE_NUMBER"
 where AAA."�]�I�a�}" LIKE '%��%';

--�D�� AAA
--����������T BBB
--�ؿv�����O CCC
--�줽�Ǹ�T DDD

--�|����

SELECT  DDD.�����O AS �����O, 
        DDD.�����줽�� AS �����줽�Ǧ�m,
        AAA.�]�I�a�} AS �����]�I�a�},
        AAA.�e�ǤH�� AS �e�H�ƶq
        
FROM �D�� AAA
INNER JOIN �ؿv�����O CCC ON AAA.�ؿv���O = CCC.�s��
INNER JOIN �줽�Ǹ�T DDD ON AAA.�����줽�� = DDD."�����O�N�X"
WHERE CCC.�s�� = 'B01' OR CCC.�s�� = 'B02'
--where ccc.�s�� in('B01','B02') 

--��@�m�ߤ�
--�����@
UPDATE �D��
SET �e�ǤH�� = '5000'
WHERE �]�I�a�} = '�]�߿��˫n��M����79��'


--�����G
DELETE FROM �D��
WHERE �e�ǤH�� < 1000
