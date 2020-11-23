<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="init.css">
  
  <style>
    #study_search_word_input input{
      width: calc(95% - 50px);
      padding: 6px 10px;
      margin: 8px 0;
      border: 1px solid #ccc;
      display: inline-block;
      box-sizing: border-box;
    }
    #study_search_word_input button{
      width: 50px;
      padding: 6px 10px;
      margin: 8px auto;
      border: 1px solid #ccc;
      display: inline-block;
      box-sizing: border-box;
    }

    /* #signin_form button {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
    } */

    #study_list {
      width: 100%;
      height: 500px;
      background-color:darksalmon;
    }
  </style>
</head>
<body>
  <header id="main_header">
    <div id="title">
      <h1>Let's Study</h1>
      <h2>Study Search</h2>
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
      <form id="study_search_form">
        <div id="study_search_word_input">
          <input type="text" name="search_word">
          <button type="submit">검색</button>
        </div>
        <div id="study_search_radio">
          스터디 종류:
          <input id="study_type_choice1" type="radio" name="study_type" value="job">
          <label for="study_type_choice1">진로</label>
          <input id="study_type_choice2" type="radio" name="study_type" value="hobby">
          <label for="study_type_choice2">취미</label>
        </div>
      </form>
      <div id="study_list">

      </div>
    </section>
    <aside id="main_aside">aside</aside>
  </div>
  <footer id="main_footer">
    <h3>Let's study</h3>
  </footer>
</body>
</html>