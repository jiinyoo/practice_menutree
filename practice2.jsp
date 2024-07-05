<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*" %>
<html>
<head>
<meta charset="UTF-8">
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
</head>
<body>



    <%
        // HashMap 생성 및 데이터 추가(DB 대신) 첫번째 메뉴가 key, 내부 메뉴가 value리스트로 들어가 있음
        Map<String, List<String>> map = new LinkedHashMap<>();
        
        List<String> list0 = new ArrayList<>();
        list0.add("회사소개 및 개요");
        list0.add("사업분야");
        list0.add("비전");
        list0.add("경영이념");
        list0.add("오시는 길");

        List<String> list1 = new ArrayList<>();
        list1.add("Cadpower");
        list1.add("Autodesk");

        List<String> list2 = new ArrayList<>();
        list2.add("BIM");
        list2.add("BIM사업");
        list2.add("BIM교육");
        list2.add("BIM컨설팅");

        List<String> list3 = new ArrayList<>();
        list3.add("기술지원안내");
        list3.add("공지사항");
        list3.add("자료실");
        list3.add("FAQ");

        map.put("회사소개", list0);
        map.put("제품소개", list1);
        map.put("BIM컨설팅", list2);
        map.put("고객지원", list3);
        
   		
   
               
        

        // 메소드 선언
        class JSPHelper {
        //static은 클래스를 선언하지 않아도 되는 메소드인데 자바에선 안됨
        
        //인덱스값을 넣으면 해당 키의 값을 출력해 주는 메소드 -첫 번째 메뉴 출력을 위함
            public <K, V> K getKeyByIndex(Map<K, List<V>> map, int index) {
                List<K> keys = new ArrayList<>(map.keySet());
                if (index >= 0 && index < keys.size()) {
                    return keys.get(index);
                }
                return null;
            }
			//키의 인덱스와 value의 인덱스를 넣으면 해당 value값을 출력해 줌 - 두 번째 메뉴 출력을 위함
            public <K, V> V getValueByIndex(Map<K, List<V>> map, int keyIndex, int valueIndex) {
                List<K> keys = new ArrayList<>(map.keySet());
                if (keyIndex >= 0 && keyIndex < keys.size()) {
                    K key = keys.get(keyIndex);
                    List<V> values = map.get(key);
                    if (values != null && valueIndex >= 0 && valueIndex < values.size()) {
                        return values.get(valueIndex);
                    }
                }
                return null;
            }
            
			
			//key값의 size는 map.size()로 쉽게 구할 수 있으나 특정 key값 안의 value의 size는 메소드를 만들어서 구해야 함
            public <K, V> int getValueListSize(Map<K, List<V>> map, int keyIndex) {
                List<K> keys = new ArrayList<>(map.keySet());
                if (keyIndex >= 0 && keyIndex < keys.size()) {
                    K key = keys.get(keyIndex);
                    List<V> values = map.get(key);
                    if (values != null) {
                        return values.size();
                    }
                }
                return -1; // 유효하지 않은 경우 -1 반환
            }
            
            
            
            
        }

        JSPHelper helper = new JSPHelper();     
        
        
  %>
  <!-- 줄인 HTML코드 부분-->
    <ul class="firstmenu">
      
 <%
    	for(int i=0; i<map.size(); i++){
    		String keytext=helper.getKeyByIndex(map,i);
 %>   		
    		
    		<li><span onclick="clicked(<%=i%>)"><%=keytext%></span>
    		<ul class="submenu">
 			
 <%   	
 			for(int j=0; j<helper.getValueListSize(map,i); j++) 
 			{
 				String valueTexts=helper.getValueByIndex(map,i,j);
 %>				
 				<li onclick="view('<%=i%>-<%=j%>')"><%=valueTexts%></li>
 <%				
 			}
%> 
 			</ul>
<%  
    	}
 %>
  	</ul>     
  	
  	
  <!--  div content돌리는 부분-->

   
      
 <%
    	for(int i=0; i<map.size(); i++){  	
 			for(int j=0; j<helper.getValueListSize(map,i); j++) 
 			{
 				
%>
 			<div class="contents" id="<%=i%>-<%=j%>">	
 			<br>
	 			<ul class="_submenu">
<% 
				for(int k=0; k<helper.getValueListSize(map,i); k++){
					String valueTexts=helper.getValueByIndex(map,i,k);
%>
					<li onclick="view('<%=i%>-<%=k%>')"><%=valueTexts%></li>
						
<% 	
				}

%>	 				 			
	 			</ul>
	 			<br>
	 			<img src="<%=i%>-<%=j%>.PNG">
 			</div>
<%				
 			}
%> 
<%  
    	}
 %>
  



   
</body>
</html>