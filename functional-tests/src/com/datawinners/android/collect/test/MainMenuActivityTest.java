package com.datawinners.android.collect.test;

import android.test.ActivityInstrumentationTestCase2;
import com.jayway.android.robotium.solo.Solo;
import org.odk.collect.android.activities.*;

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
public class MainMenuActivityTest extends ActivityInstrumentationTestCase2<SplashScreenActivity> {

    private Solo solo;
    public MainMenuActivityTest() {
        super(SplashScreenActivity.class);
    }

    @Override
    protected void setUp() throws Exception {
        super.setUp();
        solo = new Solo(getInstrumentation(), getActivity());
    }

    public void testTp() {
        assertTrue(solo.searchText("DataWinners"));
    }

    @Override
    protected void tearDown() throws Exception {
        solo.finishOpenedActivities();
    }
}
