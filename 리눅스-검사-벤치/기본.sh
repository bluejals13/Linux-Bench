#!/bin/bash
set -e

echo -e "\n=== 종합 성능/부하 테스트 안내 ===\n"

# -------------------------------
# 1. 시스템 부하
# -------------------------------
echo -e "\n--- 시스템 부하 ---\n"

echo "1) stress-ng"
echo "   설치: sudo apt-get install stress-ng"
echo "   설명: CPU, 메모리, I/O 등 시스템 전반 부하 테스트"
echo '   예: stress-ng --cpu 4 --vm 2 --io 4 --timeout 60s'
echo "   주의: 실제 실행 시 시스템 부하가 큽니다."

echo -e "\n2) sysbench"
echo "   설치: sudo apt-get install sysbench"
echo "   설명: CPU, 메모리, 스레드, 파일 I/O 등 성능 테스트"
echo '   CPU 예: sysbench cpu --cpu-max-prime=20000 --threads=4 run'
echo '   파일 I/O 예: sysbench fileio --file-total-size=1G --file-test-mode=rndrw prepare'
echo '                  sysbench fileio --file-total-size=1G --file-test-mode=rndrw run'
echo "   주의: 파일 I/O 테스트 시 충분한 디스크 공간 필요"

# -------------------------------
# 2. 네트워크 부하
# -------------------------------
echo -e "\n--- 네트워크 부하 ---\n"

echo "1) iperf3"
echo "   설치: sudo apt install iperf3"
echo "   설명: 네트워크 대역폭 측정, TCP/UDP 테스트 가능"
echo '   서버: iperf3 -s'
echo '   클라이언트: iperf3 -c <서버IP>'
echo "   주의: 방화벽 포트 5201 확인 필요"

echo -e "\n2) tc"
echo "   설치: sudo apt-get install iproute2"
echo "   설명: 네트워크 지연/패킷 손실 등 트래픽 제어, 시뮬레이션 가능"
echo '   예: tc qdisc add dev eth0 root netem delay 100ms loss 1%'

# -------------------------------
# 3. 서비스 / 트래픽 부하
# -------------------------------
echo -e "\n--- 서비스 / 트래픽 부하 ---\n"

echo "1) JMeter"
echo "   설치: sudo apt-get install jmeter"
echo "   설명: 웹 서비스/API 부하 테스트, GUI/CLI 지원"
echo '   예: jmeter -n -t test_plan.jmx -l results.jtl'
echo "   주의: GUI 모드는 리소스 많이 사용, CLI 권장"

echo -e "\n2) k6"
echo "   설치: https://k6.io/docs/getting-started/installation/"
echo "   설명: JavaScript 기반 웹/API 부하 테스트, CLI 친화적"
echo '   예: k6 run script.js'

# -------------------------------
# 4. 스토리지 / 디스크 성능
# -------------------------------
echo -e "\n--- 스토리지 / 디스크 성능 ---\n"

echo "1) dd"
echo "   설치: 기본 설치되어 있음"
echo "   설명: 단순 디스크 읽기/쓰기 속도 측정"
echo '   예: dd if=/dev/zero of=/tmp/testfile bs=1G count=1 oflag=direct conv=fdatasync'

echo -e "\n2) hdparm"
echo "   설치: sudo apt-get install hdparm"
echo "   설명: 디스크 읽기 속도 확인"
echo '   예: sudo hdparm -tT /dev/sdX'
echo "   주의: 캐시 영향, 장치명 주의"

echo -e "\n3) ioping"
echo "   설치: sudo apt-get install ioping"
echo "   설명: 디스크 응답속도(latency) 측정"
echo '   예: ioping -c 10 .'

echo -e "\n4) fio"
echo "   설치: sudo apt-get install fio"
echo "   설명: 다양한 I/O 패턴 지원, 랜덤/순차, 스레드 설정 가능"
echo '   예: fio --name=randrw --ioengine=libaio --iodepth=32 --rw=randrw --bs=4k --direct=1 --size=10G --numjobs=1 --runtime=60 --group_reporting'

echo -e "\n5) sysbench 파일 I/O"
echo '   예: sysbench fileio --file-total-size=1G --file-test-mode=rndrw prepare'
echo '        sysbench fileio --file-total-size=1G --file-test-mode=rndrw run'

# -------------------------------
# 5. 종합 안내
# -------------------------------
echo -e "\n=== 안내 끝 ==="
echo "참고: 각 도구는 실제 테스트 시 시스템과 네트워크에 부하를 줄 수 있으므로, 설명용으로만 참고하세요."