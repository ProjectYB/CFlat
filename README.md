내용 전체 받기
git clone https://github.com/Goyunho/CFlat.git

처음 실행할때
> start.bat
pytho 가상환경을 실행해주고
doskey(리눅스의 alias)로 명령어를 antlr4에 포팅해준다.
* 자바가 설치되어있어야 한다.
** 이후 실행할 때는 start.bat 해도 되고 Script\activate.bat만 실행해도 된다.

.g4로 이루어진 문법 파일이 있으면
> antlr4py3 ***.g4
결과로 문법이 적용된 파이썬 *** 모듈이 나타난다.

2016년 10월 12일 현재 파악은 여기까지
이에 따라 예제 test 파이썬 파일로 run 해본 결과 정상적으로 문법에 따라 분해되어
요소가 나타난다.