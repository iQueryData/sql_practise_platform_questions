/*

Display the total amount of patients for each province. Order by descending.

*/

Solution : 

select province_names.province_name,count(*) from patients
left join 
province_names
on patients.province_id = province_names.province_id
group by patients.province_id order by count(*) desc