@FID10-308
Feature: Default

	Background:
		Scenario Outline:
		#@FID10-338
		Given user goes to login page
		When user enters "<username>" as username
		And enters "<password>" as password
		Then user clicks to login button and should be on the home page
		And user should see the log out option from the dropdowns by clicking the profile icon.
		Then user should be able to click to the log out button and land back on the login page.
			Examples:
				| username                |password      |
				| posmanager65@info.com   |posmanager    |
				| salesmanager20@info.com |salesmanager  |
				| posmanager43@info.com   |posmanager    |
				| salesmanager98@info.com |salesmanager  |
		

	#1- {color:#de350b}*User can log out and ends up in login page.*{color}
	#2- The user can not go to the home page again by clicking the step back button after successfully logged out.
	@FID10-300
	Scenario Outline: User can log out and ends up in login page.
		Given user goes to login page
		When user enters "<username>" as username
		And enters "<password>" as password
		Then user clicks to login button and should be on the home page
		And user should see the log out option from the dropdowns by clicking the profile icon.
		Then user should be able to click to the log out button and land back on the login page.
		Examples:  
		| username                |password      |
		| posmanager65@info.com   |posmanager    |
		| salesmanager20@info.com |salesmanager  |
		| posmanager43@info.com   |posmanager    |
		| salesmanager98@info.com |salesmanager  |	

	#1- User can log out and ends up in login page.
	#2- {color:#de350b}*The user can not go to the home page again by clicking the step back button after successfully logged out.*{color}
	@FID10-304
	Scenario Outline: The user can not go to the home page again by clicking the step back button after successfully logged out.
		Given user goes to login page
		When user enters "<username>" as username
		And enters "<password>" as password
		Then user clicks to login button and should be on the home page
		And user should see the log out option from the dropdowns by clicking the profile icon.
		Then user should be able to click to the log out button and land back on the login page.
		And user shouldn't be able to navigate back to the home page.
		Examples:  
		| username                |password      |
		| posmanager87@info.com   |posmanager    |
		| salesmanager23@info.com |salesmanager  |
		| posmanager86@info.com   |posmanager    |
		| salesmanager13@info.com |salesmanager  |