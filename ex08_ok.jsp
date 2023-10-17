
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

   //POST > 한글 인코딩
   request.setCharacterEncoding("UTF-8");

   //텍스트 박스
   //1. 입력O > 입력값 반환
   //2. 입력X >
   String txt1 = request.getParameter("txt1");
   
   //System.out.println(txt1 == null);      //false
   //System.out.println(txt1.equals(""));   //true
   
   
   //암호 박스
   String txt2 = request.getParameter("txt2");
   
   
   //다중 텍스트
   String txt3 = request.getParameter("txt3");

   
   txt3 = txt3.replace("\r\n","<br>");
   
   
   //체크박스
   //1. value 없을 때
   //   체크o > "on" 전송
   // 	체크x > null 전송
   
   //2. value 있을 때
   //	체크o > value값이 전송
   // 	체크x > null 전송
   String cb1 = request.getParameter("cb1");
   
   
  //체크박스들
/*    String cb2 = request.getParameter("cb2");
   String cb3 = request.getParameter("cb3");
   String cb4 = request.getParameter("cb4");
   
   String temp = "";
   temp += cb2 + ",";
   temp += cb3 + ",";
   temp += cb4 + ","; */
   
/*    String temp = "";
   
   for(int i=2; i<=4; i++){
   temp += request.getParameter("cb"+i)+",";
   } */
   
   
   
   //name 1개일 때
  // String cb5 = request.getParameter("cb5");
   
   
   //동일한 name의 컨트롤이 여러개 전송될 때
  	String[] cb5 = request.getParameterValues("cb5");
   
   //라디오 버튼
   String rb = request.getParameter("rb");
   
   
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>

</style>
</head>
<body>
   <!-- ex08_ok.jsp -->
   <h1>결과</h1>
   
   <h2>텍스트 박스</h2>
   <div><%= txt1 %></div>

   <h2>암호 박스</h2>
   <div><%= txt2 %></div>
   
   <h2>다중 텍스트</h2>
   <div><%= txt3 %></div>
   
   <h2>체크 박스</h2>
   <div><%= cb1 %></div>

<%-- 
   <h2>체크 박스들</h2>
   <div><%= temp %></div> 
   --%>
  
   
   
   
   <h2>체크 박스들</h2>
   <div><%= Arrays.toString(cb5) %></div>
   
   <h2>라디오버튼</h2>
   <div><%= rb %></div>
   
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
   <script>
      
      
   
   </script>

</body>
</html>