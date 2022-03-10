package test_Web_UI.page;


import org.openqa.selenium.By;
import test_Web_UI.control.Image;

public class MainPage {
    public Image signupImage = new Image(By.xpath("//*[@id=\"ctl00_MainContent_PanelNotAuth\"]/div[2]/div[1]/div[3]/a/img"));
}
