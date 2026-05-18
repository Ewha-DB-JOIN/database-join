### PR 타입 (하나 이상 선택)
- [ ] feat : 새 기능 구현
- [ ] fix : 버그 수정
- [ ] sql : SQL 파일 변경 (schema / data)
- [ ] refactor : 코드 구조 개선 (기능 변경 없음)
- [ ] docs : 문서 작업
- [ ] chore : 빌드·설정 변경

---

### 반영 브랜치
`feature/req##-기능명` → `develop`

---

### 관련 이슈 (자동 Close)
Closes #이슈번호

---

### 변경 사항
- 

---

### 테스트 결과
- [ ] 로컬에서 `Main.java` 정상 실행 확인
- [ ] 담당 메뉴 입력/출력 동작 확인
- [ ] SQL 변경 시 `dropschema → createschema → initdata` 순서로 재실행 확인

---

### 체크리스트
- [ ] 사용자 입력을 받는 메뉴에 `PreparedStatement` 적용 [REQ10]
- [ ] DB 비밀번호 등 개인 정보가 커밋에 포함되지 않음
- [ ] 담당 REQ 번호를 커밋 메시지에 포함 (예: `feat: [REQ5] 콘텐츠 INSERT 구현`)
- [ ] 프로젝트 보드 Status → `Review` 로 변경
