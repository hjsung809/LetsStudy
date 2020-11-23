<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean scope="application" id="passport" class="study.Passport" />

<%
  if(request.getMethod().equals("POST")) {
    if(true) {
      boolean success = passport.signUp(
          request.getParameter("email"),
          request.getParameter("password"),
          request.getParameter("phone_number"), 
          request.getParameter("description")
        );

      if (success) {
        out.println("<script>alert('회원가입에 성공했습니다.')</script>");
        response.sendRedirect("signin.jsp");
      } else {
        out.println("<script>alert('회원가입에 실패했습니다.')</script>");
      }
    } else {
      out.println("<script>alert('비밀 번호를 확인해 주세요.')</script>");
    }
  }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="init.css">

  <style>
    #signin_form {
      width: 360px;
      margin: 0 auto;
      border: 1px solid black;
      padding: 10px;
    }

    #signin_form input{
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      border: 1px solid #ccc;
      display: inline-block;
      box-sizing: border-box;
    }

    #signin_form button {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
    }

    #signin_form textarea{
      width: 100%;
      rows: 5;
      padding: 12px 20px;
      margin: 8px 0;
      border: 1px solid #ccc;
      display: inline-block;
      box-sizing: border-box;
    }

    button:hover {
      opacity: 0.8;
    }
  </style>
</head>
<body>
  <header id="main_header">
    <div id="title">
      <h1>Let's Study</h1>
      <h2>Sing Up</h2>
    </div>
    <nav id="main_gnb">
      <ul>
        <li><a href="#">메인 화면</a></li>
        <li><a href="#">검색 화면</a></li>
      </ul>
    </nav>
    <nav id="main_lnb">
      <ul>
        <li><a href="#">로컬 기능 1</a></li>
        <li><a href="#">로컬 기능 2</a></li>
      </ul>
    </nav>
  </header>
  <div id="content">

    <section id="main_section">
      <form id="signin_form" method=post action="signup.jsp">
        <div>

        </div>
        <div>
          <label for="email">E-Mail</label>
          <input type="email" name="email">
          <label for="password">Password</label>
          <input type="password" name="password">
          <label for="password2">Repeat Password</label>
          <input type="password" name="password2">
          <label for="phone_number">Phone Number</label>
          <input type="tel" name="phone_number">
          <label for="description">자기 소개</label>
          <textarea name="description"></textarea>
          <button type="submit">회원가입</button>
        </div>
        이미 회원이신가요? <a href="signin.jsp">로그인</a>
      </form>
    </section>

  </div>
  <footer id="main_footer">
    <h3>Let's study</h3>
  </footer>
</body>
</html>