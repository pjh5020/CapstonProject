<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <style>
        /* 전체 레이아웃 스타일 */
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: white;
            position: relative; /* 로고를 상단에 고정하기 위해 필요 */
        }

        .container {
            text-align: center;
            width: 500px;
        }

        /* 오른쪽 상단 로고 스타일 */
        .logo {
            position: absolute;
            top: 20px; /* 상단에서 20px 떨어진 위치 */
            right: 20px; /* 오른쪽에서 20px 떨어진 위치 */
        }

        .logo img {
            width: 80px; /* 로고 크기 조정 */
        }

        /* 제목 스타일 */
        h2 {
            font-size: 36px;
            color: #007bff;
            margin-bottom: 30px;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
        }

        /* 입력 필드 스타일 */
        input[type="text"], input[type="password"] {
            width: 100%; /* 입력 필드가 컨테이너의 100%를 차지 */
            padding: 15px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 20px;
            background-color: #f5f5f5;
        }

        /* 버튼 스타일 */
        .btn-group {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }

        .btn {
            width: 48%; /* 버튼이 화면의 절반을 차지하게 설정 */
            padding: 12px; /* 패딩을 줄여서 길쭉하게 */
            font-size: 16px;
            color: white;
            background-color: #007bff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        /* 링크 스타일 */
        .links {
            margin-top: 10px;
            font-size: 14px;
        }

        .links a {
            color: #007bff;
            text-decoration: none;
        }

        .links a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>

<div class="container">
    <h2>로그인</h2>

    <!-- 로그인 폼 -->
    <form id="userLoginForm">
        <div class="form-group">
            <input type="text" id="useremail" name="useremail" placeholder="이메일 입력" required>
        </div>
        <div class="form-group">
            <input type="password" id="userpassword" name="userpassword" placeholder="비밀번호 입력" required>
        </div>
        <div class="links">
            <a href="#">아이디 / 비밀번호 찾기</a>
        </div>
        <!-- 버튼 섹션 -->
        <div class="btn-group">
            <button type="button" class="btn">회원 가입</button>
            <button type="submit" class="btn">로그인</button>
        </div>
    </form>
</div>

<script src="/resources/script/userLogin.js"></script>
</body>
</html>
