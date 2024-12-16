<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>every star</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/resources/style/common.css" rel="stylesheet" type="text/css" />
    <link href="/resources/style/nav.css" rel="stylesheet" type="text/css" />
    <link href="/resources/style/mainBody.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Webestica.com">
    <meta name="description" content="Bootstrap 기반 뉴스, 매거진 및 블로그 테마">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        .schedule-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .sidebar {
            background-color: #f8f9fa;
            padding: 15px;
            border-right: 1px solid #dee2e6;
        }
        .table-container {
            overflow-x: auto;
        }
        .class-block {
            position: absolute;
            color: white;
            font-size: 0.9rem;
            padding: 5px;
            border-radius: 5px;
        }
        .bg-yellow { background-color: #ffd966; }
        .bg-blue { background-color: #add8e6; }
        .bg-green { background-color: #b6d7a8; }
        .bg-red { background-color: #e06666; }
        .btn-new-schedule { color: #d9534f; }
        .btn-new-schedule:hover { color: #c9302c; }
    </style>
</head>
<body>
<div class="container-fluid schedule-container">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-3 sidebar">
            <div class="mb-4">
                <label for="semester" class="form-label">2024년 1학기</label>
                <select class="form-select" id="semester">
                    <option value="1">2024년 1학기</option>
                    <option value="2">2024년 2학기</option>
                </select>
            </div>
            <div class="mb-4">
                <h5>시간표2</h5>
                <p>학점: 18</p>
                <p>04/08 14:00 변경</p>
                <button class="btn btn-outline-secondary w-100">설정</button>
            </div>
            <ul class="list-group mb-4">
                <li class="list-group-item">시간표1</li>
                <li class="list-group-item active">시간표2</li>
                <li class="list-group-item">시간표3</li>
                <li class="list-group-item">시간표4</li>
                <li class="list-group-item">시간표5</li>
            </ul>
            <div class="mb-4">
                <button class="btn btn-link btn-new-schedule">+ 새 시간표 만들기</button>
            </div>
            <button class="btn btn-danger w-100">학점 계산하기</button>
        </div>

        <!-- Schedule Table -->
        <div class="col-md-9">
            <div class="table-responsive table-container">
                <table class="table table-bordered text-center">
                    <thead>
                    <tr>
                        <th scope="col">시간</th>
                        <th scope="col">월</th>
                        <th scope="col">화</th>
                        <th scope="col">수</th>
                        <th scope="col">목</th>
                        <th scope="col">금</th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- Time rows -->
                    <tr>
                        <th scope="row">9시</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row">10시</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row">11시</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row">12시</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row">13시</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row">14시</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row">15시</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row">16시</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th scope="row">17시</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/views/member/header/profile.jsp" flush="true" />
<script>
    // Updated schedule data to resemble the provided example
    const scheduleData = [
        { day: "월", time: "9시", subject: "자바", color: "bg-yellow" },
        { day: "화", time: "10시", subject: "C언어", color: "bg-blue" },
        { day: "수", time: "11시", subject: "파이썬", color: "bg-green" },
        { day: "목", time: "13시", subject: "AI 알고리즘", color: "bg-red" },
        { day: "금", time: "15시", subject: "데이터베이스 활용", color: "bg-blue" }
    ];

    // Function to populate the schedule table
    function populateSchedule(data) {
        data.forEach(item => {
            const dayColumns = { "월": 1, "화": 2, "수": 3, "목": 4, "금": 5 };
            const dayIndex = dayColumns[item.day];
            const timeRow = Array.from(document.querySelectorAll("tbody tr")).find(
                row => row.firstElementChild.textContent.trim() === item.time
            );

            if (timeRow && dayIndex) {
                const cell = timeRow.children[dayIndex];
                if (cell) {
                    cell.style.backgroundColor = getColorByClass(item.color); // Set background color
                    cell.innerHTML = `<span style="color: black; font-weight: bold;">${'${item.subject}'}1</span>`; // Add subject text
                }
            }
        });
    }

    // Map class names to colors
    function getColorByClass(className) {
        const colorMap = {
            "bg-yellow": "#ffd966",
            "bg-blue": "#add8e6",
            "bg-green": "#b6d7a8",
            "bg-red": "#e06666"
        };
        return colorMap[className] || "#ffffff"; // Default to white if class not found
    }

    document.addEventListener("DOMContentLoaded", () => {
        populateSchedule(scheduleData);
    });
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
sex