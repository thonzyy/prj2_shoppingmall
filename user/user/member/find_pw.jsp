<%@page import="java.sql.SQLException"%>
<%@page import="member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page info="비밀번호 찾기" %>
<jsp:include page="../../cdn/cdn.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    
<style type="text/css">
#wrap {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 140px;
	margin-bottom: 100px;
	margin-right:90px;
	}

        .form-search input[type="text"] {
            width: 100%;
            box-sizing: border-box;
            padding: 5px;
            margin-bottom: 10px;
        }

        .btnSearch input[type="button"] {
            padding: 10px 40px;
            font-size: 12px;
            margin-left: 109px;
            margin-bottom: 20px;
            width:196px;
            background-color: gainsboro;
			border: none;
        }

        .search-title h3 {
            font-size: 15px;
            margin-left: 150px;
            margin-bottom: 30px;
            font-weight: bold;
        }

        .form-search {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .form-search label {
            margin-bottom: 5px;
            display: block;
        }
        
        .form-search .input-group {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            margin-right: 20px;
        }

        .form-search .input-group label {
            width: 100px; /* 라벨의 너비 조절 */
            text-align: right;
            margin-right: 10px;
        }

        .form-search .input-group input[type="text"] {
            flex: 1;
            padding: 5px;
        }
        #footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    margin-left: 330px;
}
    </style>

<script type="text/javascript">
$(function(){
	$("#id").keydown(function(evt){
		if(evt.which == 13){
			checkNull();
		}//end if
	});//end keydown
	
	$("#name").keydown(function(evt){
		if(evt.which == 13){
			checkNull();
		}//end if
	});//end keydown
	
	$("#phone").keydown(function(evt){
		if(evt.which == 13){
			checkNull();
		}//end if
	})//end keydown
	
	$("#btn").click(function(){
		checkNull();
	})//end click
	
});//ready

function checkNull(){
	var id=$("#id").val();
	var name=$("#name").val();
	var phone=$("#phone").val();
	
	if(id.trim() === ""){
        alert("아이디를 입력하세요.");
        return;
    }
	
	if(name.trim() === ""){
        alert("이름을 입력하세요.");
        return;
    }
	
	if(phone.trim() === ""){
		alert("휴대폰번호를 입력하세요.");
		return;
	}
	
    $("#frm").submit();
    
}//checkNull
</script>
</head>
<body>

    <!-- header -->
    <%@ include file="../layout/header.jsp"%>
    <div id="wrap">
        <form action="find_pw_process.jsp" id="frm" name="frm" method="post">
            <div class="search-title">
                <h3>비밀번호 찾기</h3>
            </div>
            <section class="form-search">
                <div class="input-group">
                    <label for="member_mid">아이디</label>
                    <input type="text" id="id" name="id" class="btn-name" placeholder="ID를 입력하세요" maxlength="15" style="height:35px">
                </div>

                <div class="input-group">
                    <label for="member_name">이름</label>
                    <input type="text" id="name" name="name" class="btn-name" placeholder="이름을 입력하세요" maxlength="10" style="height:35px">
                </div>

                <div class="input-group">
                    <label for="member_phone">휴대폰번호</label>
                    <input type="text" id="phone"  name="phone" class="btn-phone" placeholder="휴대폰번호를 '-'없이 입력" maxlength="11" style="height:35px">
                </div>
            </section>
            <div class="btnSearch">
                <input type="button" id="btn" name="btn" value="확인">
            </div>
        </form>
    </div>

<%@ include file="../layout/footer.jsp" %>
</body>
</html>    
