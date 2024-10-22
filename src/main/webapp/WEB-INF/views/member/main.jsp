<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EveryTime</title>

    <!-- Font Awesome 아이콘 및 스타일 적용 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/style/mainBody.css">


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

<%--
    <!-- 푸터 -->
    <div class="footer">
        <span>회사소개 | 인재채용 | 회원약관 | 개인정보처리방침 | 이메일무단수집거부 | 채용정보 API | 재무문의 | 고객센터</span>
    </div>--%>

</div>
<script src="/resources/script/main.js"></script>
</body>
</html>
