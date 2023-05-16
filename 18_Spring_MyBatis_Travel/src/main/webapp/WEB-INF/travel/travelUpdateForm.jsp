<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<style>
	.err{
		color:red;
		font-weight: bold;
	}
</style>
<!-- travelUpdateForm.jsp -->
<h2>여행 정보 수정 화면</h2>
<form:form commandName="travel" action="update.tv" method="post">
<input type="hidden" name="num" value="${tb.num}">
	<p>
	이름 : <input type="text" name="name" value="${tb.name}">
	<form:errors cssClass="err" path="name"/>
	</p>
	<p>
	나이 : <input type="text" name="age" value="${tb.age}">
	<form:errors cssClass="err" path="age"/>
	</p>
	<p>
	관심지역 : 
	<input type="checkbox" name="area" value="유럽" <c:if test="${tb.area.contains('유럽')}">checked</c:if>>유럽
	<input type="checkbox" name="area" value="동남아" <c:if test="${tb.area.contains('동남아')}">checked</c:if>>동남아
	<input type="checkbox" name="area" value="일본" <c:if test="${tb.area.contains('일본')}">checked</c:if>>일본
	<input type="checkbox" name="area" value="중국" <c:if test="${tb.area.contains('중국')}">checked</c:if>>중국
	<form:errors cssClass="err" path="area"/>
	</p>
	<p>
	여행타입 :
	<input type="radio" name="style" value="패키지" <c:if test="${tb.style.equals('패키지')}">checked</c:if>>패키지
	<input type="radio" name="style" value="크루즈" <c:if test="${tb.style.equals('크루즈')}">checked</c:if>>크루즈
	<input type="radio" name="style" value="자유여행" <c:if test="${tb.style.equals('자유여행')}">checked</c:if>>자유여행
	<input type="radio" name="style" value="골프여행" <c:if test="${tb.style.equals('골프여행')}">checked</c:if>>골프여행
	<form:errors cssClass="err" path="style"/>
	</p>
	<p>
	가격 : 
	<select name="price">
		<option value="">선택</option>
		<option value="100~200" <c:if test="${tb.price.equals('100~200')}">selected</c:if>>100~200</option>
		<option value="200~300" <c:if test="${tb.price.equals('200~300')}">selected</c:if>>200~300</option>
		<option value="300~400" <c:if test="${tb.price.equals('300~400')}">selected</c:if>>300~400</option>
		<option value="400~500" <c:if test="${tb.price.equals('400~500')}">selected</c:if>>400~500</option>
	</select>
	<form:errors cssClass="err" path="price"/>
	</p>
	<input type="submit" value="수정하기">
</form:form>