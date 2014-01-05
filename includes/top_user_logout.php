<div id="userLogin">
		<div id="registerLink">
			<a class="registerButton" href="./Register.php">REGISTER!</a>
		</div>
		<div id="submitBox">
			<a href="Logout.php" class="submitButton">Logout</a>
		</div>
		<div id="infoBox">
			<div id="infoBox1">
				You are logged in as: 
			</div>
			<div id="infoBox2">
			<?php
				echo $user_data['username'];
			?>
			</div>
		</div>
	</div>
</div>