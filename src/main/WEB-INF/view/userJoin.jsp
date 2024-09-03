<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/resources/style/join.css.">
</head>
<body>
<div class="container">
    <h1>회원가입</h1>
    <form action="/register" method="POST" enctype="multipart/form-data">
        <div class="input-group">
            <label for="useremail">이메일</label>
            <input type="email" id="useremail" name="useremail" placeholder="이메일을 입력하세요" required>
        </div>

        <div class="input-group">
            <label for="userpassword">비밀번호</label>
            <input type="password" id="userpassword" name="userpassword" placeholder="비밀번호를 입력하세요" required>
        </div>

        <div class="input-group">
            <label for="username">이름</label>
            <input type="text" id="username" name="username" placeholder="이름을 입력하세요" required>
        </div>

        <div class="input-group">
            <label for="userschool">학교</label>
            <input type="text" id="userschool" name="userschool" placeholder="학교를 입력하세요" required>
        </div>

        <div class="input-group">
            <label for="userdepartment">학과</label>
            <input type="text" id="userdepartment" name="userdepartment" placeholder="학과를 입력하세요" required>
        </div>

        <div class="input-group">
            <label for="usergrade">학년</label>
            <input type="number" id="usergrade" name="usergrade" placeholder="학년을 입력하세요" required min="1" max="4">
        </div>

        <div class="input-group">
            <label for="userphonenumber">전화번호</label>
            <input type="tel" id="userphonenumber" name="userphonenumber" placeholder="전화번호를 입력하세요" required>
        </div>

        <div class="input-group">
            <label for="userprofileimage">프로필 이미지</label>
            <input type="file" id="userprofileimage" name="userprofileimage" accept="image/*" required>
        </div>

        <button type="submit">가입하기</button>
    </form>
</div>
</body>
</html>
