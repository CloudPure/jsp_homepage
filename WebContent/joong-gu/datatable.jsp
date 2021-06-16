<%@ page pageEncoding="utf-8"%>
<%@ include file="../inc/header2.jsp"%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajax Get</title>
    <script src ="../js/jquery-3.6.0.js"></script>
    <script>
        $(function(){
            $('#btn').click(function(){

                $.ajax({
                    url: 'data.json',
                    dataType: 'json',
                    error: function(){
                        alert('error')
                    },
                    success: function(json){
                        //console.log(json);
                        //console.log(typeof json);
                        
                        const dataArray = json.data;
                        let html = "<div class=table-resposive>";
                        html += "<table>";
                        html += "<tr>";
                        html += "<th>건축연도</th>";
                        html += "<th>구분</th>";
                        html += "<th>문화재명</th>";
                        html += "<th>위치</th>";
                        html += "</tr>";

                        for(const obj of dataArray){
                            html += "<tr>";
                            
                            html += "<td>";
                            let year = obj.건축연도;
                            html += year+"</td>";
                            
                            html += "<td>";
                            let genre = obj.구분;
                            html += genre+"</td>";
                            
                            html += "<td>";
                            let name = obj.문화재명;
                            html += name+"</td>";

                            html += "<td>";
                            let loc = obj.위치;
                            html += loc+"</td>";
                            
                            html += "</tr>";
                        }
                        html += "</table>";
                        html += "</div>";
                        $("#sel").append(html);
                    
                    }
                }); //end of ajax
            }); //end of button event
        }); //end of onloading
    </script>
<style>
    #btn{
        margin: 0 0 10px 0;
    }
    table{
        width: 100%;
        border-collapse: collapse;
        border-top: 2px solid black;
        /*세로선까지 주고싶으면 border-top 을 border로 th,td 에도 border-bottom을 border로 바꾸면 됨*/
    }
    th,td{
        border-bottom: 1px solid black;
        padding: 3px;
    }

    th{
        background-color: powderblue;
    }

    td{
        text-align: center;
    }
</style>
</head>
<body>
    <button id="btn">가져오기</button>
    
    <div id="sel">

    </div>
    
</body>
</html>

<%@ include file="../inc/footer2.jsp"%>