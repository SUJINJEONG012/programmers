# -- 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물
# select ANIMAL_ID, NAME
# from ANIMAL_OUTS -- 입양보낸동물 테이블
# where ANIMAL_ID not in (select ANIMAL_ID from ANIMAL_INS)
# order by ANIMAL_ID
# -- 동물보호소에 들어온 동물(ANIMAL_INS)


select ao.ANIMAL_ID, ao.name
from ANIMAL_OUTS ao
left join ANIMAL_INS ai on
ao.ANIMAL_ID = ai.ANIMAL_ID
where ai.ANIMAL_ID is null
order by ao.ANIMAL_ID