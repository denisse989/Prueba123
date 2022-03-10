package test_Web_UI.testClean;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import test_Web_UI.page.MainPage;
import test_Web_UI.page.MenuSection;
import test_Web_UI.page.SignupModal;


public class LoginTest extends BaseTodoLy {
    MainPage mainPage= new MainPage();
    SignupModal signupModal = new SignupModal();
    MenuSection menuSection = new MenuSection();

    @Test
    public void verifyLoginTodoLy() throws InterruptedException {
        //Login
        mainPage.signupImage.click();
        signupModal.fullnameTxtBox.setText("Deni");
        signupModal.emailTxtBox.setText("denis@email.com");
        signupModal.pwdTxtBox.setText("12345");
        signupModal.termsOfService.click();
        signupModal.loginButton.click();
        Assertions.assertTrue(menuSection.logoutButton.isControlDisplayed(),
                "ERROR no se pudo hacer el login");
        Thread.sleep(2000);
        //Logout
        menuSection.logoutButton.click();
        Assertions.assertTrue(mainPage.signupImage.isControlDisplayed(),
                "ERROR no se pudo hacer el login");
        Thread.sleep(2000);




    }
}
