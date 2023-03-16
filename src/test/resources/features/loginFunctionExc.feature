@FID10-273
Feature: Default

	#{color:#de350b}*1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)*{color}
	#2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#3- "Please fill out this field" message should be displayed if the password or username is empty
	#4-User land on the ‘reset password’ page after clicking on the "Reset password" link
	#5-User should see the password in bullet signs by default
	#6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@FID10-264
	Scenario: User(pos-manager) can login with valid credentials
		Given user is on the fidexio login  page
		 When user(pos) enters "posmanager34@info.com" and "posmanager" as credentials
		 And user clicks to login button
		 Then user(pos) is on the dashboard	

	#{color:#de350b}*1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)*{color}
	#2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#3- "Please fill out this field" message should be displayed if the password or username is empty
	#4-User land on the ‘reset password’ page after clicking on the "Reset password" link
	#5-User should see the password in bullet signs by default
	#6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@FID10-267
	Scenario: User(sales-manager) can login with valid credentials
		Given user is on the fidexio login  page
		 When user(sales) enters "salesmanager56@info.com" and "salesmanager" as credentials
		 And user clicks to login button
		 Then user(sales) is on the dashboard	

	#1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)
	#{color:#de350b}*2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials*{color}
	#3- "Please fill out this field" message should be displayed if the password or username is empty
	#4-User land on the ‘reset password’ page after clicking on the "Reset password" link
	#5-User should see the password in bullet signs by default
	#6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@FID10-268
	Scenario: user should see the "Wrong/Invalid password" message after providing invalids credentials
		Given user is on the fidexio login  page
		When user enters "eiofw@info.com" as invalid username and "eggeed" as invalid password
		And user clicks to login button
		Then user should see the "Wrong login/password" message on the login page after providing invalid credentials	

	#1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)
	#2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#{color:#de350b}*3- "Please fill out this field" message should be displayed if the password or username is empty*{color}
	#4-User land on the ‘reset password’ page after clicking on the "Reset password" link
	#5-User should see the password in bullet signs by default
	#6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@FID10-269
	Scenario: "Please fill out this field" message should be displayed if the password or username is empty
		Given user is on the fidexio login  page
		When the user submits the login button without providing any "salesmanager45@info.com" username or "" password
		And user clicks to login button
		Then user should see the "Please fill out this field" text on the login page after not providing any credentials	

	#1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)
	#2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#3- "Please fill out this field" message should be displayed if the password or username is empty
	#{color:#de350b}*4-User land on the ‘reset password’ page after clicking on the "Reset password" link*{color}
	#5-User should see the password in bullet signs by default
	#6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@FID10-270
	Scenario: User land on the ‘reset password’ page after clicking on the "Reset password" link
		Given user is on the fidexio login  page
		When user clicks on "Reset password" link to reset password.
		Then user should be on the reset password page.	

	#1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)
	#2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#3- "Please fill out this field" message should be displayed if the password or username is empty
	#4-User land on the ‘reset password’ page after clicking on the "Reset password" link
	#{color:#de350b}*5-User should see the password in bullet signs by default*{color}
	#6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@FID10-271
	Scenario: User should see the password in bullet signs by default
		Given user is on the fidexio login  page
		When user enters "salesmanager" as password
		Then user should see the passoword in bullet signs by default	

	#1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)
	#2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#3- "Please fill out this field" message should be displayed if the password or username is empty
	#4-User land on the ‘reset password’ page after clicking on the "Reset password" link
	#5-User should see the password in bullet signs by default
	#{color:#de350b}*6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.*{color}
	@FID10-272
	Scenario: Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
		Given user is on the fidexio login  page
		When  user enters "posmanager34@info.com" and "posmanager" as credentials to check the enter key
		And user should press the Enter key on the keyboard
		Then user should be logged in to the system