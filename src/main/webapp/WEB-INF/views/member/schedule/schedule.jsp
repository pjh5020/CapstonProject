<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>every star</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/resources/style/common.css" rel="stylesheet" type="text/css" />
    <link href="/resources/style/nav.css" rel="stylesheet" type="text/css" />
    <link href="/resources/style/mainBody.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        main .container1 {
            background-color: #f8f8f8;
            width: auto;
            height: 1100px;
            position: relative;
            padding: 18px;
        }

        main aside {
            width: 324px;
            height: 455px;
            float: left;
        }

        main aside form select {
            width: 324px;
            height: 33px;
            border: solid 2px #bfbfbf;
            padding: 5px;
        }

        main aside .current {
            width: 324px;
            height: 170px;
            background-color: white;
            margin-top: 5px;
            border: solid 0.5px #bfbfbf;
        }

        main aside .current p {
            font-weight: bold;
            margin-top: 28px;
            margin-left: 35px;
            font-size: 20px;
        }

        main aside .choice {
            width: 324px;
            height: auto;
            background-color: white;
            border: solid 0.5px #bfbfbf;
            margin-top: 5px;
        }

        .choice ul {
            padding: 0px;
            margin-top: 0px;
        }

        .choice li {
            height: 50px;
            padding: 15px;
            list-style-type: none;
            color: #bfbfbf;
        }

        .choice li:hover {
            height: 50px;
            padding: 15px;
            list-style-type: none;
            background-color: #f8f8f8;
        }

        .choice li:visited {
            height: 50px;
            padding: 15px;
            list-style-type: none;
            background-color: #f8f8f8;
        }

        .choice a {
            text-decoration: none;
        }

        table {
            width: calc(100% - 340px);
            height: auto;
            float: left;
            margin-left: 15px;
            border-collapse: collapse;
            table-layout: fixed;
        }

        .thead {
            height: 40px;
            border: solid 0.5px #bfbfbf;
            text-align: center;
            background-color: #f2f2f2;
        }

        tr {
            height: 65px;
            border: solid 0.5px #bfbfbf;
            background-color: #f8f8f8;
        }

        td {
            width: 8px;
            border: solid 1px #bfbfbf;
            text-align: center;
        }

        .col1 {
            width: 5%;
        }

        .col7 {
            width: 5%;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/views/member/header/header.jsp" flush="true"/>
    <main>
        <div class="container1">
            <aside>
                <form class="select">
                    <select id="semesters"
                    ><option>2023년 겨울학기</option
                    ><option>2023년 2학기</option
                    ><option>2023년 여름학기</option
                    ><option>2023년 1학기</option
                    ><option>2022년 겨울학기</option
                    ><option>2022년 2학기</option
                    ><option>2022년 여름학기</option
                    ><option>2022년 1학기</option
                    ><option>2021년 겨울학기</option
                    ><option>2021년 2학기</option
                    ><option>2021년 여름학기</option
                    ><option>2021년 1학기</option
                    ><option>2020년 겨울학기</option
                    ><option>2020년 2학기</option
                    ><option>2020년 여름학기</option
                    ><option>2020년 1학기</option
                    ><option>2019년 겨울학기</option
                    ><option>2019년 2학기</option
                    ><option>2019년 여름학기</option
                    ><option>2019년 1학기</option
                    ><option>2018년 겨울학기</option
                    ><option>2018년 2학기</option
                    ><option>2018년 여름학기</option
                    ><option>2018년 1학기</option
                    ><option>2017년 겨울학기</option
                    ><option>2017년 2학기</option
                    ><option>2017년 여름학기</option
                    ><option>2017년 1학기</option
                    ><option>2016년 겨울학기</option
                    ><option>2016년 2학기</option
                    ><option>2016년 여름학기</option
                    ><option>2016년 1학기</option
                    ><option>2015년 겨울학기</option
                    ><option>2015년 2학기</option
                    ><option>2015년 여름학기</option
                    ><option>2015년 1학기</option
                    ><option>2014년 겨울학기</option
                    ><option>2014년 2학기</option
                    ><option>2014년 여름학기</option
                    ><option>2014년 1학기</option
                    ><option>2013년 겨울학기</option
                    ><option>2013년 2학기</option
                    ><option>2013년 여름학기</option
                    ><option>2013년 1학기</option
                    ><option>2012년 겨울학기</option
                    ><option>2012년 2학기</option
                    ><option>2012년 여름학기</option
                    ><option>2012년 1학기</option
                    ><option>2011년 겨울학기</option
                    ><option>2011년 2학기</option
                    ><option>2011년 여름학기</option
                    ><option>2011년 1학기</option
                    ><option>2010년 겨울학기</option
                    ><option>2010년 2학기</option
                    ><option>2010년 여름학기</option
                    ><option>2010년 1학기</option></select
                    >
                </form>
                <div class="current"> //현재 시간표에 대한 부분
                    <p>시간표 1</p>
                </div>
                <div class="choice"> //시간표를 선택할 수 있는 부분
                    <ul>
                        <a href=''><li><span>시간표1</span></li></a>
                        <a href=''><li><span>시간표2</span></li></a>
                        <a href=''><li><span>시간표3</span></li></a>
                        <a href=''><li><span>
							새 시간표 만들기
							</span></li></a>
                    </ul>
                </div>
            </aside>
            <table>
                <colgroup>
                    <col class="col1" />
                    <col class="col2" />
                    <col class="col3" />
                    <col class="col4" />
                    <col class="col5" />
                    <col class="col6" />
                    <col class="col7" />
                </colgroup>
                <tr class="thead">
                    <td></td>
                    <td>월</td>
                    <td>화</td>
                    <td>수</td>
                    <td>목</td>
                    <td>금</td>
                    <td></td>
                </tr>
                <tr>
                    <td>1교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>2교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>3교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>4교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>5교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>6교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>7교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>8교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>9교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>10교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>11교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>12교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>13교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>14교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>15교시</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </main>
    </main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
