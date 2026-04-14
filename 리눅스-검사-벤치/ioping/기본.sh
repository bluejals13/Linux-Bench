#!/bin/bash
set -e

echo -e "\n=== ioping 디스크 테스트 설명 ===\n"

echo "1. 현재 디렉토리 테스트:"
echo "   ioping -c 10 ."

echo -e "\n2. 특정 디렉토리/마운트 포인트 테스트:"
echo "   ioping -c 10 /mnt/data"

echo -e "\n3. 탐색 속도 벤치마크:"
echo "   ioping -R ."

echo -e "\n4. 순차적 읽기 테스트:"
echo "   ioping -RL ."

echo -e "\n5. 결과 해석:"
echo "   min/avg/max/mdev: 요청에 대한 최소/평균/최대/평균 편차 지연 시간 (Latency). 값이 작을수록 좋습니다."
echo "   iops: 초당 입출력 횟수"
echo "   KiB/s, MiB/s: 초당 데이터 전송 속도"

echo -e "\n=== 테스트 안내 끝 ===\n"