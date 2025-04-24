package com.example.duegiuaky221121514122.ui.Day2_Listview_Advanced;

public class ContactModel {
    private String name;
    private String phoneNumber;
    private int avatarResId;

    public ContactModel(String name, String phoneNumber, int avatarResId) {
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.avatarResId = avatarResId;
    }

    public String getName() {
        return name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public int getAvatarResId() {
        return avatarResId;
    }
}