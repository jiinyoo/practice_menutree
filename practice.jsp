<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.firstmenu{
	 list-style:none;
	 margin-left:50;
	 padding:0;
	 position: relative;
	  
}
.firstmenu > li{
	float:left;
	position:relative;
	margin-left:100px;
}

.submenu{
	display:none;
	list-style:none;
	position:absolute;
	top:100%;
	left:-35px;
	padding:0;
	background:#fff;
	border:1px solid #ccc;
	z-index:1000;
	 	
	
}

.submenu > li {
 padding: 5px 10px;
  width:130px;
}

.submenu > li:hover {
    background: #f0f0f0; /* 마우스 오버 시 배경색 변경 */
}

._submenu >li
{

	float:left;
	list-style:none;
	margin-left:50px;

}


.contents
{
	display:none;
}


</style>
<script>
function clicked(n){
	var len=document.getElementsByClassName("submenu").length;
	for(i=0; i<len; i++){
		document.getElementsByClassName("submenu")[i].style.display="none";
	}
	document.getElementsByClassName("submenu")[n].style.display="block";
}



function view(n){
	
	var len=document.getElementsByClassName("contents").length;
	for(i=0; i<len; i++){
		document.getElementsByClassName("contents")[i].style.display="none";
	}
		
		
		document.getElementById(n).style.display="block";
	

		var len=document.getElementsByClassName("submenu").length;
		for(i=0; i<len; i++){
			document.getElementsByClassName("submenu")[i].style.display="none";
		}
}








</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul class="firstmenu">
	<li><span onclick="clicked(0)">회사소개</span>
		<ul class="submenu">
			<li onclick="view('0-0')">회사소개 및 개요</li>
			<li onclick="view('0-1')">사업분야</li>
			<li onclick="view('0-2')">비전</li>
			<li onclick="view('0-3')">경영이념</li>
			<li onclick="view('0-4')">오시는길</li>
			
		</ul>
	</li>
	<li><span onclick="clicked(1)">제품소개</span>
		<ul class="submenu">
			<li onclick="view('1-0')">Cadpower</li>
			<li onclick="view('1-1')">Autodesk</li>
		</ul>	
	</li>
	<li><span onclick="clicked(2)">BIM컨설팅</span>
		<ul class="submenu">
			<li onclick="view('2-0')">BIM</li>
			<li onclick="view('2-1')">BIM사업</li>
			<li onclick="view('2-2')">BIM교육</li>
			<li onclick="view('2-3')">BIM컨설팅</li>
		</ul>
	</li>
	<li><span onclick="clicked(3)">고객지원</span>
		<ul class="submenu">
			<li onclick="view('3-0')">기술지원안내</li>
			<li onclick="view('3-1')">공지사항</li>
			<li onclick="view('3-2')">자료실</li>
			<li onclick="view('3-3')">FAQ</li>
		</ul>
	</li>
</ul>


<br>

<hr>




<!-- 첫 번째 탭의 내용 출력 -->
<!-- undersubmenu의 뷰 콘텐츠 표시 -->
 <div class="contents" id="0-0">
	<ul class="_submenu">
			<li onclick="view('0-0')">회사소개 및 개요</li>
			<li onclick="view('0-1')">사업분야</li>
			<li onclick="view('0-2')">비전</li>
			<li onclick="view('0-3')">경영이념</li>
			<li onclick="view('0-4')">오시는길</li>
	</ul>
	<br>
	<img src="0-0.PNG">
</div>


 <div class="contents" id="0-1">
	<ul class="_submenu">
			<li onclick="view('0-0')">회사소개 및 개요</li>
			<li onclick="view('0-1')">사업분야</li>
			<li onclick="view('0-2')">비전</li>
			<li onclick="view('0-3')">경영이념</li>
			<li onclick="view('0-4')">오시는길</li>
	</ul>
	<br>
	<img src="0-1.PNG">
</div>

 <div class="contents" id="0-2">
	<ul class="_submenu">
			<li onclick="view('0-0')">회사소개 및 개요</li>
			<li onclick="view('0-1')">사업분야</li>
			<li onclick="view('0-2')">비전</li>
			<li onclick="view('0-3')">경영이념</li>
			<li onclick="view('0-4')">오시는길</li>
	</ul>
	<br>
	<img src="0-2.PNG">
</div>

 <div class="contents" id="0-3">
	<ul class="_submenu">
			<li onclick="view('0-0')">회사소개 및 개요</li>
			<li onclick="view('0-1')">사업분야</li>
			<li onclick="view('0-2')">비전</li>
			<li onclick="view('0-3')">경영이념</li>
			<li onclick="view('0-4')">오시는길</li>
	</ul>
	<br>
	<img src="0-3.PNG">
</div>

 <div class="contents" id="0-4">
	<ul class="_submenu">
			<li onclick="view('0-0')">회사소개 및 개요</li>
			<li onclick="view('0-1')">사업분야</li>
			<li onclick="view('0-2')">비전</li>
			<li onclick="view('0-3')">경영이념</li>
			<li onclick="view('0-4')">오시는길</li>
	</ul>
	<br>
	<img src="0-4.PNG">
</div>


<!-- 두 번째 탭의 뷰들 -->
 <div class="contents" id="1-0">
	<ul class="_submenu">
		
			<li onclick="view('1-0')">Cadpower</li>
			<li onclick="view('1-1')">Autodesk</li>		
	</ul>
	<br>
	<img src="1-0.PNG">
</div>


 <div class="contents" id="1-1">
	<ul class="_submenu">
			<li onclick="view('1-0')">Cadpower</li>
			<li onclick="view('1-1')">Autodesk</li>		
	</ul>
	<br>
	<img src="1-1.PNG">
	
</div>


<!-- 세 번째 탭의 뷰들 -->

 <div class="contents" id="2-0">
	<ul class="_submenu">
			<li onclick="view('2-0')">BIM</li>
			<li onclick="view('2-1')">BIM사업</li>
			<li onclick="view('2-2')">BIM교육</li>
			<li onclick="view('2-3')">BIM컨설팅</li>	
	</ul>
	<br>
	<img src="2-0.PNG">
</div>

 <div class="contents" id="2-1">
	<ul class="_submenu">
			<li onclick="view('2-0')">BIM</li>
			<li onclick="view('2-1')">BIM사업</li>
			<li onclick="view('2-2')">BIM교육</li>
			<li onclick="view('2-3')">BIM컨설팅</li>	
	</ul>
	<br>
	<img src="2-1.PNG">
</div>

 <div class="contents" id="2-2">
	<ul class="_submenu">
			<li onclick="view('2-0')">BIM</li>
			<li onclick="view('2-1')">BIM사업</li>
			<li onclick="view('2-2')">BIM교육</li>
			<li onclick="view('2-3')">BIM컨설팅</li>	
	</ul>
	<br>
	<img src="2-2.PNG">
</div>


 <div class="contents" id="2-3">
	<ul class="_submenu">
			<li onclick="view('2-0')">BIM</li>
			<li onclick="view('2-1')">BIM사업</li>
			<li onclick="view('2-2')">BIM교육</li>
			<li onclick="view('2-3')">BIM컨설팅</li>	
	</ul>
	<br>
	<img src="2-3.PNG">
</div>


<!-- 네 번째 탭의 뷰들 -->

 <div class="contents" id="3-0">
	<ul class="_submenu">
			<li onclick="view('3-0')">기술지원안내</li>
			<li onclick="view('3-1')">공지사항</li>
			<li onclick="view('3-2')">자료실</li>
			<li onclick="view('3-3')">FAQ</li>
	</ul>
	<br>
	<img src="3-0.PNG">
</div>


 <div class="contents" id="3-1">
	<ul class="_submenu">
			<li onclick="view('3-0')">기술지원안내</li>
			<li onclick="view('3-1')">공지사항</li>
			<li onclick="view('3-2')">자료실</li>
			<li onclick="view('3-3')">FAQ</li>
	</ul>
	<br>
	<img src="3-1.PNG">
</div>


 <div class="contents" id="3-2">
	<ul class="_submenu">
			<li onclick="view('3-0')">기술지원안내</li>
			<li onclick="view('3-1')">공지사항</li>
			<li onclick="view('3-2')">자료실</li>
			<li onclick="view('3-3')">FAQ</li>
	</ul>
	<br>
	<img src="3-2.PNG">
</div>



<div class="contents" id="3-3">
	<ul class="_submenu">
			<li onclick="view('3-0')">기술지원안내</li>
			<li onclick="view('3-1')">공지사항</li>
			<li onclick="view('3-2')">자료실</li>
			<li onclick="view('3-3')">FAQ</li>
	</ul>
	<br>
	<img src="3-3.PNG">
</div>




</body>
</html>