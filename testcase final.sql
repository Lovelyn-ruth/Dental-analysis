use dentistry;
 
 -- 1. Listing Patient using data created date and selecting provider using ID :
 
 select Pt_Id,Pt_Name from patient where data_created_date="2023-01-01";
 select User_Name from Provider_login where Provider_Id=001 or Provider_Id=010;
 
 -- 2.counting appointments for each provider :
 
 select Provider_Name,Count(*) as counts from appointment1 
 group by Provider_Name;
 
 -- 3. listing appointment date and time for a specific provider :
 
 select Provider_Id,Provider_Name,Appt_date_time from appointment1
 where Provider_Id=001;
 
 -- 4. finding the highest treatment cost :
 
 select Reason,avg(cost) as costs,max(cost) as max_cost from appointment1 
 group by reason
 order by max_cost desc
 limit 1;
 
 -- 5. combining Insurance name and type using concat() function:
 
 select concat(Insurance_Name ,"-",Insurance_type ) as Insurances 
 from Patient_In;
 
 -- 6. ranking based on appointment :
 
 select * ,dense_rank() over( partition by reason order by cost desc)
from Appointment1;

-- 7.updating record in an table :

update  Med_history set Pregnant="Yes"
where Pt_Id=22;
update  Med_history set Pregnant_week="twelve-months"
where Pt_Id=22;
select * from Med_history;

-- 8. droping column from table :

alter table Med_history drop column Allergy;
select * from Med_history;

-- 9. Joins:

select P.Pt_Name as P_name,I.Pt_Name as I_name
from patient as P
right join Patient_In as I
on P.Pt_Name=I.Pt_Name;

-- 10. aggregate function

select Sum(cost) as highest,max(cost) as high,min(cost) as low from Appointment1;

-- 11. String function

select Upper(User_Name) as Uppercase,Lower(User_Name) as Lowercase from Provider_login;
select prescription,length(prescription) from Med_history;

