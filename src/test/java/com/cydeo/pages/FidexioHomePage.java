package com.cydeo.pages;

import com.cydeo.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class FidexioHomePage {

    public FidexioHomePage() {
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "//a[.='Log out']")
    public WebElement logOutButton;

    @FindBy(xpath = "//h4[@class='modal-title']")
    public WebElement sessionExpiredText;

    @FindBy(xpath = "//li[@class='o_user_menu']")
    public WebElement profileIcon;


}
