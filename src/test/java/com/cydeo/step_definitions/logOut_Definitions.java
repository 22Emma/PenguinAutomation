package com.cydeo.step_definitions;

import com.cydeo.pages.FidexioHomePage;
import com.cydeo.pages.LoginPage;
import com.cydeo.utilities.ConfigurationReader;
import com.cydeo.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class logOut_Definitions {

    LoginPage loginPage=new LoginPage();
    FidexioHomePage fidexioHomePage=new FidexioHomePage();

    @Given("user goes to login page")
    public void user_goes_to_login_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
    }
    @When("user enters {string} as username")
    public void user_enters_as_username(String username) {
         loginPage.username.sendKeys(username);
    }
    @When("enters {string} as password")
    public void enters_as_password(String password) {
       loginPage.password.sendKeys(password);
    }
    @Then("user clicks to login button and should be on the home page")
    public void user_clicks_to_login_button_and_should_be_on_the_home_page() {
       loginPage.loginButton.click();
       loginPage.dashboardMessage.isDisplayed();
    }
    @Then("user should see the log out option from the dropdowns by clicking the profile icon.")
    public void user_should_see_the_log_out_option_from_the_dropdowns_by_clicking_the_profile_icon() {
        fidexioHomePage.profileIcon.click();
       fidexioHomePage.logOutButton.isDisplayed();

    }
    @Then("user should be able to click to the log out button and land back on the login page.")
    public void user_should_be_able_to_click_to_the_log_out_button_and_land_back_on_the_login_page() {
        fidexioHomePage.logOutButton.click();
        loginPage.loginPageTitle.isDisplayed();
    }



    @And("user shouldn't be able to navigate back to the home page.")
    public void user_Should_Navigate_Back_And_See_The_Expired_Message() {
        Driver.getDriver().navigate().back();
        fidexioHomePage.sessionExpiredText.isDisplayed();
    }
}
