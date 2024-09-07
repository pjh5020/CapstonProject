<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/resources/style/join.css">
</head>
<body>
<div class="signup-container">
    <div class="signup-box">
        <h1 class="logo">Instagram</h1>
        <p class="signup-description">친구들의 사진과 동영상을 보려면 가입하세요.</p>
        <form id="userJoin" enctype="multipart/form-data">
            <div class="input-group email-group">
                <input type="email" id="useremail" name="useremail" placeholder="이메일" required>
                <button type="button" class="duplicate-btn" id="checkEmailBtn">중복체크</button>
            </div>
            <p id="emailCheckResult" class="email-check-result"></p>

            <div class="input-group">
                <input type="password" id="userpassword" name="userpassword" placeholder="비밀번호" required>
            </div>

            <div class="input-group">
                <input type="text" id="username" name="username" placeholder="이름" required>
            </div>

            <div class="input-group">
                <input type="text" id="userschool" name="userschool" placeholder="학교" required>
            </div>

            <div class="input-group">
                <input type="text" id="userdepartment" name="userdepartment" placeholder="학과" required>
            </div>

            <div class="input-group">
                <input type="number" id="usergrade" name="usergrade" placeholder="학년" required min="1" max="4">
            </div>

            <div class="input-group">
                <input type="tel" id="userphonenumber" name="userphonenumber" placeholder="전화번호" required>
            </div>
<%--
            <div class="input-group">
                <label for="userprofileimage" class="file-label">프로필 이미지</label>
                <input type="file" id="userprofileimage" name="userprofileimage" accept="image/*" required>
            </div>--%>

            <button type="submit" class="signup-btn">가입하기</button>
        </form>
        <p class="login-link">계정이 있으신가요? <a href="/login">로그인</a></p>
    </div>
</div>
<script src="/resources/script/userJoin.js"></script> <!-- JS 파일 경로 추가 -->
</body>
</html>
