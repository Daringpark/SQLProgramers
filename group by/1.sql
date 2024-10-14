-- 다음은 중고 거래 게시판 정보를 담은 USED_GOODS_BOARD 테이블과 중고 거래 게시판 사용자 정보를 담은 USED_GOODS_USER 테이블입니다.
-- USED_GOODS_BOARD 테이블은 다음과 같으며 BOARD_ID, WRITER_ID, TITLE, CONTENTS, PRICE, CREATED_DATE, STATUS, VIEWS는
-- 게시글 ID, 작성자 ID, 게시글 제목, 게시글 내용, 가격, 작성일, 거래상태, 조회수를 의미합니다.

-- Q. USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 완료된 중고 거래의 총금액이 70만 원 이상인 사람의
-- 회원 ID, 닉네임, 총거래금액을 조회하는 SQL문을 작성해주세요.
-- 결과는 총거래금액을 기준으로 오름차순 정렬해주세요.

-- 코드를 입력하세요
-- STATUS(BOARD) DONE, SUM(PRICE) AS TOTAL_SALES(BOARD)
-- WRITER_ID(BOARD) == USER_ID(USER)

-- OUTPUT COL : USER_ID, NICKNAME, (USER)   TOTAL_SALES(BOARD)
SELECT WRITER_ID, NICKNAME, SUM(PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD AS A LEFT JOIN USED_GOODS_USER AS B
ON WRITER_ID = USER_ID
WHERE STATUS LIKE 'DONE'
GROUP BY WRITER_ID
HAVING TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES ASC
-- COL NAME -> UNIQUE