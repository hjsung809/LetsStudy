<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="init.css">

  <style>
    #my_study_info {
      border: 1px solid black;
      padding: 10px;
      margin: 10px;
    }

    #my_study_list {
      border: 1px solid black;
      width: 100%;
      height: 500px;
      background-color: darksalmon;
    }

    #study_join_form input{
      width: 80%;
      display: block;
      margin: 5px auto;
    }

    #study_join_form textarea{
      width: 80%;
      display: block;
      margin: 5px auto;
    }

    #study_join_form button{
      width: 80%;
      display: block;
      margin: 5px auto;
    }
  </style>
</head>
<body>
  <header id="main_header">
    <div id="title">
      <h1>Let's Study</h1>
      <h2>My Study</h2>
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
    <nav id="main_user">
      <div>
        <img src="user.png" width="30px" height="30px">
        <div>ID</div>
      </div>
    </nav>
  </header>
  <div id="content">
    <section id="main_section">
      <div id="my_study_info">
        <h3>가입된 스터디</h3>

        <div id="my_study_list">
          스터디 리스트
        </div>
        찾으시는 스터디가 없으신가요? <a href=""> 스터디 생성하기</a>
      </div>
    </section>
    <aside id="main_aside">aside</aside>
  </div>
  <footer id="main_footer">
    <h3>Let's study</h3>
  </footer>
</body>
</html>