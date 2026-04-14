#!/bin/bash
set -e

echo -e "\n=== stress-ng 스트레스 테스트 안내 ===\n"

echo "1. 패키지 설치:"
echo "   sudo apt-get install stress-ng"

echo -e "\n2. 기본 명령어 형식:"
echo "   stress-ng [옵션] [인자]"

echo -e "\n3. 주요 스트레스 테스트 예시:"

echo -e "\n  CPU 스트레스: 모든 CPU 코어에 100% 부하를 1분간 발생"
echo '    stress-ng --cpu $(nproc) --timeout 60s'

echo -e "\n  메모리 스트레스: 2개의 워커(worker)로 각각 1GB 메모리 할당 및 해제 반복"
echo '    stress-ng --vm 2 --vm-bytes 1G --timeout 60s'

echo -e "\n  디스크 I/O 스트레스: 4개의 워커로 파일 시스템 I/O 부하 발생"
echo '    stress-ng --io 4 --timeout 60s'

echo -e "\n  복합 테스트 (CPU+메모리+IO):"
echo '    stress-ng --cpu 4 --vm 2 --vm-bytes 1G --io 4 --timeout 5m'

echo -e "\n4. 옵션 설명:"
echo "   --cpu N       : N개의 CPU 워커 실행"
echo "   --vm N        : N개의 가상 메모리 워커 실행"
echo "   --timeout T   : T 시간 후 테스트 종료 (s, m, h 단위)"
echo "   --metrics-brief: 테스트 종료 후 요약된 메트릭 출력"

echo -e "\n=== 안내 끝 ===\n"