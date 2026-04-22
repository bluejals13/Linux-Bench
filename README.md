# 🧩 케이스별
---
## ✅ 케이스 1:CPU + retry storm

- 1. 트래픽 제한
- 2. retry 차단
- 3. DB 보호
- 4. 스케일링
---
## ⚠️ 케이스 2:(예: lock, deadlock)

- 1. slow query kill / lock 해제
- 2. connection pool 제한
- 3. 트래픽 제한 (필요 시)
---
## ⚠️ 케이스 3: 외부 API 장애

예시:
- 결제 API timeout
- 서드파티 장애

이때는:
- 1. circuit breaker 열기 (외부 호출 차단)
- 2. fallback 처리
- 3. retry 줄이기
---
## ⚠️ 케이스 4: OOM이 시작점 (memory leak)

- 1. 문제 pod 격리 / restart
- 2. memory limit / leak 차단
- 3. 트래픽 제한 (보조)
---
# 🧠 판단 기준
---
## 1. “지금 시스템을 가장 빠르게 죽이고 있는 게 뭐냐”
- 트래픽?
- retry?
- DB lock?
- 외부 API?

- > 가장 빠른 증폭기부터 차단
---
## 2. “이게 계속 쌓이는 문제냐 vs 막혀있는 문제냐”
- 쌓이는 문제 → (queue, retry, traffic)
- - >차단 먼저

- 막힌 문제 → (DB lock, deadlock)
- - > 해결 먼저
---
## 3. “autoscaling이 도움이 되냐, 독이냐”
- CPU 부족 → 도움 됨
- DB 병목 → 오히려 더 터짐

- -> 판단 틀리면 장애 더 커집니다
---
# 📊 그래서 요약

- 1. 증폭기 식별
- 2. 증폭기 차단
- 3. 병목 보호
- 4. 리소스 복구
---
