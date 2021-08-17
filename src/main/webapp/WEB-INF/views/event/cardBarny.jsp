<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>

    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta http-equiv="X-UA-Compatible" content="ie=edge" />
      <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <link rel="stylesheet" type="text/css" href="/static/cardbarny/card.css" />
      <link rel="stylesheet" href="/static/css/5.0bootstrap.min.css" />
      <title>바니를 찾아라!</title>
    </head>

    <body>
      <div id="wrapper" class="container">
        <div class="title">
          <p>숨어있는 바니를 찾고 적립금을 받아가세요!</p>
        </div>
        <div id="cardground"></div>
        <div>
          <form>
            <button id="point" type="submit" style="display: none" class="btn btn-lg btn-outline-warning">
              적립하기
            </button>
          </form>
        </div>
      </div>
      <script type="text/javascript" src="/static/cardbarny/card.js"></script>
    </body>