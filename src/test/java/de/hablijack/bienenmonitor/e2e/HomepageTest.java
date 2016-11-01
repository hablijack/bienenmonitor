package de.hablijack.bienenmonitor.e2e;

import static com.codeborne.selenide.CollectionCondition.sizeGreaterThan;
import static com.codeborne.selenide.Condition.exist;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.$$;
import static com.codeborne.selenide.Selenide.open;

import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.phantomjs.PhantomJSDriver;

import com.codeborne.selenide.WebDriverRunner;

import io.github.bonigarcia.wdm.PhantomJsDriverManager;

public class HomepageTest {

    @BeforeClass
    public static void initPhantomJSWebdriver() {
        PhantomJsDriverManager.getInstance().setup();
        WebDriverRunner.setWebDriver(new PhantomJSDriver());
    }

    @Test
    public void check_navigation_presence() {
        open("https://eilkurier.herokuapp.com");
        $("nav.navbar").should(exist);
        $$("nav.navbar ul li").shouldHave(sizeGreaterThan(2));
    }
}