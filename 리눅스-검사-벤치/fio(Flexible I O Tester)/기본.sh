#!/bin/bash
set -e

echo -e "\n=== fio 디스크 테스트 설명 ===\n"

echo "1. 패키지 설치:"
echo "   sudo apt-get install fio"

echo -e "\n2. 랜덤 읽기/쓰기 테스트 예시:"
echo "   fio --name=randrw --ioengine=libaio --iodepth=32 --rw=randrw --bs=4k --direct=1 --size=10G --numjobs=1 --runtime=60 --group_reporting"

echo -e "\n3. 순차 쓰기 테스트 예시:"
echo "   fio --name=seqwrite --ioengine=libaio --rw=write --bs=1m --direct=1 --size=10G --numjobs=1 --runtime=60 --group_reporting"

echo -e "\n4. 용어 설명:"
echo "   IOPS: 초당 입출력 횟수 (Random 테스트시 중요)"
echo "   BW (Bandwidth): 초당 처리량 (Sequential 테스트시 중요)"
echo "   Latency: I/O 요청이 완료되기까지 걸리는 시간 (지연 시간)"

echo -e "\n=== 테스트 안내 끝 ===\n"