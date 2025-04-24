--Q: For each doctor, display their id, full name, and the first and last admission date they attended.


--Solution : 

select d.doctor_id, concat(d.first_name," ",d.last_name) as full_name,
min(a.admission_date) as first_admission_date,
max(a.admission_date) as last_admission_date
from doctors d left join
admissions a on d.doctor_id = a.attending_doctor_id group by d.doctor_id