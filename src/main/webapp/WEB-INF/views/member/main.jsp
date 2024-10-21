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

        /* 중앙 게시글 영역 */
        .main {
            grid-area: main;
            padding: 20px;
            padding-left: 50px;
            overflow-y: auto;
            background-color: white;
            transition: all 0.3s;
        }

        .post-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
        }

        .post-header {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .post-header img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 10px;
        }

        /* 게시글 이미지 영역 */
        .post-image-placeholder {
            position: relative;
            text-align: center;
        }

        .post-image-placeholder img {
            width: 100%;
            max-width: 800px;
            height: 400px;
            border-radius: 10px;
            object-fit: cover;
        }

        .arrow {
            position: absolute;
            top: 50%;
            font-size: 30px;
            cursor: pointer;
            color: black;
        }

        .arrow.left {
            left: 10px;
        }

        .arrow.right {
            right: 10px;
        }

        /* 이미지 인덱스 표시 */
        .image-index {
            position: absolute;
            top: 3%;
            right: 10%;
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            padding: 5px;
            border-radius: 5px;
        }

        .post-description {
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

        .main-content {
            margin-right: 18%;
        }
    </style>
</head>
<body>

<div class="container">

    <!-- 왼쪽 사이드바 포함 -->
    <jsp:include page="/WEB-INF/views/member/sidebar/sidebar.jsp" flush="true" />

    <!-- 중앙 게시글 영역 -->
    <div class="main-content">
        <div class="main">
            <!-- 첫 번째 게시글 -->
            <div class="post-card">
                <div class="post-header">
                    <img src="/resources/image/경민대.png" alt="유저 프로필">
                    <div class="user-info">
                        <span>abcabc123@naver.com님</span>
                        <span>경민대학교</span>
                    </div>
                </div>
                <!-- 게시글 이미지 추가 -->
                <div class="post-image-placeholder">
                    <span class="arrow left">&#10094;</span>
                    <img id="postImage" src="/resources/image/seoulcampuse.jpg" alt="게시글 이미지">
                    <span class="arrow right">&#10095;</span>
                    <div class="image-index">
                        <span id="imageIndex">1/3</span>
                    </div>
                </div>
                <div class="post-description">
                    <p><span class="comment-user">qwert123@gmail.com</span> : 이 게시물은 경민대학교와 관련된 내용입니다.</p>
                </div>
                <div class="post-icons">
                    <i class="far fa-heart"></i>
                    <i class="far fa-comment"></i>
                    <i class="far fa-share-square"></i>
                    <i class="fas fa-exclamation-triangle"></i>
                    <i class="far fa-bookmark"></i>
                </div>
                <div class="post-comments">
                    <div class="comment">
                        <span class="comment-user">qwert123@gmail.com</span>
                        <span class="comment-text">좋아요!</span>
                        <div class="comment-date">3일 전</div>
                    </div>
                </div>
            </div>

            <!-- 두 번째 게시글 -->
            <div class="post-card">
                <div class="post-header">
                    <img src="/resources/image/경민대.png" alt="유저 프로필">
                    <div class="user-info">
                        <span>abcabc123@naver.com님</span>
                        <span>경민대학교</span>
                    </div>
                </div>
                <!-- 게시글 이미지 추가 -->
                <div class="post-image-placeholder">
                    <span class="arrow left">&#10094;</span>
                    <img id="postImage" src="/resources/image/seoulcampuse.jpg" alt="게시글 이미지">
                    <span class="arrow right">&#10095;</span>
                    <div class="image-index">
                        <span id="imageIndex">1/3</span>
                    </div>
                </div>
                <div class="post-description">
                    <p><span class="comment-user">qwert123@gmail.com</span> : 이 게시물은 경민대학교와 관련된 내용입니다.</p>
                </div>
                <div class="post-icons">
                    <i class="far fa-heart"></i>
                    <i class="far fa-comment"></i>
                    <i class="far fa-share-square"></i>
                    <i class="fas fa-exclamation-triangle"></i>
                    <i class="far fa-bookmark"></i>
                </div>
                <div class="post-comments">
                    <div class="comment">
                        <span class="comment-user">qwert123@gmail.com</span>
                        <span class="comment-text">좋아요!</span>
                        <div class="comment-date">3일 전</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/views/member/header/profile.jsp" flush="true" />

    <!-- 드롭다운 메뉴 추가 -->
    <div class="profile-dropdown" id="profileDropdown" style="display:none;">
        <a href="#">내 정보</a>
        <a href="#" id="logoutBtn">로그아웃</a>
    </div>
<%--
    <!-- 푸터 -->
    <div class="footer">
        <span>회사소개 | 인재채용 | 회원약관 | 개인정보처리방침 | 이메일무단수집거부 | 채용정보 API | 재무문의 | 고객센터</span>
    </div>--%>

</div>

<!-- 이미지 슬라이더 로직 -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const images = [
            "/resources/image/경민대배경.jpg",
            "/resources/image/경민배경2.jpg",
            "/resources/image/seoulcampuse2.jpg"
        ];

        let currentIndex = 0;

        const postImage = document.getElementById('postImage');
        const imageIndex = document.getElementById('imageIndex');
        const leftArrow = document.querySelector('.arrow.left');
        const rightArrow = document.querySelector('.arrow.right');

        function updateImage() {
            postImage.src = images[currentIndex];
            imageIndex.textContent = `${currentIndex + 1}/${images.length}`;
        }

        leftArrow.addEventListener('click', function () {
            currentIndex = (currentIndex > 0) ? currentIndex - 1 : images.length - 1;
            updateImage();
        });

        rightArrow.addEventListener('click', function () {
            currentIndex = (currentIndex < images.length - 1) ? currentIndex + 1 : 0;
            updateImage();
        });

        updateImage();
    });


</script>

</body>
</html>
