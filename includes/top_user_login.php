<div id="userLogin">
		<div id="registerLink">
			<a class="registerButton" href="./Register.php">REGISTER!</a>
		</div>
		<form id="loginForm" method="post" action="Login.php">
			<div id="loginFormP1">
				<div id="submitBox">
					<input class="submitButton" type="submit" value="Login" />
				</div>
				<div id="usernameBox">
					<label for="username" class="usernameL" data-icon="u" > Username: </label>
					<input id="username" name="username" required="required" placeholder="username"/>
				</div>
				<div id="passwordBox">
					<label for="password" class="passwordL" data-icon="p"> Password: </label>
					<input id="password" name="password" required="required" type="password" placeholder="********" /> 
				</div>
			</div>
			
			<div id="loginFormP2">
				<a href="Recover.php?mode=password">Forgot your Password?</a>
				<input id="remember" name="remember" type="checkbox"/>
				<label for="remember" class="rememberL" data-icon="u" > Remember Me </label>
			</div>
		</form>
	</div>
</div>