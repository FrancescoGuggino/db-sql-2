select * 
from students 
join degrees on students.degree_id = degrees.id 
where degrees.name = "Corso di Laurea in Economia"

select * 
from degrees
join departments on degrees.department_id = departments.id
where departments.name = "Dipartimento di Neuroscienze" and degrees.`level` = "magistrale"

select *
from courses 
join course_teacher on course_teacher.course_id = courses.id
join teachers on course_teacher.teacher_id = teachers.id 
where teachers.id  = "44"

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
-- relativo dipartimento, in ordine alfabetico per cognome e nome

select students.surname, students.name, degrees.name , departments.name 
from students
join degrees on students.degree_id = degrees.id
join departments on degrees.department_id = departments.id
order by students.surname asc

-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

select *
from degrees
join courses on degrees.id = courses.degree_id
join course_teacher on courses.id = course_teacher.course_id 
join teachers on course_teacher.teacher_id = teachers.id

-- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)

select distinct teachers.name, teachers.surname, departments.name 
from teachers
join course_teacher on teachers.id = course_teacher.teacher_id
join courses on course_teacher.course_id = courses.id
join degrees on courses.degree_id = degrees.id 
join departments on degrees.department_id = departments.id
where departments.name = "Dipartimento di Matematica"

-- BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
-- superare ciascuno dei suoi esami

select *
from students
join exam_student on students.id = exam_student.student_id 
join exams on exam_student.exam_id = exams.id 
join courses on exams.course_id = courses.id





