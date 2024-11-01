-- 코드를 입력하세요
SELECT b.CATEGORY, sum(SALES) as total_sales
from BOOK_SALES bs inner join book b on bs.BOOK_ID = b.BOOK_ID
WHERE DATE_FORMAT(bs.SALES_DATE, '%Y-%m') = '2022-01'
group by b.CATEGORY
order by CATEGORY;


