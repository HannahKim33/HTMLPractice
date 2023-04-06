# HTMLPractice

외부 스타일시트 실행
```
<link rel="stylesheet" href="파일명.css">
```

외부 자바스크립트 실행
```
<script src="파일명.js"></script>
```

```
&nbsp; <!--공백-->
&li; <!--<-->
&gt; <!-->-->
&amp; <!--&-->
```
<hr>
a 태그

```
<a href="이동할 웹 페이지">출력 글자</a>
```

<hr>
b 굵은 글자

i 기울어진 글자

small 작은 글자	(big은 없음)

sub 아래첨자

sup 위첨자

ins 밑줄 글자

del 취소선이 그어진 글자


ul : unordered list

ol : ordered list

li : 목록 요소 (ul/ol 안에 들어감)

<hr>



table

colspan : 셀의 너비 지정 (ex: colspan='2' =>2열 합치기)

rowspan : 셀의 높이 지정

<hr>

img 속성

	src : 이미지 경로
  
	alt : 이미지가 없을 때 나오는 글자
  
	width
  
	height
  
<hr>
audio, video 태그 속성
	src 경로
	preload 준비 중일때 데이터를 모두 불러올지 여부
	autoplay : 자동 재생 여부
	loop : 반복 여부
	controls : 재생 도구 출력 여부 (controls="controls")

video 태그 속성
	width
	height

<hr>

웹브라우저 제약 없도록 음악 삽입하기

웹브라우저마다 지원하는 확장자 형식이 달라 실행되지 않을 수 있음

=>source 태그로 해결 (audio나 video 태그 내부에 입력)

ex)
```
<audio controls="controls">
	<source src="파일이름.mp3" type="audio/mp3">
	<source src="파일이름.ogg" type="audio/ogg">
</audio>
```
<hr>

### 동영상 삽입
```
<video controls="controls">
	<source src="파일이름.mp4" type="video/mp4">
	<source src="파일이름.webm" type="video/webm">
</video>
```

### 동영상 불러오는 동안 다른 이미지 보여주기
```
<video controls="controls" poster="https://via.placeholder.com/150x200">
	<source src="파일이름.mp4" type="video/mp4">
	<source src="파일이름.webm" type="video/webm">
</video>
```

<hr>

## 입력 양식


label
```
<label for="name(input 태그의 id)">이름</label>
<input id="name" type="text">
```
=>라벨 태그를 클릭했을 때 인풋 태그에 자동으로 포커스가 감


radio 버튼의 name 속성을 같게 입력하면 여러 항목 중 하나만 선택하게 할 수 있음


select 여러 개 선택
```
<select multiple="multiple">
```

select option을 그룹으로 묶기 => optgroup

```
<select>
	<optgroup label="HTML5">
		<option>Multimedia Tag</option>
		<option>Connectivity</option>
		<option>Device Access</option>
	</optgroup>
	<optgroup label="CSS3">
		<option>Animation</option>
		<option>3D transform</option>
	</optgroup>
</select>
```


fieldset	입력 양식의 그룹 지정

legend	입력 양식 그룹의 이름 지정 (fieldset 태그 안에 사용)
```
<fieldset>
	<legend>입력 양식</legend>
		input 태그들~~
</fieldset>
```



----------------------------------------------------------------------------------

### 공간 분할 태그

div		블록 형식		각 태그가 한 행을 모두 차지

span	인라인 형식	자신의 글자 크기만큼 영역을 차지


블록 형식 태그: div, h1~h6, p, 목록 태그, 테이블 태그

인라인 형식 태그: span, a, input, 글자 형식 태그, 입력 양식 태그

인라인-블록 형식 태그: img





### 시맨틱 태그

: 특정 태그에 의미를 부여. 컴퓨터 프로그램이 코드를 읽고 의미를 인식할 수 있음

	=>가독성 좋아짐
	
시맨틱 태그 종류

header	머리말(페이지 제목, 페이지 소개)

nav		하이퍼링크들을 모아 둔 내비게이션

aside 	본문 흐름에 벗어나는 노트나 팁

section	문서의 장이나 절에 해당하는 내용

article	본문과 독립적인 콘텐츠 영역

footer	꼬리말(저자나 저작권 정보)


----------------------------------------------------------------------------------


## 선택자

### 선택자 종류

전체 선택자 	*

태그 선택자		태그

아이디 선택자	#아이디

클래스 선택자	.클래스

속성 선택자		선택자[속성=값]

			선택자[속성~=값]
      
			선택자[속성!=값]
      
			선택자[속성^=값]
      
			선택자[속성$=값]
      
			선택자[속성*=값]
			
			선택자[속성]	특정 속성이 있는 태그 선택
      
			선택자[속성=값]	특정 속성 내부 값이 특정 값과 같은 태그 선택
				ex)
        
				input[type="text"]{background:red;}
			
			
후손 선택자		선택자 선택자

자손 선택자		선택자>선택자

				table 태그의 요소를 선택할 때는 자손 선택자 사용을 비추
        
				ex) table>tr>th =>스타일 적용되지 않음
        
								=>table 태그에 tbody가 자동으로 추가되기 때문
                
								=>table>tbody>tr>th 라고 해야함
				
반응 선택자		선택자:active		사용자가 마우스로 클릭한 태그 선택

			선택자:hover		사용자가 마우스 커서를 올린 태그 선택
      
상태 선택자		선택자:checked		type 속성이 checkbox 또는 radio인 input 태그가 선택된 상태

			선택자:focus		포커스를 맞춘 input 태그 선택
      
			선택자:enabled		사용 가능한 input 태그 선택
      
			선택자:disabled	사용 불가능한 input 태그 선택
      
							input:disabled{background-color:gray;}
              
							<input disabled="disabled">
              
구조 선택자		선택자:first-child

			선택자:last-child
      
			선택자:nth-child(수열)		li:nth-child(2n+1)
      
			선택자:nth-last-child(수열)
      
			선택자:first-of-type
      
			선택자:last-of-type
      
			선택자:nth-of-type(수열)
      
			선택자:nth-last-of-type(수열)
      
동위 선택자		선택자+선택자

			선택자~선택자
      
링크 선택자		선택자:link

			선택자:visited
      
문자 선택자		선택자::first-letter

			선택자::first-line
      
			선택자::after
      
			선택자::before
      
			선택자::selection
      
부정 선택자		선택자:not(선택자)


가상 클래스 선택자	":" 기호를 사용하는 선택자

가상 요소 선택자		"::" 기호를 사용하는 선택자

한꺼번에 선택자 여러 개 입력해 스타일 속성을 적용할 때는 쉼표를 사용해서 연결한다.

	ex) p,h1,h2,h3{margin:0;padding:0;}


	
	

----------------------------------------------------------------------------------
				
## CSS3 단위

1. 키워드 단위

	W3C에서 미리 정의한 단어
  
	키워드를 스타일 값으로 입력하면 키워드에 해당하는 스타일이 자동으로 적용된다.
  
	ex) display: block

2. 크기 단위

	%	백분율 단위		초기값 100%	부모 기준
  
	em	배수 단위		1em=100%	1.5em=150%
  
	px	픽셀 단위		크기를 절대적으로 지정
  
					p 태그의 기본 font-size 속성은 16px
          
					font-size: 00px;
          
					width, height 속성에도 적용 가능

3. 색상 단위
	RGB 색상
  
		{background-color:rgb(255,255,255);}
    
		0에서 255 사이의 숫자 입력
    
	RGBA 색상
  
		rgba(red,green,blue,alpha)
    
		RGB에 알파 값을 추가한 형태. 알파 값은 투명도를 나타내며 0.0~1.0 사이의 숫자 입력.
    
		0.0은 완전 투명, 1.0은 완전 불투명
    
	HEX 코드
  
		#000000
    
		앞에서부터 각 두자리가 R,G,B를 나타냄. 16진수로 입력.
    
		FF(16진수)=255
    
		색상 선택 도구 ColorPicker 사용
    
		
4. URL 단위

	이미지나 글꼴 파일을 불러올 때 사용
  
	현재 폴더의 이미지파일 불러올 때:
  
	background-image: url('이미지파일명.확장자');
  
	Other 폴더의 이미지파일 불러올 때:
  
	background-image: url('Other/이미지파일명.확장자');
  
	루트 폴더(C:)의 이미지파일 불러올 때:
  
	background-image: url('/이미지파일명.확장자');
	

	
----------------------------------------------------------------------------------

## 박스 속성

1. 박스 크기와 여백

width, height: 글자를 감싸는 영역의 가로, 세로 크기

border: 테두리

margin: 테두리와 다른 태그 사이의 테두리 바깥쪽 여백

padding: 테두리와 글자 사이의 테두리 안쪽 여백. 배경색은 padding 영역까지만 적용


margin-left			왼쪽 여백

margin-right		오른쪽 여백

margin-top			위쪽 여백

margin-bottom		아래쪽 여백

padding-left		왼쪽 패딩

padding-right		오른쪽 패딩

padding-top			위쪽 패딩

padding-bottom		아래쪽 패딩


```
margin: 0 30px 0 30px;
```
위 오른쪽 아래 왼쪽
```  
padding:0 30px 0 30px;
```
위 오른쪽 아래 왼쪽
```
margin: 0 30px;
```
위아래 왼쪽오른쪽
```
padding: 0 30px;
```
위아래 왼쪽오른쪽
		

2. 박스 테두리

border-width: 테두리 속성	ex) thick, 3px

border-style: 테두리 형태	ex) dashed(점선), solid(실선)

border-color: 테두리 색상	ex) black

border 속성으로 세 가지를 한꺼번에 입력할 수 있다.

	ex) border:thick dashed black;
  
```
border-radius: 20px;
```
모서리가 둥근 박스 테두리
```
border-radiusL 50px 40px 20px 10px;
```
왼쪽위 오른쪽위 오른쪽아래 왼쪽아래
				

----------------------------------------------------------------------------------

## 가시 속성

키워드

none			화면에 보이지 않음

block			블록 박스 형식

inline			인라인 박스 형식

inline-block	블록과 인라인의 중간 형태

inline과 inline-block의 차이:

	block과 inline-block은 margin, padding 속성을 상하좌우 네 방향으로 지정할 수 있다.
  
	inline 방식은 margin, padding 속성을 왼쪽과 오른쪽으로만 지정할 수 있고, 
  
	width, height 속성을 지정할 수 없다.
		
		
----------------------------------------------------------------------------------

## 배경 속성

background-image		배경 이미지 삽입				URL 단위나 그레이디언트를 입력
	
	{background-image: url('파일명.확장자');}
	
	배경 이미지 여러개 적용 가능
  
	{background-image: url('파일명.확장자'), url('파일명.확장자');}
  
	먼저 입력한 이미지가 앞쪽에 위치
		
background-size			배경 이미지의 크기 지정			크기 단위나 키워드 입력 (%, width, height 등)
	
	크기 단위 1개 입력 => 너비 조정
  
		{background-size: 100%;}
	
	크기 단위 2개 입력 => 너비, 높이 (너비와 높이 사이에 띄어쓰기 사용)
  
		background-size: 100% 250px;
		 
	너비와 높이 사이ㅔ 쉼표 사용시 각 배경에 서로 다른 크기를 입력하는 것으로 인식한다.
  
		{
		background-image: url('파일명.확장자'), url('파일명.확장자');
		background-size: 100%, 250px;
		/* 첫 번째 이미지의 너비: 100%
			두 번째 이미지의 너비: 250px */
		}
		
background-repeat		배경 이미지의 반복 형태 지정		기본 키워드가 repeat
	repeat: 이미지를 패턴처럼 표시
	repeat-x: x축 방향으로만 이미지가 반복됨
	repeat-y: y축 방향으로만 이미지가 반복됨
	no-repeat: 반복 안 함
	
background-attachment	배경 이미지의 부착 형태 지정. 배경 이미지를 화면에 고정하는 속성
	기본 키워드: scroll
	scroll: 화면 스크롤에 따라 배경 이미지가 함께 이동
	fixed: 스크롤을 이동해도 배경 이미지는 고정
	local
	
background-position		배경 이미지의 배치 위치 지정
	background-position: 키워드; (bottom, center, left, right, top, inherit, initial)
	background-position: X축 위치;
	background-position: X축 위치 Y축 위치; (px 또는 %)
						0px => 맨 왼쪽/맨 위
						50% => 중간

background				한 번에 모든 배경 속성 입력



----------------------------------------------------------------------------------

<<글자 속성>>

1. 글자 크기와 글꼴

font-family: 폰트 여러개 입력
			'Courier New', Courier, Geneva
			가장 마지막에 Serif, Sans-serif, Mono space 글꼴 입력
			(사용자에게 무슨 글꼴이 있는지 모르므로 웹 브라우저에서 지정하는 generic-family 글꼴을 입력)
			두 단어 이상으로 된 글꼴 이름은 따옴표를 사용한다.
			
			
글자 크기 조정하기
	font-size: 32px;
	font-size: 2em;		1em=기본크기=16px		2em=32px
	font-size: large;	
	font-size: small;

	
2. 글자의 스타일과 두께

	font-style: 글자의 스타일 지정
				inherit
				initial
				italic
				normal
				oblique
	font-weight: 글자 두께 지정. 두께를 지원하지 않는 글꼴은 font-weight 속성 사용 불가
				숫자			400= 일반 글자 두께
				bold
				bolder
				inherit
				initial
				lighter
				normal
				
3. 글자 정렬
	text-align : center
				end
				inherit
				initial
				justify
				left
				match-parent
				right
				start
				
				span 태그는 인라인 형태이므로 너비가 없다. 
				따라서 중앙이라는 개념 자체가 없으므로 text-align 속성을 적용할 수 없다.
				
	block 속성의 태그는 수직 정렬을 지정할 수 있는 스타일 속성이 없다.
	수직으로 중앙 정렬 하려면 line-height를 height와 같게 지정한다.
	
	a 태그에 적용되는 밑줄을 제거하기 
		text-decoration: none;
		색상은 color 속성을 사용해 별도로 지정하기
		
		
		
	
----------------------------------------------------------------------------------
	
<<위치 속성>>

절대 위치 좌표 방법: X 좌표와 Y 좌표를 지정
상대 위치 좌표 방법: 요소를 입력한 순서에 따라 지정

HTML 페이지는 주로 상대 위치 좌표를 사용함. 일반적으로 절대 위치 좌표는 일정 크기의 영역을 지정한 내부 태그에서만 사용

1. 요소의 고정 위치와 상대 위치 지정

position: absolute		절대 위치 좌표 설정
			fixed		화면을 기준으로 절대 위치 좌표 설정
			static		상대 위치		요소가 위쪽에서 아래쪽으로, 왼쪽에서 오른쪽으로 순서에 맞게 배치된다.
			relative	상대 위치		static 키워드로 초기 위치가 지정된 상태에서 상하좌우로 이동할 수 있다.
			
position 속성과 함께 사용하는 스타일 속성 : top, left, right, bottom

absolute 키워드 적용하기

	<style>
		.box{
			width: 100px;
			height: 100px;
			position: absolute;
		}
		.box:nth-child(1){background-color: red;}
		.box:nth-child(2){background-color: green;}
		.box:nth-child(3n){background-color: blue;}
	</style>
	</head>
	<body>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
	</body>


left 속성과 top 속성 적용하기 : 모든 웹브라우저의 출력 방식을 통일하려면 left 속성과 top 속성을 적용해야 한다.
	뒤쪽에 작성한 코드 태그가 상위에 올라간다

	<style>
		.box{
			width: 100px;
			height: 100px;
			position: absolute;
		}
		.box:nth-child(1){
			background-color: red;
			left: 10px;
			top: 10px;
		}
		.box:nth-child(2){
			background-color: green;
			left: 50px;
			top: 50px;
			}
		.box:nth-child(3n){
			background-color: blue;
			left: 90px;
			top: 90px;
		}
	</style>
	</head>
	<body>
		<div class="box">1</div>
		<div class="box">1</div>
		<div class="box">1</div>
	</body>
	
	==> red가 맨 아래, blue가 맨 위에 옴
	
z-index 속성 적용하기
	z-index 속성 숫자가 클수록 앞에 위치
	
	
2. 위치 속성 공식
	
자손의 position 속성에 absolute 키워드를 적용할 때
	- 부모 태그가 영역을 차지하게 하려면?
		=> 부모에 height 속성을 입력한다.
	- 자손 태그가 부모 위치를 기준으로 절대 위치 좌표를 설정하게 하려면?
		=> 부모의 position 속성에 relative 키워드를 적용
	

3. 내용이 요소 크기를 벗어날 때 처리

overflow: hidden	영역을 벗어나는 부분 감춤
		scroll		영역을 벗어나는 부분을 스크롤로 만듦
		
overflow-x: scroll;		x축만 스크롤 생성
overflow-y: scroll;		y축만 스크롤 생성




----------------------------------------------------------------------------------

<< 유동 속성 >>

float: left			태그를 왼쪽에 붙임
		right		태그를 오른쪽에 붙임
		
img{float:left;}	이미지와 글이 어우러진 형태로 출력됨

주의할 점: float:right 하면 앞쪽 태그가 오른쪽부터 정렬됨 (4 3 2 1)



----------------------------------------------------------------------------------

<< 그림자와 그레이디언트 속성 >>

글자에 그림자 부여하기
	text-shadow: 5px 5px 5px black
				오른쪽 아래 흐림도 색상
박스에 그림자 부여하기
	box-shadow: 5px 5px 5px black
				오른쪽 아래 흐림도 색상
				
흐림도와 색상 사이에 inset 키워드를 넣으면 그림자가 태그 안쪽에 생성된다.

CSS3 Generator 웹사이트(CSS3gen.com)==> CSS3 Text Shadow Generator 또는 
	CSS3 Box Shadow Generator 항목 ==> 코드 복사
	

	
----------------------------------------------------------------------------------
	
1. 수평 정렬 레이아웃 (두 가지 방법이 있음)
	1번 방법)
	자손에게 float 속성을 지정하고, 부모의 overflow 속성에는 hidden 키워드를 적용
	width, height 속성을 입력하지 않고 overflow 속성을 적용하면 자손이 차지하는 너비를 모두 감싸는 특성이 있으므로 
		요소 위쪽과 아래쪽에 글자가 출력된다.
		
	<style>
		div.container{overflow:hidden;}
		div.item{
			float:left;
			margin:0 3px;
			padding:10px;
			border: 1px solid black;
		}
	</style>
	</head>
	<body>
		<div class="container">
			<div class="item">메뉴 - 1</div>
			<div class="item">메뉴 - 2</div>
			<div class="item">메뉴 - 3</div>
			<div class="item">메뉴 - 4</div>
		</div>
	</body>
			
	
	2번 방법)
	clear: both;를 이용한 수평 정렬 레이아웃
		수평 정렬하고 싶은 대상의 양쪽 아래에 div 태그를 배치하고 이 div 태그의 clear 속성을 both로 지정


2. 중앙 정렬 레이아웃
	중앙 정렬하고 싶은 태그에 width 속성을 부여하고 margin 속성을 '0 auto'로 입력한다.
	
	
	
	
	
----------------------------------------------------------------------------------

<< 요소 배치 >>

2. 요소를 중앙에 배치
	1) 중앙에 배치하려는 div 태그의 position 속성을 absolute로 지정
	2) left, top 속성을 50%로 지정
		=>div 태그의 왼쪽 위 꼭짓점이 중간에 위치하게 됨
	3) 중앙에 배치하려는 div 태그의 margin-left와 margin-right 속성에 음수를 입력
		(각각 height과 width의 절반)
		
3. 요소를 고정 위치에 배치	(Example 6, 교재 233p)
	고정 바 배치
	position:fixed
	left,top,right,bottom 속성에 값을 입력해 위치를 설정
	width 속성과 height 속성으로 크기 설정
	
	
<< 글자 생략 >>	(...)
	태그에 width 설정하고
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	
	
	
	
----------------------------------------------------------------------------------

<< 반응형 웹 >>

1. 뷰포트 설정
	viewport meta 태그
	예:
	<meta name="viewport" content="user-scalable=no,initial-scale=1,maximum-scale=1">
	
	viewport meta 태그에 입력할 수 있는 값
	
	width				화면 너비
	height				화면 높이
	initial-scale		초기 확대 비율
	user-scalable		확대 및 축소 가능 여부		no
	minimum-scale		최소 축소 비율
	maximum-scale		최대 확대 비율
	target-densitydpi	DPI 지정
	
2. 미디어 쿼리 설정

	폰/태블릿/데스크탑에서 화면 다르게 적용하기
	
	화면이면서 최대 너비가 767px 일 때
	<link rel="stylesheet" href="phone.css" media="screen and 
	(max-width: 767px)">
	또는
	@media screen and (max-width:767px){}	=> 선택자 비슷한 역할인 듯
	
	화면이면서 최소 너비가 768px, 최대 너비가 959px일 때
	<link rel="stylesheet" href="tablet.css" media="screen and 
	(min-width: 768px) and (max-width: 767px)">
	또는
	@media screen and (min-width: 768px) and (max-width:959px){}
	
	화면이면서 최소 너비가 960px일 때
	<link rel="stylesheet" href="desktop.css" media="screen and 
	(min-width: 960px)">
	또는
	@media screen and (min-width:960px){}
	
	화면 방향(가로/세로)에 따라 화면 다르게 적용하기
	
	<style>
		@media screen and (orientation: portrait){}		//수직
		@media screen and (orientation: landscape){}	//수평
	</style>
	
	보통 웹페이지는 일단 데스크탑 전용으로 만들고, 미디어 쿼리에 스마트폰과 태블릿PC에 적용하는 스타일을 입력함
		
