> cmd> irb
> 1.respond_to? :next #next라는 메소드 사용가능한지 질문

모든 것은 객체, 메소드
---
## 루비에서 object가 아닌것
- if elsif, end, while---
- Block
    {}  --한 라인일때
    do end로 둘러싸인 부분을 블럭이라고 한다. --2라인 이상일때
  
> arr = [1,2,3,4,5]
> arr.each {puts "hello"}
> arr.each{|p| puts p}

> gem install sinatra  # Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort
> gem install thin     # A small and fast Ruby web server
> echo $PORT
> echo $IP

> ruby app.rb -p $PORT -o $IP   #ruby app.rb -p 8080 -o 0.0.0.0 이랑 똑같은 말임

https://www.naver.com/8080 # 8080앞의 /는 root를 의미. /까지가 기본 형태이다.
https://www.naver.com/  # 주소에 get http요청을 통해서 /에 있는 정보를 가져오겠다.

---

## erb파일에서 루비 코드로 무언가 출력하기 위해서는
> <% puts "Hello %>가 아니라 <%= "Hello"%> 이렇게 표현해야 한다.
> 그리고 app.rb에 있는 변수를 가져다 쓰려면 변수 앞에 @붙여서 사용한다.

> irb
> {}.methods
> {}.respond_to?(:sample)

---

### +)routing이란?
> 어떤 url에 대한 길을 제공하는 것


> "".gsub(" ","+")  #global substitution의 의미이다. " "이 바꾸고 싶은 문자, "+"이 새로 들어갈 문자

승률 찾을 때 ㅠㅠㅠ마우스 오른쪽 클릭 -> 검사 클릭
require 'uri'
URI.encode("한국어가 가능")
URI.decode("")
