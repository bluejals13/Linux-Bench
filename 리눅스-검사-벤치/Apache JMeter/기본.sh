#!/bin/bash
set -e

echo -e "\n=== JMeter 부하 테스트 안내 ===\n"

echo "1. 설치 방법:"

echo "   Ubuntu/Debian:"
echo "     sudo apt-get install jmeter"
echo ""
echo "   또는 공식 웹사이트에서 최신 버전 다운로드 후 압축 해제"

echo -e "\n2. 기본 명령어 형식:"

echo "   jmeter [옵션]"
echo "     -n : CLI(non-GUI) 모드 실행"
echo "     -t : 테스트 계획 파일(.jmx) 지정"
echo "     -l : 결과 로그 파일(.jtl) 지정"
echo "     -e : 테스트 종료 후 보고서 생성"
echo "     -o : HTML 보고서 출력 경로"

echo -e "\n3. 주요 테스트 예시:"

echo -e "\n  CLI 모드로 테스트 실행:"
echo '    jmeter -n -t test_plan.jmx -l results.jtl'

echo -e "\n  테스트 종료 후 HTML 보고서 생성:"
echo '    jmeter -g results.jtl -o report_folder'

echo -e "\n4. 용어 설명:"

echo "   Thread Group    : 동시에 실행될 사용자 수 및 반복 횟수 설정"
echo "   Sampler         : 요청 종류 (HTTP, JDBC, FTP 등)"
echo "   Listener        : 결과를 수집하고 보고서를 생성"
echo "   Ramp-Up Period  : 스레드가 시작될 때 걸리는 시간"
echo "   Loop Count      : 각 스레드 반복 횟수"

echo -e "\n5. 주의사항:"

echo "   - GUI 모드는 많은 시스템 리소스를 사용하므로 실제 부하 테스트 시 CLI 모드를 권장"
echo "   - 테스트 계획(.jmx)은 반드시 백업 후 수정"
echo "   - 부하 테스트 대상 서버에 영향을 줄 수 있으므로 사전에 허락 필요"

echo -e "\n=== JMeter 안내 끝 ===\n"