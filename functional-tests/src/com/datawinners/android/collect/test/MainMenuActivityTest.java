package com.datawinners.android.collect.test;

import android.test.ActivityInstrumentationTestCase2;
import com.jayway.android.robotium.solo.Solo;
import org.odk.collect.android.activities.MainMenuActivity;

/**
 * This is a simple framework for a test of an Application.  See
 * {@link android.test.ApplicationTestCase ApplicationTestCase} for more information on
 * how to write and extend Application test.
 * <p/>
 * To run this test, you can type:
 * adb shell am instrument -w \
 * -e class org.odk.collect.android.activities.MainMenuActivityTest \
 * com.datawinners.android.collect.test/android.test.InstrumentationTestRunner
 */
public class MainMenuActivityTest extends ActivityInstrumentationTestCase2<MainMenuActivity> {

    private Solo solo;

    public MainMenuActivityTest() {
        super(MainMenuActivity.class);
    }

    @Override
    protected void setUp() throws Exception {
        super.setUp();
        solo = new Solo(getInstrumentation(), getActivity());
    }

    public void testShouldCheckForCorrectLabelsOnMainMenu() {
        assertTrue(solo.searchText("DataWinners"));
        assertTrue(solo.searchButton("Edit Saved Questionnaire"));

    }

    public void testLoginWithValidCredentials() {

        solo.sendKey(Solo.MENU);
        solo.sendKey(Solo.MENU);
        solo.clickOnMenuItem("Change Settings");

        solo.clickOnText("URL");
        solo.clearEditText(0);
        solo.typeText(0, "http://178.79.161.90/xforms");
        solo.clickOnButton("OK");


        solo.clickOnText("Username");
        solo.clearEditText(0);
        solo.typeText(0, "ngo@mailinator.com");
        solo.clickOnButton("OK");

        solo.clickOnText("Password");
        solo.clearEditText(0);
        solo.typeText(0, "password");
        solo.clickOnButton("OK");

        solo.goBack();

        solo.clickOnButton("Get Blank Questionnaire");
        solo.sleep(5000);
        solo.clickOnButton("OK");

        assertTrue(solo.searchText("DataWinners > Get Blank Questionnaire"));


    }


    @Override
    protected void tearDown() throws Exception {
        solo.finishOpenedActivities();
    }
}
