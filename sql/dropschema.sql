-- ============================================================
-- DROP SCHEMA (테이블 삭제 - 재설치 시 사용)
-- 실행 순서: 1. dropschema.sql → 2. createschema.sql → 3. initdata.sql
-- ⚠ 주의: 모든 데이터가 삭제됩니다!
-- ============================================================

SET FOREIGN_KEY_CHECKS = 0;

-- TODO: 생성한 테이블을 역순으로 DROP 하세요
-- 예시:
-- DROP TABLE IF EXISTS users;

SET FOREIGN_KEY_CHECKS = 1;
