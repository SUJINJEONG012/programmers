-- 코드를 입력하세요
select ANIMAL_ID,
NAME
from animal_ins
where INTAKE_CONDITION = 'sick'
order by ANIMAL_ID