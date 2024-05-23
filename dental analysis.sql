use dentistry;

-- Table creation/Drop

create table Provider_login(Provider_Id int,User_Name varchar(30),Pass_word varchar(10));
create table Patient(Pt_Id int primary key,Pt_Name varchar(30),Data_Created_Date date);
create table Patient_In(Pt_Id int primary key,Pt_Name varchar(30),DOB date,Address varchar(100),
                          Insurance varchar(20),Insurance_Name varchar(30),Insurance_type varchar(30));
create table Appointment1(Provider_Id int,Provider_Name varchar(30),Pt_Name varchar(30),Pt_Age int,
                          Pt_Gender Varchar(20),Appt_Date_time datetime,Reason varchar(100),Cost int);
drop  table provider_login;
create table Med_history
(Provider_Id int,Pt_Id int,X_Ray varchar(50),Allergy varchar(50),Disease varchar(50),
Pregnant varchar(30),Pregnant_Week varchar(30),Medication_prior varchar(200),
prescription varchar(300),Prescription_List varchar(100),current_Health varchar(100));
drop table Patient_Info;
drop table appointment;
drop table Dental_history;
drop table Dent_Historys;
drop table dentalhistory;
drop table Appointmentss;

-- Insertion/selection

Insert into Provider_login()
Values(001,"Collen chambers","collen123"),(002,"Neha Das","Neha456"),(003,"Alec Eidelman","Alex789"),
(004,"Andrew Fraser","Andrew135"),(005,"Khara Gresham","Khara790"),(006,"Peixi Liao","Peixi346"),
(007,"Dhara shah","Dhara890"),(008,"Jie Sun","Jie258"),(009,"Ann Tano","Ann690"),(010,"Divya Upadhya","Div195");
Select * from Provider_login;

Insert into Patient(Pt_Id,Pt_Name,Data_Created_Date)
values(01,"Riven","2023-01-01"),(02,"Zevy","2023-01-01"),(03,"Wilbie","2023-01-01"),(04,"Mara","2023-01-01"),
(05,"Airla","2023-01-01"),(06,"Taj","2023-01-01"),(07,"Zylan","2023-01-01"),(08,"Lettie","2023-01-01"),
(09,"Senna","2023-01-01"),(10,"Alara","2023-01-01"),(11,"Isla","2023-01-01"),(12,"Haven","2023-01-01"),
(13,"Everly","2023-01-01"),(14,"Eva","2023-01-01"),(15,"April","2023-02-01"),(16,"Joe","2023-02-01"),
(17,"alfred","2023-02-01"),(18,"Dexter","2023-02-01"),(19,"Alden","2023-02-01"),(20,"June","2023-02-01"),
(21,"Sam","2023-02-01"),(22,"Ruth","2023-02-01"),(23,"Margaret","2023-02-01"),(24,"Tony","2023-02-01"),
(25,"Spencer","2023-02-01"),(26,"Marvel","2023-02-01"),(27,"cornelison","2023-02-01"),(28,"Huntsmen","2023-02-01"),
(29,"Tia","2023-02-01"),(30,"Mary","2023-02-01");
select * from Patient;

Insert into Patient_In(Pt_Id,Pt_Name,DOB ,Address,Insurance ,Insurance_Name,Insurance_type)
values(01,"Riven","1980-01-18", "2-16Extn-A Milwakee WI-532002","Yes","Cigna Dental","PPO"),
(02,"Zevy","1982-01-24", "2-17Extn-F Milwakee WI-532002","Yes","Cigna Dental","PPO"),
(03,"Wible","1990-02-24", "1-3Extn-Z Milwakee WI-532008","Yes"," Metlife dental","PPO"),
(04,"Mara","1992-03-19"," 13-6Backstreet Milwakee WI-532001","Yes","Metlife Dental","PPO"),
(05,"Airla","1974-10-20", "77BExtn-A Milwakee WI-532005","Yes","BCBS","HMO"),
(06,"Taj","1985-08-18","2-14Extn-F Milwakee WI-532002","Yes","Cigna Dental","PPO"),
(07,"Zylan","1984-06-05","2-15Extn-F Milwakee WI-532002","Yes",",""Metlife dental","PPO"),
(08,"Lettie","1992-07-06","32bExtn-F Milwakee WI-5320012","YesBCBS","HMO"),
(09,"Senna","1994-10-12","F17Extn-F Milwakee WI-532012","Yes","Delta dental","PPO"),
(10,"Alara","2000-12-11","H18Extn-H Milwakee WI-532002","Yes","Delta Dental","PPO"),
(11,"Isla","2000-11-30","33B Gold Bunk Milwakee WI-532002","Yes","delta Dental","PPO"),
(12,"Haven","2010-12-12","1331A Richmond street Milwakee WI-532002","Yes","BCBS","HMO"),
(13,"Everly","2020-12-01","1367Extn-F Milwakee WI-532002","Yes","Aetna","PPO"),
(14,"Eva","1998-12-03","458Extn-N Milwakee WI-532006","Yes","Aetna","PPO"),
(15,"April","1997-04-06","211AMilwakee WI-532015","Yes","Aetna","PPO"),
(16,"Joe","1997-05-02","19AMinimart Milwakee WI-532018","Yes","BCBS ","HMO"),
(17,"Alfred","1982-10-11","16ZMetrostreet Milwakee WI-532020","Yes","Cigna Dental","PPO"),
(18,"dexter","1976-08-18","2112EExtn-F Milwakee WI-532022","No","Null","Null"),
(19,"Alden","1996-10-18","2ENorthwest univeristy Milwakee WI-532048","Onprocess","onprocess","onprocess"),
(20,"June","1985-10-08","2MMilwakee WI-532048","Yes","Cigna Dental","PPO"),
(21,"Sam","1990-10-10","2EMinimart  Milwakee WI-532018","Onprocess","onprocess","onprocess"),
(22,"Ruth","1998-12-03","1348Metro street Milwakee WI-532012","Onprocess","Onprocess","Onprocess"),
(23,"Margret","1975-11-06","458MN street Milwakee WI-532035","Yes","Cigna Dental","PPO"),
(24,"Tony","1960-10-19","1988Nstreet Milwakee WI-532048","Yes","Metlife Dental","HMO"),
(25,"spencer","1988-10-08","134Bminimart  Milwakee WI-532048","Yes","Aetna","PPO"),
(26,"Marvel","1988-10-08","17Bbackstreet Milwakee WI-532028","Yes","BCBS","HMO"),
(27,"Cornelison","1965-10-08","1342Extn-BC Milwakee WI-532048","Yes","Cigna Dental","PPO"),
(28,"Huntsmen","1990-10-10","2BNminimart  Milwakee WI-532018","Onprocess","onprocess","onprocess"),
(29,"Tia","1985-10-08","2MMilwakee WI-532048","Yes","Cigna Dental","PPO"),
(30,"Mary","1998-10-14","2EMinimart Milwakee WI-532018","Onprocess","onprocess","onprocess");
select * from patient_In;

Insert into Appointment1(Provider_Id,Provider_Name,Pt_Name,Pt_Age,Pt_Gender,Appt_Date_Time,Reason,cost)
values
(001,"Collen chambers","Ruth",26,"Female",'2024-05-22 11:00:00',"Toothache",1000),
(001,"Collen chambers","sam",34,"Male",'2024-05-22 11:30:00',"Scaling",2000),
(001,"Collen chambers","Margret",49,"Female",'2024-05-22 12:00:00',"toothache",1000),
(001,"Collen chambers","Joe",27,"Male",'2024-05-22 13:00:00',"RCT",4000),
(002,"Neha Das","April",27,"Female",'2024-05-25 16:00:00',"Bridge Fixing",15000),
(002,"Neha Das","Dexter",48,"Male",'2024-05-25 17:00:00',"Implant treatment",25000),
(002,"Neha Das","Tony",27,"Male",'2024-05-25 18:00:00',"Cavity",1500),
(003,"Alec Eidelman","Zylan",40,"Male",'2024-05-27 13:00:00',"Severe toothache",3000),
(004,"Andrew Fraser","Spencer",36,"Male",'2024-05-27 13:00:00',"Dental emergency",30000),
(005,"Khara Gresham","Joe",27,"Male",'2024-05-30 17:00:00',"Ceramic Tooth fixing",8000),
(006,"Peixi Liao","Eva",26,"Female",'2024-06-01 17:00:00',"RCT",4000),
(007,"Dhara shah","Zevy",44,"Female",'2024-06-01 13:00:00',"Scaling",2000),
(008,"Jie Sun","senna",30,"female",'2024-06-01 15:45:00',"Orthodontal checkup",2500),
(009,"Ann Tano","Alara",24,"Female",'2024-06-02 16:30:00',"Invisalign",50000),
(010,"Divya Upadhya","Zevy",44,"Female",'2024-06-06 16:00:00',"Toothache",1000);
select * from Appointment1;

Insert into Med_history
(Provider_Id,Pt_Id ,X_Ray,Allergy,Disease,Pregnant,Pregnant_Week,
Medication_prior,Prescription,Prescription_List,current_Health)
Values
(001,22,"Bitewing X-ray","No","gum","No","Null","No",
"Brushing twice a day and taking regular checkups will help in getting rid of aches",
"paradontax paste;flagyl-6[3days];Intario-P[3days]","Better--Need more attention"),
(001,21,"Bitewing X-ray","N0","No","Null","Null","No",
"Scaling treatment has to be done whenever possible to keep the tooth clean and to avoid
dent","Book your appointment soon","Good"),
(001,23,"Bitewing X-ray","No","gum","No","Null","No",
"Brushing twice a day and taking regular checkups will help in getting rid of aches",
"paradontax paste;flagyl-6[3days];Intario-P[3days]","Better--Need more attention"),
(001,16,"panaromic X-ray","No","Cavities","Null","Null","Antibiotics",
"proceed with the root canal treatment immediately to avoid futher infections",
"Treatment in next schedule and Ketanov" ,"Slightly affected"),
(002,15,"Done already","No","No","No","No","No",
"Doing better after the all the treatment can avoid taking medicines",
"Visit Incase of any discomfort or pain","Great"),
(002,18,"Panaromic_Xrays","No","No","Null","Null","No",
"Loss of teeth so Implant process has to be done no Medication needed in prior",
"Book Next appointment to get it fixed","should give good care"),
(002,24,"bitewing X-ray","No","cavities","Null","Null","No",
"Cavity has to cleaned,paradontax toothpaste recommended","Paradontox paste and flagyl[3days]",
"Can be treated earlier"),
(003,07,"Bitewing X-ray","No","gum","Null","Null","No",
"Brushing twice a day and taking regular checkups will help in getting rid of aches",
"paradontax paste;flagyl-6[3days];Intario-P[3days]","Better--Need more attention"),
(004,25,"panaromic and bitewing","No","No","Null","Null","No",
"Tooth broken and loss of blood","Amflor mouth wash and gentle bristtle brush",
"Good"),
(005,16,"Null","No","No","Null","Null","No",
"Ceramic toothcap fixed can visit incase of any disregulations","None",
"Good"),
(006,14,"panaromic X-ray","No","Cavities","No","No","Antibiotics",
"proceed with the root canal treatment immediately to avoid futher infections",
"Treatment in next schedule and Ketanov" ,"Slightly affected"),
(007,02,"Bitewing X-ray","N0","No","No","No","No",
"Scaling treatment has to be done whenever possible to keep the tooth clean and to avoid
dent","Book your appointment soon","Good"),
(008,09,"full mouth X-ray","No","No","No","No","No",
"Checked alignment of tooth. Needs regular checkups to complete proper alignment",
"None","Good"),
(009,10,"Full mouth X-ray","No","No","Null","Null","No",
"Aligning process is  good ; Can see better results than before","None",
"Perfect"),
(010,02,"Bitewing X-ray","No","gum","No","Null","No",
"Brushing twice a day and taking regular checkups will help in getting rid of aches",
"paradontax paste;flagyl-6[3days];Intario-P[3days]","Better--Need more attention");
select * from Dentalhistory;














