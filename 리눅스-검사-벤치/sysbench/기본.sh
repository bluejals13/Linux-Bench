#!/bin/bash
set -e

echo -e "\n=== Sysbench 시스템 성능 테스트 안내 ===\n"

echo "1. 설치 방법:"
echo "   Ubuntu/Debian:"
echo "     sudo apt-get install sysbench"
echo ""
echo "   다른 OS는 공식 문서 참고"

echo -e "\n2. 기본 명령어 형식:"
echo "   sysbench [테스트 종류] [옵션] run"

echo -e "\n3. 주요 테스트 예시:"

echo -e "  1) CPU 벤치마크:"
echo '     sysbench cpu --cpu-max-prime=20000 --threads=4 run'
echo "     - --cpu-max-prime : 소수를 계산하는 최대 범위"
echo "     - --threads : 동시에 실행할 스레드 수"

echo -e "\n  2) 메모리 벤치마크:"
echo '     sysbench memory --memory-block-size=1M --memory-total-size=1G run'
echo "     - --memory-block-size : 한 번에 읽거나 쓸 블록 크기"
echo "     - --memory-total-size : 총 테스트할 메모리 양"

echo -e "\n  3) 파일 I/O 벤치마크:"
echo '     sysbench fileio --file-total-size=1G --file-test-mode=rndrw prepare'
echo '     sysbench fileio --file-total-size=1G --file-test-mode=rndrw run'
echo "     - prepare : 테스트 파일 생성"
echo "     - run     : I/O 테스트 실행"
echo "     - --file-test-mode : 테스트 모드 (seqrd, seqwr, rndrd, rndwr, rndrw 등)"

echo -e "\n4. 옵션 설명:"
echo "   --threads : 동시 스레드 수"
echo "   --time    : 테스트 실행 시간 (초)"
echo "   --events  : 총 이벤트 수 제한"

echo -e "\n5. 주의사항:"
echo "   - 파일 I/O 테스트 시 충분한 디스크 여유 공간 필요"
echo "   - CPU/메모리 테스트는 시스템 부하가 높아질 수 있음"
echo "   - 실제 환경에서 중요한 작업 중에는 실행하지 않을 것"

echo -e "\n=== Sysbench 안내 끝 ===\n"