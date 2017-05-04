<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh_TW">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>範例專案</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<form class="form-horizontal" action="result" method="POST">
				<fieldset>

					<!-- Form Name -->
					<legend>訊息結果 </legend>
	
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-2 control-label" for="textinput">訊息內容</label>  
					  <div class="col-md-4">
					  	<div class="alert alert-success" role="alert">${message}</div>
					  </div>
					  <div class="col-md-4">
						<a href="welcome" class="btn btn-primary">回首頁</a>
					  </div>
					</div>
	
				</fieldset>
			</form>
		</div>
	</div>
</div>

    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/scripts.js"></script>
  </body>
</html>