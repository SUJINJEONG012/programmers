-- 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회
SELECT ai.ANIMAL_ID, ai.NAME
from ANIMAL_INS ai
inner join ANIMAL_OUTS ao
on ai.ANIMAL_ID =  ao.ANIMAL_ID
where ai.DATETIME > ao.DATETIME
order by ai.DATETIME 