-- 코드를 입력하세요
SELECT
date_format(SALES_DATE,'%Y-%m-%d')as SALES_DATE,
PRODUCT_ID,USER_ID,SALES_AMOUNT
from online_sale
where date_format(SALES_DATE,'%Y-%m') = '2022-03'

union

SELECT
date_format(SALES_DATE,'%Y-%m-%d')as SALES_DATE,
PRODUCT_ID, null 'USER_ID', SALES_AMOUNT
from OFFLINE_SALE 
where date_format(SALES_DATE,'%Y-%m') = '2022-03'
order by SALES_DATE,PRODUCT_ID,USER_ID