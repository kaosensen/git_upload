--��@�m�ߤG
CREATE table �D��(
     �e�ǳ]�I�s�� CHAR(8 BYTE)PRIMARY KEY,
     �]�I�a�} NVARCHAR2(100),
     �e�ǤH�� VARCHAR2(10 BYTE),
     �a�U�Ӽh�� VARCHAR2(10 BYTE),
     �ؿv���O CHAR(8 BYTE),
     �����줽�� CHAR(8 BYTE),
     �������� CHAR(8 BYTE));

ALTER TABLE �D��
ADD FOREIGN KEY (�ؿv���O) REFERENCES �ؿv�����O(�s��);
ALTER TABLE �D��
ADD FOREIGN KEY (�����줽��) REFERENCES �줽�Ǹ�T(�����O�N�X);
ALTER TABLE �D��
ADD FOREIGN KEY (��������) REFERENCES ����������T(���Ҥ��ϥN�X);


CREATE table ����������T(
     ���Ҥ��ϥN�X CHAR(8 BYTE)PRIMARY KEY,
     ���Ҥ��� NVARCHAR2(20),
     �����a�} VARCHAR2(100 BYTE),
     �����q�� VARCHAR2(10 BYTE)); 

CREATE table �ؿv�����O(
     �s�� CHAR(8 BYTE)PRIMARY KEY,
     �ؿv�� NVARCHAR2(20)); 
     
CREATE table �줽�Ǹ�T(
     �����O�N�X CHAR(8 BYTE)PRIMARY KEY,
     �����O NVARCHAR2(20),
     �����줽�� NVARCHAR2(100),
     �����줽�ǹq�� VARCHAR2(10 BYTE)); 

--��@�m�ߤT
--�g�J��������T
INSERT INTO ����������T (���Ҥ��ϥN�X,���Ҥ���,�����a�},�����q��)
VALUES('M001','�˫n����','�]�߿��˫n����ڵ�72��','037474796');
INSERT INTO ����������T  (���Ҥ��ϥN�X,���Ҥ���,�����a�},�����q��)
VALUES('M002','�]�ߤ���','�]�߿��]�ߥ������109��','037320059');
INSERT INTO ����������T (���Ҥ��ϥN�X,���Ҥ���,�����a�},�����q��)
VALUES('M003','�Y������','�]�߿��Y����������503��','037663004');

--�g�J�ؿv�����O
INSERT INTO �ؿv�����O (�s��,�ؿv��)
VALUES('B01','���J');
INSERT INTO �ؿv�����O (�s��,�ؿv��)
VALUES('B02','�j��');
INSERT INTO �ؿv�����O (�s��,�ؿv��)
VALUES('B03','���@�]�I');
INSERT INTO �ؿv�����O (�s��,�ؿv��)
VALUES('B04','�p����');

--�g�J�줽�Ǹ�T
INSERT INTO �줽�Ǹ�T (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
VALUES('C001','�j�H��','�]�߿��˫n����ڵ�72��','037474796');
INSERT INTO �줽�Ǹ�T (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
VALUES('C002','�˫n��','�˫n���q��1035��','037581072');
INSERT INTO �줽�Ǹ�T (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
VALUES('C003','�s�Ψ�','�˫n��˫n�����s��103��','037472735');
INSERT INTO �줽�Ǹ�T (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
VALUES('C004','�H����','�˫n��s�Ψ������14��','037614186');
INSERT INTO �줽�Ǹ�T (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
VALUES('C005','��]��','���s��H����������136-1��','037724839');
INSERT INTO �줽�Ǹ�T (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
VALUES('C006','���ڨ�','���ڨ����ڸ�96��','037660001');
INSERT INTO �줽�Ǹ�T (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
VALUES('C007','������','���������j��82��','037661145');
INSERT INTO �줽�Ǹ�T (�����O�N�X,�����O,�����줽��,�����줽�ǹq��)
VALUES('C008','�H�q��','�H�q���H�q��53��1��','037616072');

--�g�J�D��
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S01','�]�߿��˫n���H��20��','100','1','B01','C001','M001');
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S02','�]�߿��˫n��M����79��','3142','1','B02','C002','M001');
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S03','�]�߿��˫n���s�s���T�q142��','1075','1','B02','C003','M001');
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S04','�]�߿����s���ظ�1498��','32','1','B03','C004','M001');
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S05','�]�߿��]�ߥ��̥���80��','106','1','B01','C005','M002');
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S06','�]�߿��]�ߥ����_��117��','26','1','B01','C005','M002');
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S07','�]�߿��]�ߥ��շR��109��','2038','2','B02','C005','M002');
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S08','�]�߿��]�ߥ��j�P��53��','128','2','B02','C005','M002');
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S09','�]�߿��Y�������ڨ��M����102��','353','1','B03','C006','M003');
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S010','�]�߿��Y�������������@��69��','501','1','B04','C007','M003');
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S011','�]�߿��Y�����H�q��������65��','194','1','B01','C008','M003');
INSERT INTO �D�� (�e�ǳ]�I�s��,�]�I�a�},�e�ǤH��,�a�U�Ӽh��,"�ؿv���O","�����줽��","��������")
VALUES('S012','�]�߿��Y�����H�q��������116��','78','1','B04','C008','M003');
--��@�m�ߥ|

--�|���@
SELECT  DISTINCT BBB.���Ҥ��� AS �Һޤ���,
        BBB.�����q�� AS �����s���q��
FROM �D�� AAA
INNER JOIN ����������T BBB ON AAA.�������� = BBB.���Ҥ��ϥN�X
WHERE AAA."�e�ǤH��" > 1000

--�|���G
SELECT  DISTINCT BBB.���Ҥ��� AS �Һޤ���,
        BBB.�����q�� AS �����s���q��,
        COUNT(*) AS �����]�I�j��1000�e�H�ƶq���]�I�ƶq
FROM �D�� AAA
INNER JOIN ����������T BBB ON AAA.�������� = BBB.���Ҥ��ϥN�X
WHERE AAA."�e�ǤH��" > 1000
GROUP BY BBB.���Ҥ���,BBB.�����q��;

--�|���T
SELECT  DISTINCT BBB.���Ҥ��� AS �Һޤ���,
        BBB.�����q�� AS �����s���q��,
        COUNT(*) AS �����]�I�j��1000�e�H�ƶq���]�I�ƶq,
        AAA."�]�I�a�}" AS �����]�I�a�},
        CCC."�ؿv��" AS ����
FROM �D�� AAA
INNER JOIN ����������T BBB ON AAA.�������� = BBB.���Ҥ��ϥN�X
INNER JOIN �ؿv�����O CCC ON AAA."�ؿv���O" = CCC."�s��"
WHERE AAA."�e�ǤH��" > 1000
GROUP BY BBB.���Ҥ���,BBB.�����q��,AAA.�]�I�a�},CCC.�ؿv��;

--�|���|

SELECT  BBB.���Ҥ��� AS �Һޤ���,
        BBB.�����q�� AS �����s���q��,
        AAA."�e�ǤH��" AS �e�H�ƶq,
        AAA."�]�I�a�}" AS �����]�I�a�},
        DDD."�����O" AS �����O 
FROM �D�� AAA
INNER JOIN ����������T BBB ON AAA.�������� = BBB.���Ҥ��ϥN�X
INNER JOIN �줽�Ǹ�T DDD ON AAA."�����줽��" = DDD."�����O�N�X"
WHERE AAA."�]�I�a�}" LIKE '%��%'

--�D�� AAA
--����������T BBB
--�ؿv�����O CCC
--�줽�Ǹ�T DDD

--�|����

SELECT  DDD."�����O" AS �����O, 
        DDD.�����줽�� AS �����줽�Ǧ�m,
        AAA."�]�I�a�}" AS �����]�I�a�},
        AAA."�e�ǤH��" AS �e�H�ƶq
        
FROM �D�� AAA
INNER JOIN �ؿv�����O CCC ON AAA.�ؿv���O = CCC.�s��
INNER JOIN �줽�Ǹ�T DDD ON AAA."�����줽��" = DDD."�����O�N�X"
WHERE CCC.�s�� = 'B01' OR CCC.�s�� = 'B02'

--��@�m�ߤ�
--�����@
UPDATE �D��
SET �e�ǤH�� = '5000'
WHERE �]�I�a�} = '�]�߿��˫n��M����79��'

--�����G
DELETE FROM �D��
WHERE �e�ǤH��<1000
