# 0514

#script 파일 생성
touch myscript.sh
nano myscript.sh


#sh 파일 생성
touch teset.sh
nano test.sh
    #파일 내부에 입력
    echo "sh start" 
    echo "sh end"
# 생성된 파일의 실행 권한 추가 
sudo chmod 764 test.sh
./test.sh  #실행 -> sh start, sh end 나와야함

# 쉘 프로그래밍에서 파일 생성 후 내용 넣기. 파일 복사 및 이름 변경
touch test2.sh
nano test2.sh
    echo "script start"
    cd  # 이 계정의 home = home/seunghyun
    mkdir my_dir4
    cd my_dir4
    touch file1.txt
    touch file2.txt
    echo "hello file1" > file1.txt
    echo "hello file2" > file2.txt
    cp file1.txt file1_backup.txt
    mv file2.txt file2_rename.txt
    echo "script end"
./test.sh


# if문 else문. 띄어쓰기 중요!!!
if [ 조건 ]; then # 참이면 then 이후 문장 실행
    echo "hello world1"
else
    echo "hellow world2"
fi      #끝내기
# 조건 1>2 -> 1 -gt 2
if [ 1 -gt 2 ]; then    # 이렇게 작성

# if문과 변수활용, 파일(-f)/디렉토리(-d) 존재여부 확인
file_name="second_file.txt"
# $는 문자열 안에 변수
if[ -f "$file_name" ]; then   #이 파일이 있는지
    echo "$file_name exists"
else
    echo "$file_name does not exist"
fi


# for문 기본
for a in {1..100}   # 1~100 순서대로 하나씩 꺼내서 a에 넣기. a는 활용해도 되고 안해도 되고...
do                  # 반복할 일 작성
    echo "hello world $a"
done                # 끝


# if문 실습 - test4.sh
# echo로 start 출력
# 만약에 test_dir이 현재 폴더에 있으면 
# 없으면 해당 폴더 생성
# echo로 end 출력
cd
if [ -d test_dir ]; then
    cd test_dir
else
    mkdir test_dir
    cd test_dir
fi

# test4.txt 없으면 생성
# 해당 파일에 hello world1~100까지 입력하도록
if [ -f test4.txt ]; then
    echo "test4 file exists"
else
    touch test4.txt  
fi
for a in {1..100}
do
    echo "hello world$a" >> test4.txt
done

# for문 활용한 count 세기
count=0
for
do
    ((count++)) #(())를 이용하여 ++
done
echo "count is $count"

# for문을 활용한 모든 파일, 폴더 목록 출력하기
for a in *      #현재 폴더에 있는 파일, 목록을 하나씩 a에 둔다.

# for문 count, 목록 출력 실습
# 특정 디렉토리 안에 file은 몇개인지 directory는 몇개 인지
dcount=0
fcount=0

for a in *
do
    if [ -d "$a" ]; then  
        ((dcount++))
    else
        ((fcount++))
    fi
done
echo "directory is $dcount"
echo "file is $fcount"


# apt-get이라는 패키지에서 필요한걸 다운받기
패키지 = 프로그램 목록
우분투에서는 apt 사용
sudo apt update     //업데이트
sudo apt install nginx

#find를 통해 특정파일을 찾고 grep을 이용해서 문자열 찾기
ps -ef : 모든프로세스 찾는 옵션 -> grep을 통해 원하는  프로세스 검색 |
ps -ef | greap "nginx"  # master 어쩌구랑 여러개 나옴.
sudo kill -9 pid        # 죽이고 localhost:80 들어가면 안보임
sudo systemctl start nginx
ps -ef | grep "nginx"   # localhost:80 접속하면 성공!


#grep
grep -rin "hi"

#find
find ~ | grep -rin "hi"