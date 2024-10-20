<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EveryTime</title>

    <!-- Font Awesome 아이콘 및 스타일 적용 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            height: 100%;
        }

        /* 전체 레이아웃 그리드 */
        .container {
            display: grid;
            grid-template-columns: 240px 1fr;
            grid-template-rows: auto 1fr auto;
            height: 100vh;
            grid-template-areas:
                "sidebar header"
                "sidebar main"
                "footer footer";
            transition: all 0.3s;
        }

        /* 왼쪽 사이드바 - 색상 변경 */
        .sidebar {
            background-color: #2c3e50; /* 메인 사이드바 배경 색상 변경 */
            color: #ecf0f1; /* 글자 색상 */
            padding: 20px;
            grid-area: sidebar;
            display: flex;
            flex-direction: column;
            transition: all 0.3s;
            position: relative;
        }

        /* 사이드바 링크 스타일 */
        .sidebar a {
            color: #ecf0f1; /* 링크 글자 색상 */
            text-decoration: none;
            margin: 10px 0;
            padding: 10px;
            background-color: #34495e; /* 링크 배경 색상 */
            border-radius: 4px;
            display: flex;
            align-items: center;
            transition: all 0.3s;
        }

        /* 링크 호버 효과 */
        .sidebar a:hover {
            background-color: #1abc9c; /* 링크 호버 시 색상 */
        }

        /* 숨기기 버튼 */
        .sidebar .toggle-btn {
            position: absolute;
            top: 20px;
            right: -10px;
            background-color: #1abc9c; /* 숨기기 버튼 색상 */
            color: white;
            border-radius: 50%;
            padding: 5px;
            cursor: pointer;
            transition: transform 0.3s;
        }

        /* 숨기기 가능한 왼쪽 사이드바 */
        .sidebar.collapsed {
            width: 35px;
        }

        .sidebar.collapsed a span {
            display: none;
        }

        /* 아이콘만 보이는 경우 */
        .collapsed .toggle-btn {
            transform: rotate(180deg);
        }

        /* 프로필 영역 - 위치 상단 우측 */
        .profile-container {
            position: fixed;
            top: 10px;
            right: 20px;
            display: flex;
            align-items: center;
        }

        .profile-container img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .profile-container .user-details {
            text-align: right;
        }

        .profile-container .user-details .user-name {
            font-weight: bold;
            color: #333;
        }

        .profile-container .user-details .user-email {
            font-size: 12px;
            color: green;
        }

        .profile-container .user-details .user-school {
            color: blue;
            font-size: 14px;
        }

        /* 중앙 게시글 영역 */
        .main {
            grid-area: main;
            padding: 20px;
            padding-left: 50px;
            padding-right: 50px;
            overflow-y: auto;
            background-color: white;
            transition: all 0.3s;
        }

        .sidebar.collapsed ~ .main {
            padding-left: 80px; /* 사이드바가 접히면 왼쪽으로 이동 */
            padding-right: 80px; /* 오른쪽에도 공백 추가 */
        }

        .post-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
        }

        .post-image-placeholder {
            width: 100%;
            height: 300px;
            background-color: #e0e0e0;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .post-card .post-header {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .post-card .post-header img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .post-card .post-header .user-info {
            font-weight: bold;
        }

        .post-card .post-description {
            margin: 10px 0;
        }

        .post-icons {
            display: flex;
            gap: 15px;
            margin-top: 10px;
        }

        .post-icons i {
            font-size: 24px;
            margin-right: 10px;
            cursor: pointer;
        }

        .post-comments {
            margin-top: 10px;
        }

        .post-comments .comment {
            margin-bottom: 5px;
            font-size: 14px;
        }

        .post-comments .comment .comment-user {
            font-weight: bold;
        }

        .post-comments .comment .comment-date {
            color: #999;
            font-size: 12px;
        }

        /* 푸터 */
        .footer {
            grid-area: footer;
            text-align: center;
            padding: 10px;
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>

<div class="container">

    <!-- 왼쪽 사이드바 -->
    <div class="sidebar" id="sidebar">
        <span class="toggle-btn" id="toggleBtn">&#10094;</span>
        <a href="/member/main"><i class="fas fa-home"></i> <span>홈</span></a>
        <a href="/member/myProfile"><i class="fas fa-user"></i> <span>내 페이지</span></a>
        <a href="/member/project"><i class="fas fa-project-diagram"></i> <span>프로젝트</span></a>
        <a href="#"><i class="fas fa-comment-dots"></i> <span>채팅</span></a>
        <a href="/member/picture"><i class="fas fa-camera"></i> <span>내 사진첩</span></a>
    </div>

    <!-- 중앙 게시글 영역 -->
    <div class="main">
        <div class="post-card">
            <div class="post-header">
                <img src="/mnt/data/image.png" alt="유저 프로필">
                <div class="user-info">
                    <span>abcabc123@naver.com님</span>
                    <span>서울대학교</span>
                </div>
            </div>
            <div class="post-image-placeholder"></div>
            <div class="post-description">
                <p> <span class="comment-user">qwert123@gmail.com</span> : 이 게시물은 서울대학교와 관련된 내용입니다.</p>
            </div>
            <div class="post-icons">
                <i class="far fa-heart"></i>
                <i class="far fa-comment"></i>
                <i class="far fa-share-square"></i>
            </div>
            <div class="post-comments">
                <div class="comment">
                    <span class="comment-user">qwert123@gmail.com</span>
                    <span class="comment-text">좋아요!</span>
                    <div class="comment-date">3일 전</div>
                </div>
            </div>
        </div>

        <!-- 두 번째 게시물 -->
        <div class="post-card">
            <div class="post-header">
                <img src="/mnt/data/image.png" alt="유저 프로필">
                <div class="user-info">
                    <span>Koreun9515@naver.com님</span>
                    <span>경민대학교</span>
                </div>
            </div>
            <div class="post-image-placeholder"></div>
            <div class="post-description">
                <p> <span class="comment-user">qwert123@gmail.com</span> : 이 게시물은 서울대학교와 관련된 내용입니다.</p>
            </div>
            <div class="post-icons">
                <i class="far fa-heart"></i>
                <i class="far fa-comment"></i>
                <i class="far fa-share-square"></i>
            </div>
            <div class="post-comments">
                <div class="comment">
                    <span class="comment-user">testemail@gmail.com</span>
                    <span class="comment-text">정말 멋집니다!</span>
                    <div class="comment-date">1일 전</div>
                </div>
            </div>
        </div>
    </div>

    <!-- 프로필 영역 - 상단 우측 위치 -->
    <div class="profile-container">
        <img src="/mnt/data/image.png" alt="프로필 이미지">
        <div class="user-details">
            <span class="user-name">정인대학교</span><br>
            <span class="user-email">ghfhdaum@naver.com</span>
        </div>
    </div>

    <!-- 푸터 -->
    <div class="footer">
        <span>회사소개 | 인재채용 | 회원약관 | 개인정보처리방침 | 이메일무단수집거부 | 채용정보 API | 재무문의 | 고객센터</span>
    </div>

</div>

<!-- JavaScript to collapse the sidebar -->
<script>
    document.getElementById('toggleBtn').addEventListener('click', function() {
        const sidebar = document.getElementById('sidebar');
        const container = document.querySelector('.container');
        sidebar.classList.toggle('collapsed');
        container.classList.toggle('collapsed');
    });
</script>

</body>
</html>
