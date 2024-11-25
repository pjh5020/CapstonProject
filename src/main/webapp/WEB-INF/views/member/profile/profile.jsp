<%--
  Created by IntelliJ IDEA.
  User: junsu
  Date: 2024-09-09
  Time: 오후 4:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>every star</title>
    <link href="/resources/style/common.css" rel="stylesheet" type="text/css" />
    <link href="/resources/style/nav.css" rel="stylesheet" type="text/css" />
    <link href="/resources/style/mainBody.css" rel="stylesheet" type="text/css" />

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Webestica.com">
    <meta name="description" content="Bootstrap 기반 뉴스, 매거진 및 블로그 테마">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-4">
    <!-- Header -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div class="logo fs-1">🚨</div>
        <div class="input-group w-50">
            <input type="text" class="form-control" placeholder="검색">
            <button class="btn btn-primary">검색</button>
        </div>
    </div>

    <!-- Profile Section -->
    <div class="row align-items-center mb-4">
        <div class="col-md-2 text-center">
            <img src="profile.jpg" alt="Profile Picture" class="rounded-circle img-fluid" style="width: 100px; height: 100px;">
        </div>
        <div class="col-md-10">
            <h2 class="mb-1">abcabc123@naver.com</h2>
            <div class="d-flex gap-2 my-2">
                <button class="btn btn-primary">친구 신청</button>
                <button class="btn btn-danger">차단</button>
            </div>
            <p class="mb-1">친구 <span class="fw-bold">99</span> 게시글 <span class="fw-bold">99</span></p>
            <p class="mb-0">경민대학교</p>
        </div>
    </div>

    <!-- Friends Carousel -->
    <div class="mb-4">
        <h5 class="mb-3">친구 목록</h5>
        <div id="friendsCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="d-flex justify-content-center gap-3">
                        <div class="text-center">
                            <img src="friend1.jpg" alt="Friend" class="rounded-circle" style="width: 50px; height: 50px;">
                            <p class="mt-1">111naver.com</p>
                        </div>
                        <div class="text-center">
                            <img src="friend2.jpg" alt="Friend" class="rounded-circle" style="width: 50px; height: 50px;">
                            <p class="mt-1">111naver.com</p>
                        </div>
                        <div class="text-center">
                            <img src="friend3.jpg" alt="Friend" class="rounded-circle" style="width: 50px; height: 50px;">
                            <p class="mt-1">111naver.com</p>
                        </div>
                        <div class="text-center">
                            <img src="friend4.jpg" alt="Friend" class="rounded-circle" style="width: 50px; height: 50px;">
                            <p class="mt-1">111naver.com</p>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#friendsCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#friendsCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <!-- Posts Section -->
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <img src="post1.jpg" class="card-img-top" alt="Post 1">
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="post2.jpg" class="card-img-top" alt="Post 2">
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="post3.jpg" class="card-img-top" alt="Post 3">
            </div>
        </div>
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
