<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<title>횐 등록</title>
</head>  
<body>
<form:form commandName ="memberInfo">
<p>
<form:label path="userId">회원 ID</form:label>
<form:input path="userId"/>
<form:errors path="userId"></form:errors>
</p>
<p>
<form:label path="name">이름</form:label>
<form:input path="name"/>
<form:errors path="name"></form:errors>
</p>
<p>
<form:label path="address.address1">주소 원</form:label>
<form:input path="address.address1"/>
<form:errors path="address.address1"></form:errors>
</p>
<p>
<form:label path="address.address2">주소 투</form:label>
<form:input path="address.address2"/>
<form:errors path="address.address2"></form:errors>
</p>
<p>
<form:label path="jobCode">직업</form:label>
<form:select path="jobCode" >
<option value="">--- 선택하세요 ---</option>
<form:options items="${jobCodes}" itemLabel="label" itemValue="code" />
</form:select>
<form:errors path="jobCode" />
</p>
<p>
<form:label path="favorites">선호 OS</form:label>
<form:checkboxes items="${favoritesOsNames}" path="favorites" />
		<%--
		<form:checkbox path="favorites" value="윈도우XP" label="윈도우XP" />
		<form:checkbox path="favorites" value="비스타" label="비스타" />
		<form:checkbox path="favorites" value="윈도우7" label="윈도우7" />
		<form:checkbox path="favorites" value="우분투" label="우분투" />
		<form:checkbox path="favorites" value="맥" label="맥" />
		--%>
<form:errors path="favorites" />
</p>
<p>
<form:label path="tool">주로 사용하는 개발툴</form:label>
<form:radiobuttons items="${tools}" path="tool" />
</p>
<p>
<form:label path="etc">기타</form:label>
<form:textarea path="etc" cols="20" rows="3"/>
</p>
<p>
<form:checkbox path="contractAgreement" label="약관에 동의합니다."/>
</p>
<p>
<input type="submit" value="회원 등록">
</p>
</form:form>
</body>
</html>



