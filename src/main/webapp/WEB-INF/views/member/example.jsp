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
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
        /*메뉴바 우측 상단 미니프로필*/
        .mini-profile {
            width: 24px;
            height: 24px;
            border-radius: 70%;
            overflow: hidden;
        }

        /*피드박스 좌측 상단 미니프로필*/
        .main-profile {
            width: 150px;
            height: 150px;
            border-radius: 70%;
            overflow: hidden;
        }

        /*프로필사진들*/
        .profile-img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .modal-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: none;
            z-index: 1;
            background-color: rgba(0, 0, 0, 0.4);
            animation: showText1 0.5s;
        }

        .modal_body {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 1200px;
            height: 900px;
            text-align: center;
            background-color: rgb(255, 255, 255);
            border-radius: 5px;
            box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
            transform: translateX(-50%) translateY(-50%);
            font-size: 13px;
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
            line-height: 50px;
        }

        .modal-text {
            border-bottom: 0;
            border-left: 0;
            border-right: 0;
            border-top: 1px solid #dbdbdb;
            background-color: white;
        }

        .modal-image {
            height: 900px;
            width: 750px;
            object-fit: cover;

        }

        .profilepage-image {
            width: 273px;
            height: 273px;
            object-fit: cover;
            margin: 20px 0;

        }

        .close-area {
            background-color: rgba(0, 0, 0, 0.01);
            border: none;
            border-radius: 10px;
            width: 30px;
            height: 30px;
            font-size: 24px;
            color: #fafafa;
            float: right;
        }

        /*피드박스 좌측 상단 미니프로필*/
        .box-profile {
            width: 33px;
            height: 33px;
            border-radius: 70%;
            overflow: hidden;
            object-fit: cover;
            margin-left: 12px;
        }

        @keyframes showText1 {
            from {
                transform: translateX(0px);
                opacity: 0;
            }

            to {
                transform: translateX(0px);
                opacity: 1;
            }
        }
    </style>
</head>
<body style="background-color: #fafafa; width: 100%;">
<!--상단 네비게이션바---------------------------------------------------------------------------------------------------->
<!--
<nav class="navbar navbar-expand-lg navbar-light" style="position: fixed; display: flex; flex-direction: row; width: 100%; border-bottom: solid 1px #dbdbdb; background-color: #ffffff;z-index: 1;">
    <div class="container-fluid" style="justify-content: space-between; flex-wrap: nowrap; max-width: 940px;">
        <a class="navbar-brand" href="../mainpage/instamain.html"><img style="width: 100px;" src="https://www.instagram.com/static/images/web/mobile_nav_type_logo.png/735145cfe0a4.png"></a>
        <input class="form-control me-2" style="max-width: 300px;" type="search" placeholder="검색" aria-label="Search">
        <div style="display: flex; flex-direction: row; justify-content: center; align-items: center;">
            <a href="../mainpage/instamain.html"><span style="margin: 6px 12px 0 12px;" class="material-icons">home</span></a>
            <span style="margin: 0 12px 0 12px;" class="material-icons-outlined">send</span>
            <span style="margin: 0 12px 0 12px;" class="material-icons-outlined">add_box</span>
            <span style="margin: 0 12px 0 12px;" class="material-icons-outlined">explore</span>
            <span style="margin: 0 12px 0 12px;" class="material-icons-outlined">favorite_border</span>
            <div class="mini-profile" style="float: right; margin-left: 10px;">
                <a href="../profilepage/instaprofile.html"><img class="profile" style="margin-bottom: 6px;" src="https://file2.nocutnews.co.kr/newsroom/image/2021/08/12/202108121210585928_12.jpg"></a>
            </div>
        </div>
    </div>
</nav>-->
<!-- 상단 프로필 페이지-------------------------------------------------------------------------------------------------->
<div style="top: 95px; position: relative; height: 230px; max-width: 950px; width: 100%; margin: auto; display: flex; flex-direction: row;">
    <!--  --------------------      프로필 사진------------------------------------------------------------------------->
    <div style="margin-left: 90px;">
        <div class="main-profile">
            <a href=""><img class="profile" src="https://file2.nocutnews.co.kr/newsroom/image/2021/08/12/202108121210585928_12.jpg"></a>
        </div>
    </div>
    <!-----------------------    프로필 정보----------------------------------------------------------------------------->
    <div style="display: flex; flex-direction: row; margin-left: 80px;">
        <div style="margin-left: 10px">
            <h2 style="font-weight: lighter;">Kang_Jun</h2>
            <div style="display: flex; flex-direction: row; margin-top: 20px;">
                <div>
                    게시물 <span style="font-weight: bold">9</span>
                </div>
                <div style="margin-left: 40px;">
                    팔로워 <span style="font-weight: bold">100k</span>
                </div>
                <div style="margin-left: 40px;">
                    팔로우 <span style="font-weight: bold">150</span>
                </div>
            </div>
            <div style="display: flex; margin-top: 20px; font-weight: bold;">
                서강준
            </div>

        </div>
        <!--    -------------     프로필 편집 세팅 버튼------------------------------------------------------------------->
        <div style="margin-left:-160px; margin-top: 5px; display: flex; flex-direction: row; ">
            <div>
                <button style="background-color: #fafafa; border: 1px solid #c7c7c7; border-radius: 3px; font-weight: bold; padding: 3px 8px 3px 8px;font-size: 14px;">
                    프로필 편집
                </button>
            </div>
            <div>
                <button style="border:none; background-color: #fafafa; margin-left: 10px;"><span class="material-icons-outlined">settings</span></button>
            </div>
        </div>
    </div>
</div>
<!------------------------       개인 게시글 페이지---------------------------------------------------------------------->
<div style="border-top: 1px solid #c7c7c7; max-height: 1000px; height: 100%; max-width: 895px; width: 100%; margin: auto; position: relative; top: 70px;">
    <!--                 테두리 아래, 아이콘, 텍스트-------------------------------------------------------------------------->
    <div style="display: flex; flex-direction: row; justify-content: center;">
        <span class="material-icons-outlined" style="margin: 10px 0 0 20px;">grid_on</span>
        <div style="font-size: 12px; margin-top: 12px; margin-left: 5px;">
            <button style="background-color: #fafafa; border: none">게시물</button>
        </div>
        <span class="material-icons-outlined" style="margin: 10px 0 0 40px;">bookmark_border</span>
        <div style="font-size: 12px; margin-top: 12px; margin-left: 5px;">
            <button style="background-color: #fafafa; border: none">저장됨</button>
        </div>
        <span class="material-icons-outlined" style="margin: 10px 0 0 40px;">account_box</span>
        <div style="font-size: 12px; margin-top: 12px; margin-left: 5px;">
            <button style="background-color: #fafafa; border: none">태그됨</button>
        </div>
    </div>
    <!------------------     게시글---------------------------------------------------------------------------------------->
    <div>
        <button id="open-modal" style="background-color: #fafafa; border: none;">
            <img class="profilepage-image" src="https://cdn.nbnnews.co.kr/news/photo/202111/632351_631208_3045.jpg">
        </button>
        <button style="background-color: #fafafa; border: none;">
            <img class="profilepage-image" src="https://image.ytn.co.kr/general/jpg/2021/1105/202111051624175631_d.jpg">
        </button>
        <button style="background-color: #fafafa; border: none;">
            <img class="profilepage-image" src="https://www.thinkfood.co.kr/news/photo/202007/88177_114044_267.jpg">
        </button>
        <button style="background-color: #fafafa; border: none;">
            <img class="profilepage-image" src="https://img.vogue.co.kr/vogue/2021/11/style_6189f004a3ed1-930x620.jpeg">
        </button>
        <button style="background-color: #fafafa; border: none;">
            <img class="profilepage-image"
                 src="http://kkoma.net/web/product/big/202007/7b0c6b26dc086662bc3063977fc6338a.jpg">
        </button>
        <button style="background-color: #fafafa; border: none;">
            <img class="profilepage-image"
                 src="https://entertainimg.kbsmedia.co.kr/cms/uploads/BBSIMAGE_20220211083738_0484b8468a4d2dd5a20cbb74988028d0.jpg">
        </button>
        <button style="background-color: #fafafa; border: none;">
            <img class="profilepage-image"
                 src="https://file.mk.co.kr/meet/neds/2022/02/image_readtop_2022_128293_16445440344943694.jpg">
        </button>
        <button style="background-color: #fafafa; border: none;">
            <img class="profilepage-image"
                 src="https://img.insight.co.kr/static/2019/10/12/700/kf462i051296k773127v.jpg">
        </button>
        <button style="background-color: #fafafa; border: none;">
            <img class="profilepage-image" src="https://www.sisaweek.com/news/photo/202002/131060_119645_73.jpg">
        </button>
    </div>
</div>

<!-----------모달 댓글창------------------------------------------------------------------------------------------------------>
<div id="modal-option" class="modal-overlay" style="">
    <div id="modal-script" class="modal_body" style="">
        <div style="display: flex; flex-direction: row;">
            <img class="modal-image" src="https://cdn.nbnnews.co.kr/news/photo/202111/632351_631208_3045.jpg">
            <div>
                <!--                댓글창 상단 내 프로필-->
                <div style="display: flex; flex-direction: row; justify-content: space-between; width: 450px; height: 55px;border-bottom: 1px solid #edebeb">
                    <div style="display: flex; flex-direction: row;">
                        <a href=""><img class="box-profile"
                                        src="https://file2.nocutnews.co.kr/newsroom/image/2021/08/12/202108121210585928_12.jpg"></a>
                        <p style="margin-left: 10px;">Kang_Jun</p>
                    </div>
                    <div>
                        <button id="" class="btn-open-popup"
                                style="border: none; background-color: white; margin-top: 5px;">
                            <span class="material-icons-outlined" style="margin-right: 15px;">more_horiz</span>
                        </button>
                    </div>
                </div>
                <!--                댓글창 상단 아래 피드설명란-->
                <div style="display: flex; flex-direction: row; justify-content: space-between; width: 450px; height: 55px;">
                    <div style="display: flex; flex-direction: row;">
                        <a href=""><img class="box-profile"
                                        src="https://file2.nocutnews.co.kr/newsroom/image/2021/08/12/202108121210585928_12.jpg"></a>
                        <p style="margin-left: 10px;">Kang_Jun</p>
                        <p style="margin-left: 5px;"><span style="font-weight: lighter; color: dodgerblue;">#스파르타 #내일배움캠프 #파이팅 #고양이</span></p>
                    </div>
                </div>
                <!--                댓글들-->
                <div style="display: flex; flex-direction: row; justify-content: space-between; width: 450px; height: 620px;">
                    <div style="display: flex; flex-direction: row;">
                        <a href=""><img class="box-profile"
                                        src="https://blog.kakaocdn.net/dn/b0ZMMh/btq4eKTyBG4/aVgQqfsq543UByfJSaK0cK/img.jpg"></a>
                        <p style="margin-left: 10px;">BoYoung</p>
                        <p style="font-weight: lighter; margin-left: 10px;">내일배움 캠퍼 모두 파이팅 !!</p>
                    </div>
                </div>
                <!--                하단 댓글창-->
                <div style="">
                    <div style="margin-top: 2%; display: flex; flex-direction: row; justify-content: space-between; border-top: 1px solid #edebeb; height: 30px;">
                        <div style="margin-left: 10px;">
                            <span class="material-icons-outlined">favorite_border</span>
                            <span class="material-icons-outlined">mode_comment</span>
                            <span class="material-icons-outlined">send</span>
                        </div>
                        <div style="margin-right: 10px;">
                            <span class="material-icons-outlined">bookmark_border</span>
                        </div>
                    </div>
                    <div style="text-align: left; margin-left: 10px; height: 30px;"><span style="font-weight: bold">kyumin1020</span>님 <span style="font-weight: bold">외 62,364명</span>이 좋아합니다 </div>
                    <div style="font-weight: lighter; font-size: 10px; text-align: left; margin-left: 10px;">1일전</div>
                    <div style="margin-top: 10px; border-top: solid 1px #dbdbdb;">
                        <input type="email" class="form-control"
                               style="box-shadow: none; border: none; border-radius: 0px;" id="exampleFormControlInput1"
                               placeholder="댓글 달기 ...">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<button id="close-modal" class="close-area">
    X
</button>

<script>
    // 모달 열기
    const modal = document.getElementById("modal-option");
    const buttonOpenModal = document.getElementById("open-modal");
    buttonOpenModal.addEventListener("click", e => {
        modal.style.top = window.pageYOffset + 'px'; // 모달띄울시, 스크롤이 내려가면 창이 뜨는 위치 수정
        modal.style.display = "flex";  // 모달 나타나게하기
        document.body.style.overflowY = "hidden"; // 모달 띄웠을때 스크롤안되게하기

    });
    // 모달 x 눌러 닫기
    const buttonCloseModal = document.getElementById("close-modal");
    buttonCloseModal.addEventListener("click", e => {
        modal.style.display = "none";
        document.body.style.overflowY = "visible";
    });
    // 모달 아닌곳 눌러 닫기
    modal.addEventListener("click", e => {
        const evTarget = e.target
        if (evTarget.classList.contains("modal-overlay")) {
            modal.style.display = "none";
            document.body.style.overflowY = "visible";
        }
    });
</script>

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>
