package sqs;

//import cucumber.api.CucumberOptions;
//import cucumber.api.junit.Cucumber;
import org.junit.AfterClass;
import org.junit.runner.RunWith;
import sqs.framework.FrameworkBase;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;






import java.io.IOException;


@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty",
                "html:Result/Reports",
                //"html:Result/Reports/CyclosWeb_Firefox_*_*/cucumber-html-reports",
                "junit:Result/Reports/cucumber.xml",
                "json:Result/Reports/cucumber.json",
                "usage:Result/Reports/cucumber-usage.json",
                "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:report.html",
                "io.qameta.allure.cucumber4jvm.AllureCucumber4Jvm",
                "de.monochromata.cucumber.report.PrettyReports:Result/Report"
        },
        strict = false,
        monochrome = true,
        features = "src/test/resources/Features/",
        glue = {"sqs.cucumber.hooks",
                "sqs.cucumber.stepdefinitions"
        },
        		tags = {"@UserPaymentValidation","@UserPayment_summarized_web"})
       //tags = {"@UserPaymentValidation,@Login,@accounts,@UserPayment_summarized_web,@demo,@users"})

public class TestRunner {
    TestRunner() {
    }

    @AfterClass
    public static void generateReports() throws IOException {
        FrameworkBase.afterTestSuite();
        // RunnerClassGenerator.generateRunnerClass("@target/rerun.txt","", FrameworkData.getExtentReportPath());
    }
}
