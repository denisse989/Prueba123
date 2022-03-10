package test_Web_UI.page;


import org.openqa.selenium.By;
import test_Web_UI.control.Button;
import test_Web_UI.control.Label;
import test_Web_UI.control.TextBox;

public class SignupModal {

    public TextBox fullnameTxtBox = new TextBox(By.xpath("//*[@id=\"ctl00_MainContent_SignupControl1_TextBoxFullName\"]"));
    public TextBox emailTxtBox = new TextBox(By.xpath("//*[@id=\"ctl00_MainContent_SignupControl1_TextBoxEmail\"]"));
    public TextBox pwdTxtBox = new TextBox(By.xpath("//*[@id=\"ctl00_MainContent_SignupControl1_TextBoxPassword\"]"));
    public Label termsOfService =new Label(By.xpath("//*[@id=\"ctl00_MainContent_PanelNotAuth\"]/div[2]/div[1]/div[1]/div[2]/label"));
    public Button loginButton = new Button(By.xpath("//*[@id=\"ctl00_MainContent_SignupControl1_ButtonSignup\"]"));


}
