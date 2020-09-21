use NIITDb;

-- Exercise 3
-- Exercise 1.1

select count(Student_Id),Start_Date 
from Student_Status,ModuleDetails 
where Student_Status.Module_Id = ModuleDetails.Module_Id 
group by Student_Status.Start_Date;

-- Exercise 1.2

select count(Student_Id),Start_Date 
from Student_Status 
where Faculty_Id='F001' 
group by Start_Date;

-- Exercise 1.3

select count(Student_Id),Start_Date 
from Student_Status 
where Faculty_Id='F001' 
group by Start_Date 
having count(Student_Id)>2;

-- Exercise 1.4

select * 
from ModuleDetails 
order by Module_Duration asc;

-- Exercise 1.5

select Student_Name 
from StudentDetails 
where Student_Id 
in(	select Student_Id 
	from Student_Status,ModuleDetails 
    where Student_Status.Module_Id = ModuleDetails.Module_Id) 
order by Student_Name;

-- Exercise 2.1

select Faculty_Id,Batch_Id from Student_Status;

-- Exercise 2.2

select * 
from BatchDetails 
inner join Student_Status
on BatchDetails.Batch_Id=Student_Status.Batch_Id;

-- Exercise 2.3/2.4

select Student_Id 
from Student_Status 
right join FacultyDetails 
on(Student_Status.Faculty_Id = FacultyDetails.Faculty_Id);

-- Exercise 2.5

select Student_Id,FacultyDetails.Faculty_Id 
from Student_Status 
left join FacultyDetails 
on Student_Status.Faculty_Id = FacultyDetails.Faculty_Id 
union 
select Student_Id,FacultyDetails.Faculty_Id 
from Student_Status 
right join FacultyDetails 
on Student_Status.Faculty_Id = FacultyDetails.Faculty_Id;








