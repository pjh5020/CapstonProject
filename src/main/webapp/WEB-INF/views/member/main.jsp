<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EveryTime</title>
    <link rel="stylesheet" href="/resources/style/mainBody.css">
</head>
<body>

<!-- 헤더 -->
<header class="header">
    <div class="header-left">
        <img src="/resources/image/img.png" alt="Logo" class="logo">

    </div>

    <div class="search-box">
        <input type="text" placeholder="검색" class="search-input">
    </div>

    <div class="header-right">
        <img src="/resources/icons/notification.png" alt="알림 아이콘" class="icon">
        <img src="/resources/icons/friends.png" alt="친구 목록 아이콘" class="icon">
        <img src="/resources/image/user.png" alt="프로필 아이콘" class="icon profile-icon">
    </div>
</header>

<!-- 본문 -->
<main>
    <section class="post-container">
        <article class="post-card">
            <div class="post-header">
                <img src="/resources/image/user-profile.png" alt="유저 프로필" class="user-profile">
                <div class="user-info">
                    <span class="user-name">abcabc123@naver.com님</span>
                    <span class="post-school">서울대학교</span>
                </div>
            </div>

            <!-- 슬라이더 시작 -->
            <div class="slider-container">
                <div class="slider">
                    <div class="slide"><img src="/resources/image/seoulcampuse2.jpg" alt="게시물 사진 1"></div>
                    <div class="slide"><img src="/resources/image/seoulcampuse.jpg" alt="게시물 사진 2"></div>
                    <div class="slide"><img src="/resources/image/seoulcampuse2.jpg" alt="게시물 사진 3"></div>
                </div>
                <button class="slider-btn prev-btn">&#10094;</button>
                <button class="slider-btn next-btn">&#10095;</button>
                <div class="pagination">
                    <span class="dot"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                </div>
            </div>
            <!-- 슬라이더 끝 -->

            <div class="post-content">
                <div class="post-icons">
                    <img src="/resources/icons/heart.png" alt="좋아요" class="icon">
                    <img src="/resources/icons/comment.png" alt="댓글" class="icon">
                    <img src="/resources/icons/share.png" alt="공유" class="icon">
                </div>


                <p class="likes-count">좋아요 225개</p>
                <p class="post-description">이 게시물은 ~와 관련된 내용입니다.</p>
                <div class="post-actions">
                    <button class="like-btn">좋아요</button>
                    <span>32</span>
                    <button class="comment-btn">댓글</button>
                    <span>15</span>
                </div>
            </div>
        </article>


        <article class="post-card">
            <div class="post-header">
                <img src="/resources/image/user-profile.png" alt="유저 프로필" class="user-profile">
                <div class="user-info">
                    <span class="user-name">abcabc123@naver.com님</span>
                    <span class="post-school">서울대학교</span>
                </div>
            </div>
            <!-- 슬라이더 시작 -->
            <div class="slider-container">
                <div class="slider">
                    <div class="slide">
                        <img src="/resources/image/seoulcampuse2.jpg" alt="게시물 사진 1">
                    </div>
                    <div class="slide">
                        <img src="/resources/image/seoulcampuse.jpg" alt="게시물 사진 2">
                    </div>
                    <div class="slide">
                        <img src="/resources/image/seoulcampuse2.jpg" alt="게시물 사진 3">
                    </div>
                    <!-- 추가 이미지들 -->
                </div>
                <button class="slider-btn prev-btn">&#10094;</button>
                <button class="slider-btn next-btn">&#10095;</button>
            </div>
            <!-- 슬라이더 끝 -->
            <div class="post-content">
                <div class="post-icons">
                    <img src="/resources/icons/heart.png" alt="좋아요" class="icon">
                    <img src="/resources/icons/comment.png" alt="댓글" class="icon">
                    <img src="/resources/icons/share.png" alt="공유" class="icon">
                </div>
                <p class="likes-count">좋아요 225개</p>
                <p class="post-description">이 게시물은 ~와 관련된 내용입니다.</p>
                <div class="post-actions">
                    <button class="like-btn">좋아요</button>
                    <span>32</span>
                    <button class="comment-btn">댓글</button>
                    <span>15</span>
                </div>
            </div>
        </article>


    </section>

    <section class="post-container">


        <!-- 반복되는 게시물 -->
        <article class="post-card">
            <div class="post-header">
                <img src="/resources/image/user-profile.png" alt="유저 프로필" class="user-profile">
                <div class="user-info">
                    <span class="user-name">kyungminuniversity123@kyungmin.ac.kr</span>
                    <span class="post-school">경민대학교</span>
                </div>
            </div>
            <!-- 슬라이더 시작 -->
            <div class="slider-container">
                <div class="slider">
                    <div class="slide">
                        <img src="/resources/image/seoulcampuse2.jpg" alt="게시물 사진 1">
                    </div>
                    <div class="slide">
                        <img src="/resources/image/seoulcampuse.jpg" alt="게시물 사진 2">
                    </div>
                    <div class="slide">
                        <img src="/resources/image/seoulcampuse2.jpg" alt="게시물 사진 3">
                    </div>
                    <!-- 추가 이미지들 -->
                </div>
                <button class="slider-btn prev-btn">&#10094;</button>
                <button class="slider-btn next-btn">&#10095;</button>
            </div>
            <!-- 슬라이더 끝 -->
            <div class="post-content">
                <div class="post-icons">
                    <img src="/resources/icons/heart.png" alt="좋아요" class="icon">
                    <img src="/resources/icons/comment.png" alt="댓글" class="icon">
                    <img src="/resources/icons/share.png" alt="공유" class="icon">
                </div>
                <p class="likes-count">좋아요 532개</p>
                <p class="post-description">이 게시물은 ~와 관련된 내용입니다.</p>
                <div class="post-actions">
                    <button class="like-btn">좋아요</button>
                    <span>28</span>
                    <button class="comment-btn">댓글</button>
                    <span>8</span>
                </div>
            </div>
        </article>

        <!-- 반복되는 게시물 -->
        <article class="post-card">
            <div class="post-header">
                <img src="/resources/image/user-profile.png" alt="유저 프로필" class="user-profile">
                <div class="user-info">
                    <span class="user-name">kyungminuniversity123@kyungmin.ac.kr</span>
                    <span class="post-school">경민대학교</span>
                </div>
            </div>
            <!-- 슬라이더 시작 -->
            <div class="slider-container">
                <div class="slider">
                    <div class="slide">
                        <img src="/resources/image/seoulcampuse2.jpg" alt="게시물 사진 1">
                    </div>
                    <div class="slide">
                        <img src="/resources/image/seoulcampuse.jpg" alt="게시물 사진 2">
                    </div>
                    <div class="slide">
                        <img src="/resources/image/seoulcampuse2.jpg" alt="게시물 사진 3">
                    </div>
                    <!-- 추가 이미지들 -->
                </div>
                <button class="slider-btn prev-btn">&#10094;</button>
                <button class="slider-btn next-btn">&#10095;</button>
            </div>
            <!-- 슬라이더 끝 -->
            <div class="post-content">
                <div class="post-icons">
                    <img src="/resources/icons/heart.png" alt="좋아요" class="icon">
                    <img src="/resources/icons/comment.png" alt="댓글" class="icon">
                    <img src="/resources/icons/share.png" alt="공유" class="icon">
                </div>
                <p class="likes-count">좋아요 532개</p>
                <p class="post-description">이 게시물은 ~와 관련된 내용입니다.</p>
                <div class="post-actions">
                    <button class="like-btn">좋아요</button>
                    <span>28</span>
                    <button class="comment-btn">댓글</button>
                    <span>8</span>
                </div>
            </div>
        </article>
    </section>

    <!-- 사이드바 -->
    <aside class="sidebar">
        <div class="sidebar-content">
            <h4>익명 전체학교 게시글</h4>
            <button class="apply-btn">보러 가기</button>
            <h4>익명 우리학교 게시글</h4>
            <button class="apply-btn">보러 가기</button>
        </div>
    </aside>
</main>

<%--
<script src="/resources/script/main.js"></script>
--%>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const sliders = document.querySelectorAll('.slider-container');

        sliders.forEach(sliderContainer => {
            const slider = sliderContainer.querySelector('.slider');
            const slides = slider.querySelectorAll('.slide');
            const prevBtn = sliderContainer.querySelector('.prev-btn');
            const nextBtn = sliderContainer.querySelector('.next-btn');
            const dots = sliderContainer.querySelectorAll('.dot');
            let currentIndex = 0;

            function showSlide(index) {
                slider.style.transform = `translateX(-${index * 100}%)`;
                dots.forEach(dot => dot.classList.remove('active'));
                dots[index].classList.add('active');
            }

            prevBtn.addEventListener('click', () => {
                currentIndex = (currentIndex === 0) ? slides.length - 1 : currentIndex - 1;
                showSlide(currentIndex);
            });

            nextBtn.addEventListener('click', () => {
                currentIndex = (currentIndex === slides.length - 1) ? 0 : currentIndex + 1;
                showSlide(currentIndex);
            });

            dots.forEach((dot, index) => {
                dot.addEventListener('click', () => {
                    showSlide(index);
                    currentIndex = index;
                });
            });

            showSlide(currentIndex); // 초기 슬라이드 설정
        });
    });
</script>
</body>
</html>
