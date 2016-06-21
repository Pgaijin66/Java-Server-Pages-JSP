
<!DOCTYPE html>

<html>
<head>
	<title>Vmovies</title>
	<meta http-equiv="Contect-Type" content="text/html" charset="utf-8" />
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>

		<div class="modal-dialog">
			<div class="model-content">
				<div class="modal-header">
					<h1 class="text-center">Vmovies</h1>
				</div>
				<div class="model-body">
					<form class="col-md-12 center-block" action="Logincheck.jsp" method="POST">
						<div class="form-group">
							<input type="text" class="form-control input-lg" placeholder="I-Number" name="inumber" value=""/>
						</div>
						<div class="form-group">
							<input type="password" class="form-control input-lg" placeholder="Password" name="password" value=""/>
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-block btn-lg btn-primary" value="Login" name="login_button"/>

							
							<div class="modal-dialog">
							 
					        </div>
							<span class="pull-left"><a href="/web/register.jsp"><h4>Register</h4></a></span>
							<span class="pull-right"><a href="/web/passwordresset.jsp"><h4>Forgot password ?</h4></a></span>
						</div>
					</form>

					<!-- <div class="modal-footer">
						<div class="col-md-12">
							<button class="btn btn-danger">Cancel</button>
						</div>
					</div> -->
				</div>
			</div>

		</div>




</body>
</html>