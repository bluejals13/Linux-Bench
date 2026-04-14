#!/bin/bash
set -e

echo -e "\n=== hdparm 디스크 성능 테스트 안내 ===\n"

echo "1. 패키지 설치:"
echo "   sudo apt-get install hdparm"

echo -e "\n2. 기본 명령어 형식:"
echo "   hdparm [옵션] [장치]"

echo -e "\n3. 주요 테스트 예시:"

echo -e "\n  디스크 읽기 속도 테스트 (캐시 무시):"
echo '    sudo hdparm -tT /dev/sdX'
echo "    -T : 캐시된 읽기 속도 테스트"
echo "    -t : 실제 장치에서 직접 읽기 속도 테스트"

echo -e "\n  디스크 캐시 비우기 후 테스트 (데이터 손실 주의!):"
echo '    sudo hdparm --direct -t /dev/sdX'
echo "    --direct : 캐시를 무시하고 직접 장치에서 읽기"

echo -e "\n  디스크 설정 확인:"
echo '    sudo hdparm -I /dev/sdX'
echo "    -I : 디스크의 상세 정보 및 지원 기능 확인"

echo -e "\n4. 주의사항:"
echo "   /dev/sdX 는 실제 테스트할 장치명으로 변경해야 합니다."
echo "   잘못된 장치를 지정하면 데이터가 손상될 수 있으니 주의하세요."
echo "   테스트 시 디스크에 중요한 데이터가 없거나 백업 후 진행하는 것이 안전합니다."

echo -e "\n=== 안내 끝 ===\n"