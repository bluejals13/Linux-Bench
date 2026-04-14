#!/bin/bash
set -e

echo -e "\n=== iperf3 네트워크 성능 테스트 안내 ===\n"

echo "1. 설치 방법:"
echo "   Ubuntu/Debian:"
echo "     sudo apt install iperf3"
echo ""
echo "   다른 OS는 공식 문서 참고"

echo -e "\n2. 기본 명령어:"

echo -e "   서버 모드 실행:"
echo '     iperf3 -s'
echo "   - 로컬 방화벽이 활성화된 경우 기본 포트 5201을 열어야 합니다."
echo "   - 필요 시 '-p <port>' 옵션으로 특정 포트를 지정 가능"

echo -e "\n   클라이언트 모드 실행 (데이터 전송):"
echo '     iperf3 -c <서버 IP>'
echo "   - <서버 IP>는 실제 테스트할 서버의 IP 주소로 변경해야 합니다."
echo "   - 기본 포트는 서버와 동일하게 5201 사용, 필요 시 '-p <port>' 옵션 사용"

echo -e "\n3. 추가 옵션 예시:"
echo "   -t <시간>  : 테스트 지속 시간 (초)"
echo "   -P <스레드>: 동시 연결 수"
echo "   -i <간격>  : 중간 보고 간격 (초)"

echo -e "\n4. 주의사항:"
echo "   - 테스트 대상 서버와 클라이언트 간 네트워크 상태에 따라 결과가 달라질 수 있음"
echo "   - 방화벽이나 NAT 환경에서는 포트 열기 필요"
echo "   - 서버와 클라이언트 모두 iperf3 설치 필요"

echo -e "\n=== iperf3 안내 끝 ===\n"