package com.cydeo.step_definitions;

import com.cydeo.pages.LoginPage;
import com.cydeo.utilities.BrowserUtils;
import com.cydeo.utilities.ConfigurationReader;
import com.cydeo.utilities.Driver;
import com.cydeo.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

public class loginToFidexio_Definitions {

    LoginPage loginPage=new LoginPage();

    @Given("user is on the fidexio login  page")
    public void user_is_on_the_fidexio_login_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
    }

    @When("user\\(pos) enters {string} and {string} as credentials")
    public void user_pos_enters_and_as_credentials(String username, String password) {
        loginPage.username.sendKeys(username);
        loginPage.password.sendKeys(password);

    }

    @When("user clicks to login button")
    public void user_clicks_to_login_button() {
        loginPage.loginButton.click();
    }

    @Then("user\\(pos) is on the dashboard")
    public void user_pos_is_on_the_dashboard() {
        BrowserUtils.sleep(5);
      Assert.assertEquals("#Inbox - Odoo",Driver.getDriver().getTitle());
      boolean checkProfile =loginPage.posProfileName.getText().contains("POS");
      Assert.assertTrue(checkProfile);

    }

    @When("user\\(sales) enters {string} and {string} as credentials")
    public void user_sales_enters_and_as_credentials(String username, String password) {
        loginPage.username.sendKeys(username);
        loginPage.password.sendKeys(password);
    }

    @Then("user\\(sales) is on the dashboard")
    public void user_sales_is_on_the_dashboard() {
        BrowserUtils.sleep(5);
        Assert.assertEquals("#Inbox - Odoo",Driver.getDriver().getTitle());
        boolean checkProfile =loginPage.salesProfileName.getText().contains("Sales");
        Assert.assertTrue(checkProfile);
    }


    @Then("user should see the {string} message on the login page after providing invalid credentials")
    public void user_should_see_the_message_on_the_login_page_after_providing_invalid_credentials(String text) {

        Assert.assertEquals(text,loginPage.wrongInputText.getText());
    }



    @When("user enters {string} as invalid username and {string} as invalid password")
    public void user_enters_as_invalid_username_and_as_invalid_password(String invalidUsername, String invalidPassword) {
          loginPage.username.sendKeys(invalidUsername);
          loginPage.password.sendKeys(invalidPassword);
    }


    @Then("user should see the {string} text on the login page after not providing any credentials")
    public void user_should_see_the_text_on_the_login_page_after_not_providing_any_credentials(String string) {
        if (loginPage.username.getAttribute("value").isEmpty()) {
            System.out.println("pass1");
            Assert.assertEquals(string,loginPage.username.getAttribute("validationMessage"));
        }

        if (loginPage.password.getAttribute("value").isEmpty()) {
            System.out.println("pass2");
            Assert.assertEquals( "Please fill out this field.",loginPage.password.getAttribute("validationMessage"));
       }


    }


    @When("user clicks on {string} link to reset password.")
    public void user_clicks_on_link_to_reset_password(String string) {

    }


    @Then("user should be on the reset password page.")
    public void user_should_be_on_the_reset_password_page() {

    }


    @When("user enters {string} as password")
    public void user_enters_as_password(String password) {
        loginPage.password.sendKeys(password);
    }


    @Then("user should see the passoword in bullet signs by default")
    public void user_should_see_the_passoword_in_bullet_signs_by_default() {
        String type = loginPage.password.getAttribute("type");// get the type  --> type is password(bullet)
        Assert.assertEquals(type, "password");

    }



    @Then("user should be logged in to the system")
    public void user_should_be_logged_in_to_the_system() {
        Assert.assertEquals("Congratulations, your inbox is empty", loginPage.dashboardMessage.getText());
    }



    @When("user enters {string} and {string} as credentials to check the enter key")
    public void user_enters_and_as_credentials_to_check_the_enter_key(String username, String password) {
        loginPage.username.sendKeys(username);
        loginPage.password.sendKeys(password);
    }
    @When("user should press the Enter key on the keyboard")
    public void user_should_press_the_key_on_the_keyboard() {
         loginPage.loginButton.sendKeys(Keys.ENTER);
    }



    @When("the user submits the login button without providing any {string} username or {string} password")
    public void theUserSubmitsTheLoginButtonWithoutProvidingAnyUsernameOrPassword(String username, String password) {
        loginPage.username.sendKeys(username);
        loginPage.password.sendKeys(password);
    }
}
