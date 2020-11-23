<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="init.css">

  <style>
    #study_create_form {
      border: 1px solid black;
      padding: 10px;
      margin: 10px;
    }

    #study_create_form > input{
      width: 80%;
      display: block;
      margin: 5px auto;
    }

    #study_create_form > textarea{
      width: 80%;
      display: block;
      margin: 5px auto;
    }

    #study_create_form > button{
      width: 80%;
      display: block;
      margin: 5px auto;
    }


    #study_search_radio {
      width: 80%;
      margin: 5px auto;
    }
  </style>
</head>
<body>
  <header id="main_header">
    <div id="title">
      <h1>Let's Study</h1>
      <h2>Create Study</h2>
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
      <form id="study_create_form">
        <h3>스터디 생성</h3>
        <input type="text" name="name" placeholder="스터디 이름">
        <textarea name="" id="" cols="30" rows="10">스터디 소개글</textarea>
        <div id="study_search_radio">
          스터디 종류:
          <input id="study_type_choice1" type="radio" name="study_type" value="job">
          <label for="study_type_choice1">진로</label>
          <input id="study_type_choice2" type="radio" name="study_type" value="hobby">
          <label for="study_type_choice2">취미</label>
        </div>
        <button type="submit">스터디 생성</button>
      </form>
    </section>
    <aside id="main_aside">aside</aside>
  </div>
  <footer id="main_footer">
    <h3>Let's study</h3>
  </footer>
</body>
</html>