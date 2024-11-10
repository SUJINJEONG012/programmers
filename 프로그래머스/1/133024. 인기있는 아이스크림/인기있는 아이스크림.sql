-- SHIPMENT_ID  출하 번호
-- FLAVOR 아이스크림 맛,
-- TOTAL_ORDER 상반기 아이스크림 총주문량

SELECT FLAVOR from 
FIRST_HALF
order by TOTAL_ORDER desc, SHIPMENT_ID asc