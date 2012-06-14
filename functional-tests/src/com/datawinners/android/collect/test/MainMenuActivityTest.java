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
    private Utils utils;

    public MainMenuActivityTest() {
        super(MainMenuActivity.class);
    }

    @Override
    protected void setUp() throws Exception {
        super.setUp();
        solo = new Solo(getInstrumentation(), getActivity());
        utils = new Utils(solo);
    }

    public void testShouldCheckForCorrectLabelsOnMainMenu() {
        assertTrue(solo.searchText("DataWinners"));
        assertTrue(solo.searchButton("Edit Saved Questionnaire"));

    }

    public void testLoginWithValidCredentials() {

        utils.goToDatawinnersSettings();
        utils.changeDefaultServerUrl("http://178.79.161.90/xforms");
        utils.changeUserName("ngo@mailinator.com");
        utils.changePassword("password");

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
