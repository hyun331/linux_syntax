# 사용자가 현재 위치에 있는  폴더 경로 출력 명령어
pwd

# 현재위치에서 파일, 폴더 목록 출력
ls

# +자세히
ls -l

# +숨김파일까지 출력
ls -al

# +시간순서로 정렬 등등 ...
ls -alrt

# 디렉토리 생성
mkdir 디렉토리명    #my_dir 생성

# 특정 디렉토리 이동
cd 디렉토리명

# 루트 디렉토리 이동(최상단 디렉토리)
cd /

# 절대 경로 폴더로 이동
cd /home/ubuntu/my_dir

# 상대 경로 폴더로 이동 ..은 상위폴더, .은 현재 폴더를 의미
cd ..

# 특정계정의 home 경로로 이동
cd

# 진전 위치의 폴더로 이동
cd -

# 파일 생성(비어있는)
touch first_file.txt

# 파일 내용 조회
cat 파일 이름

# 터미널창에 문자열을 출력하는 명령어.
echo "hello, world"

#echo를 통해 파일에 문자열을 write하은 방법
>하나를 쓰면 덮어쓰기 모드, >>두개쓰면추가모드
echo "hello world" > first_file.txtls

# history 명령어를 통해 이전에 실행했던 명령어 조회
history

# 입력중이 명령창 정리
clear

# 잘라내서 붙이기, 이름 바꾸기 모두 이동과 같다 => 같은 명령어 사용
# mv는 이동 명령어
# "mv a.txt b.txt" 형식으로 사용 = 이름 변경
# "mb a.txt ../a.txt" ==> 잘라내서 붙이기
# "mb a.txt ../b.txt" ==> 상위 폴더로 이동시키면서 이름 변경

# 복사 명령어 cp, 디렉토리까지 복사하는 경우 -r 옵션 추가
cp second_file.txt thrid_file.txt
cp -r my_dir2 my_dir3

# rm은 삭제 명령어. 디렉토리 삭제는 -r 옵션 추가
# 리눅스마다 차이가 있음. 삭제할지 말지 물어보는 경우 존재. 
# -f 옵션 추가시 묻지 않고 삭제 (디렉토리인 경우 -rf 옵션 사용)
rm third_file.txt
rm -r my_dir3

# 현재 폴더의 모든 팡리 삭제
rm -rf *

# head는 cat처럼 파일을 출력하지만 상위 n개 행 조회
# tail은 하위 n개 행 조회
head first.txt #기본 10줄 출력
head -5 first.txt #-5옵션을 주면 5줄

# nano 편집기 사용
nano 파일명
# 모든 운영체제에서 nano편집기가 있을까? -> 배포판마다 다름
# 일반적으로 vi 편집기는 대부분 설치되어 있음.(역사가 길다.)