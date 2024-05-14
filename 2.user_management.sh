# 0514
# find는 파일명으로 검색. ex).txt로 끝나는 파일을 찾아라. | 사용
# grep은 문자열 찾기
# find, grep 같이 사용--> 특정 파일의 문자열을 찾는 것을 많이 함


# 사용자와 그룹관리 및 권한관리

# 사용자 추가
sudo useradd 사용자명
# 사용자에는 root, 일반사용자 존재. 
# 우리는 현재 일반 사용자 -> 사용자 추가 권한 부재
# su - : 루트로 전환. but 루트 비밀번호 모름(사용불가)
# sudo : 루트 사용자 권한을 빌리는 것.
sudo useradd seunghyun2 # 비밀번호 입력하라고 나옴. 나의 현재 비밀번호를 입력하기!



# 패스워드 지정
sudo passwd 사용자명 패스워드
sudo passwd seunghyun2 helloworld
# 패스워드 변경 sudo passwd seunghyun2  

# 사용자목록 조회   
# 사용자 계정에 대한 파일은 etc 폴더에 있음
cat /etc/passwd

# 사용자 전환
su - 사용자명
# 비밀번호는 전환하고자 하는 사용자 비밀번호 helloworld
# 비번까지 입력하면 no such file, directory 이런 메세지 나옴
# seunghyun 계정에서 home에 seunghyun2 폴더 생성 -> sudo mkdir seunghyun2

# 이전 사용자로 돌아가기
exit

# 권한
# 000(소유자-user) 000(그룹-group) 000(그외-others)
# 권한은 r(4)w(2)x(1)로 이뤄짐.
# seunghyun, seunghyun : 사용자, 그룹
# .sh : 실행파일. 쉘 파일
# other이 자기 소유가 아닌 폴더에 들어가려면 r, x 권한 설정

# 파일 권한 관리
chmod 777 test.sh   # test.sh파일의 권한을 rwxrwxrwx로 변경
chmod u+x test.sh   # user에게 실행 권한을 추가
chmod g-w test.sh   # group에게 쓰기 권한 제거


# 파일 소유자/그룹 권한 관리
# 소유자와 그룹 변경
chown 소유가:그풉 파일명



# 네트워크 명령어

# 쉘프로그래밍

# vi 편집기