<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-31
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>index.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src = "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.js"></script>
    <script src = "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.js"></script>

    <script src = "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.min.js"></script>
    <script src = "https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>

</head>
<body>
    <button class="btn-primary" onclick="boardSave()">게시판</button>
    <button class="btn-warning" onclick="boardList()">글목록</button>
    <button class="btn-warning" onclick="boardChart()">차트</button>
</body>


<canvas id="lineChart" width="400" height="400"></canvas>
<script>
    const boardSave = () => {
      location.href="/board/save";

    }

    const boardList = () => {
      location.href="/board/";
    }




</script>

<script type="text/javascript">

    const ctx = document.getElementById("lineChart");
    const myChart = new Chart(ctx,{
        type: 'bar',
        data:{
            labels:["조회수"],
            datasets: [{
                data:[${hits}],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)'
                    ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)'
                ],
                borderWidth: 1
            }
            ]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true

                    }
                }]
            }
        }
    });

        // let timeList = [];
        <%--let posList = [];--%>

        <%--$.ajax({--%>
        <%--    url:"/countTurtle.do",--%>
        <%--    type:"get",--%>
        <%--    data:['${boardHits}'],--%>
        <%--    dataType:"json",--%>
        <%--    success:function(data){--%>
        <%--        // console.log(data[0].pos_count);--%>
        <%--        // 그래프로 나타낼 자료 리스트에 담기--%>
        <%--        for (let i = 0; i<data.length;i++){--%>
        <%--            posList.push(data[i].boardHits);--%>


        <%--        }--%>
    //             // console.log(timeList);
    //             // console.log(posList);
    //             // 그래프
    //             new Chart(document.getElementById("lineChart"), {
    //                 type: 'line',
    //                 data: {
    //                      // X축
    //                     datasets: [{
    //                         data: posList, // 값
    //                         label: "거북목",
    //                         borderColor: "#3e95cd",
    //                         fill: false
    //                     }
    //                     ]
    //                 },
    //                 options: {
    //                     title: {
    //                         display: true,
    //                         text: '주간 거북목'
    //                     }
    //
    //                 }
    //
    //
    //
    //             }); //그래프
    //         },
    //         error:function(){
    //             alert("실패");
    //         }
    //
    //     }) // ajax
    // } // getGraph

</script>
</html>

<%-- 글작석 회원가입
  /boardSave       /memberSave
  /board/save       /member/save ---%>

