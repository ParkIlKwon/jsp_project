<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<String> sampleId= Arrays.asList("qwer","abcd","hello","admin");
List<String> samplePw=Arrays.asList("1111","2222","3333","admin");
List<String> sampleName=Arrays.asList("이만수","박영희","이수민","관리자");
List<String> sampleGender=Arrays.asList("남성","여성","여성","남성");
int log = -1;

session.setAttribute("idList", sampleId);
session.setAttribute("pwList", samplePw);
session.setAttribute("namelist", sampleName);
session.setAttribute("genderList", sampleGender);
session.setAttribute("log", log);

//세션 setAttribute 해주면 30분동안 서버에 저장된다.

response.sendRedirect("02_main.jsp");
%>