#!/bin/bash

# 이 스크립트는 실제로 dd 명령어를 실행하지 않고,
# 디스크 속도 테스트 방법을 화면에 안내하는 용도입니다.

echo "=== 디스크 쓰기 속도 테스트 예시 ==="
echo ""
echo "명령어:"
echo "  dd if=/dev/zero of=/tmp/testfile bs=1G count=1 oflag=direct conv=fdatasync"
echo ""
echo "설명:"
echo "  if=/dev/zero       : 0으로 채워진 데이터를 입력으로 사용"
echo "  of=/tmp/testfile    : 테스트 파일을 생성할 경로"
echo "  bs=1G count=1       : 1GB 크기의 파일을 1번 블록만큼 쓰기"
echo "  oflag=direct        : 캐시를 우회하여 실제 디스크 쓰기 속도 측정"
echo "  conv=fdatasync      : 명령어 종료 전에 데이터를 물리 디스크에 모두 씀"
echo ""

echo "=== 디스크 읽기 속도 테스트 예시 ==="
echo ""
echo "명령어:"
echo "  dd if=/tmp/testfile of=/dev/null bs=1G count=1"
echo ""
echo "설명:"
echo "  생성된 테스트 파일(testfile)을 읽어들여 성능 측정"
echo ""

echo "=== 주의사항 ==="
echo "  of (output file) 경로를 잘못 지정하면 시스템 데이터가 삭제될 수 있음"
echo "  반드시 lsblk 등으로 정확한 장치명을 확인 후 실행해야 함"