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

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<form class="form-horizontal" action="result" method="POST">
				<fieldset>
	
					<!-- Form Name -->
					<legend>訊息傳送 (Ver-11) </legend>
	
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-2 control-label" for="textinput">訊息內容</label>  
					  <div class="col-md-4">
					  <input id="message" name="message" value="${timeMessage}" type="text" placeholder="輸入任意訊息" class="form-control input-md">  
					  </div>
					  <div class="col-md-4">
						<button id="singlebutton" name="singlebutton" class="btn btn-primary">傳送</button>
					  </div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>