/*

Questions: 

Show first_name, last_name, and the total number of admissions attended for each doctor.

Every admission has been attended by a doctor.

*/

Solution : 

select doctors.first_name, doctors.last_name, count(*) 
from admissions
left join doctors
on 
admissions.attending_doctor_id = doctors.doctor_id
group by admissions.attending_doctor_id 
order by admissions.attending_doctor_id 
asc