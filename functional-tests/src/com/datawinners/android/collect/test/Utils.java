package com.datawinners.android.collect.test;

import com.jayway.android.robotium.solo.Solo;

public class Utils {

    Solo solo;

    public Utils(Solo solo) {
        this.solo = solo;
    }

    public void goToDatawinnersSettings() {
        solo.sendKey(Solo.MENU);
        solo.sendKey(Solo.MENU);
        solo.clickOnMenuItem("Change Settings");
    }

    public void changeDefaultServerUrl(String url) {
        editTextForLabel("URL", url);
    }

    public void changeUserName(String username) {
        editTextForLabel("Username", username);
    }

    public void changePassword(String password) {
        editTextForLabel("Password", password);
    }

    private void editTextForLabel(String label, String newValue) {
        solo.clickOnText(label);
        solo.clearEditText(0);
        solo.typeText(0, newValue);
        solo.clickOnButton("OK");
    }
}
