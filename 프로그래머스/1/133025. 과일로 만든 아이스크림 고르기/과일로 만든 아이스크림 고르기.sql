SELECT fh.FLAVOR
from FIRST_HALF fh join ICECREAM_INFO ii on fh.FLAVOR = ii.FLAVOR
where fh.TOTAL_ORDER > 3000 
    AND ii.INGREDIENT_TYPE like 'fruit%'
order by fh.TOTAL_ORDER desc;