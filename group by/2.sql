-- 낚시앱에서 사용하는 FISH_INFO 테이블은 잡은 물고기들의 정보를 담고 있습니다.
-- FISH_INFO 테이블의 구조는 다음과 같으며 ID, FISH_TYPE, LENGTH, TIME은
-- 각각 잡은 물고기의 ID, 물고기의 종류(숫자), 잡은 물고기의 길이(cm), 물고기를 잡은 날짜를 나타냅니다.

-- Q. 월별 잡은 물고기의 수와 월을 출력하는 SQL문을 작성해주세요.
-- 잡은 물고기 수 컬럼명은 FISH_COUNT, 월 컬럼명은 MONTH로 해주세요.
-- 결과는 월을 기준으로 오름차순 정렬해주세요.
-- 단, 월은 숫자형태 (1~12) 로 출력하며 9 이하의 숫자는 두 자리로 출력하지 않습니다.
-- 잡은 물고기가 없는 월은 출력하지 않습니다.

-- 더 간단하게 작성하는 방법
SELECT COUNT(ID) AS FISH_COUNT,
MONTH(TIME) AS MONTH
FROM FISH_INFO
GROUP BY MONTH(TIME)
ORDER BY MONTH ASC;

-- 코드를 작성해주세요
SELECT COUNT(*) AS FISH_COUNT,
EXTRACT(MONTH FROM TIME) AS MONTH
FROM FISH_INFO
GROUP BY EXTRACT(MONTH FROM TIME)
ORDER BY MONTH ASC;
