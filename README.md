# JOIN - 데이터베이스 팀 프로젝트

이화여대 데이터베이스 과목 팀 프로젝트 레포지토리입니다.

## 개발 환경

| 항목 | 버전 |
|------|------|
| JDK | 17 (또는 팀 내 통일 버전으로 수정) |
| MySQL | 8.0 |
| JDBC Driver | mysql-connector-j-8.x.x.jar |
| IDE | IntelliJ IDEA / Eclipse |

## 시작하기

### 1. JDBC 드라이버 설치
`lib/` 폴더에 `mysql-connector-j-8.x.x.jar` 파일을 넣고 IDE에서 classpath에 추가하세요.
- 다운로드: https://dev.mysql.com/downloads/connector/j/ (Platform Independent 선택)

### 2. DB 연결 설정
`src/util/DBUtil.java` 파일을 열어 아래 3가지를 본인 환경에 맞게 수정하세요:
```java
private static final String DB_URL  = "jdbc:mysql://localhost:3306/join_db?...";
private static final String DB_USER = "root";           // 본인 MySQL 계정
private static final String DB_PASS = "your_password";  // 본인 MySQL 비밀번호
```
> ⚠ `DBUtil.java`의 비밀번호는 절대 커밋하지 마세요.

### 3. DB 스키마 초기화
MySQL Workbench 또는 CLI에서 순서대로 실행:
```
1. sql/dropschema.sql   (기존 테이블 삭제)
2. sql/createschema.sql (테이블 생성)
3. sql/initdata.sql     (초기 데이터 삽입)
```

## 폴더 구조

```
├── sql/            # SQL 파일 (스키마, 초기 데이터)
├── src/
│   ├── Main.java   # 메인 진입점 (메뉴)
│   └── util/
│       └── DBUtil.java  # DB 연결 유틸리티
├── lib/            # JDBC .jar 파일 (각자 추가, gitignore 아님)
├── docs/           # 제안서, ERD, 설계 문서
└── README.md
```

## 브랜치 전략

```
main      ← 최종 제출용 (PR + PM 승인 필수)
  └── develop  ← 기능 통합 브랜치
        └── feature/req##-기능명  ← 개인 작업 브랜치
```

**절대 `main`에 직접 push하지 마세요.**

## 커밋 메시지 규칙

```
feat: [REQ10] 로그인 기능 구현
fix:  [REQ05] 쿼리 오류 수정
docs: ERD 업데이트
sql:  [REQ03] 테이블 컬럼 추가
```

## 작업 흐름

```bash
# 1. develop 최신화
git checkout develop && git pull origin develop

# 2. 내 브랜치 생성
git checkout -b feature/req10-login

# 3. 작업 후 커밋
git add src/LoginService.java
git commit -m "feat: [REQ10] 로그인 기능 구현"

# 4. develop에 PR 생성 (GitHub에서)
git push origin feature/req10-login
```

## 팀원

| 이름 | 담당 REQ | 브랜치 |
|------|----------|--------|
| (PM) | - | - |
| 팀원2 | REQ?? | feature/req??-... |
| 팀원3 | REQ?? | feature/req??-... |
| 팀원4 | REQ?? | feature/req??-... |
| 팀원5 | REQ?? | feature/req??-... |
| 팀원6 | REQ?? | feature/req??-... |
| 팀원7 | REQ?? | feature/req??-... |
