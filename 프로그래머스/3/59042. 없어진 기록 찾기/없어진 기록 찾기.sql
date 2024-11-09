-- 코드를 입력하세요
# SELECT ai.ANIMAL_ID, ao.NAME
# from ANIMAL_INS as ai
# inner join 
# ANIMAL_OUTS as ao
# on ai.ANIMAL_ID = ao.ANIMAL_ID
# where ao.DATETIME is not null
# AND
# ai.DATETIME

-- 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회하는 SQL
-- 차집합
# SELECT ANIMAL_ID, NAME FROM ANIMAL_OUTS
# EXCEPT
# SELECT ANIMAL_ID, NAME FROM ANIMAL_INS

SELECT ANIMAL_ID, NAME
    FROM ANIMAL_OUTS 
    WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_INS)
    ORDER BY ANIMAL_ID
