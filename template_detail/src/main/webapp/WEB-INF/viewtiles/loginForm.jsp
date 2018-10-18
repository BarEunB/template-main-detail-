<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>

<title><spring:message code="login.form.title" /></title>
</head>
<body>
<div class="wrapper">
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Page Header
        <small>Optional description</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

    
	<form:form commandName="login">
		
		<br>
		<form:errors />
		<p>
			<label for="loginType"><spring:message code="login.form.type" /></label>
			<form:select path="loginType" items="${loginTypes}" />
			<!-- 여기서 옵션태그로 만들어서 사용된다 -->
		</p>
		<p>
			<label for="id"><spring:message code="login.form.id" /></label>
			<form:input id="id" path="id" />
			<form:errors path="id" />
		</p>
		<p>
			<label for="password"><spring:message
					code="login.form.password" /></label>
			<form:password id="password" path="password" />
			<form:errors path="password" />
		</p>
		<p>
			<input type="submit"
				value="<spring:message code="login.form.submit" />">
		</p>
	</form:form>


    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>
</body>

</html>
