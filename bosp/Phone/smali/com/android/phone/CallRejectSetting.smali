.class public Lcom/android/phone/CallRejectSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallRejectSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CALL_REJECT_TARGET_CLASS:Ljava/lang/String; = "com.android.phone.CallRejectListSetting"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CallRejectSetting"

.field private static final VIDEO_CALL_ALL_NUMBERS:I = 0xc8

.field private static final VIDEO_CALL_REJECT_LIST_KEY:Ljava/lang/String; = "video_call_reject_list_key"

.field private static final VIDEO_CALL_REJECT_MODE_KEY:Ljava/lang/String; = "video_call_reject_mode_key"

.field private static final VOICE_CALL_ALL_NUMBERS:I = 0x64

.field private static final VOICE_CALL_REJECT_LIST_KEY:Ljava/lang/String; = "voice_call_reject_list_key"

.field private static final VOICE_CALL_REJECT_MODE_KEY:Ljava/lang/String; = "voice_call_reject_mode_key"


# instance fields
.field private mCallRejectModeArray:[Ljava/lang/String;

.field private mVideoRejectList:Landroid/preference/Preference;

.field private mVideoRejectSetting:Landroid/preference/ListPreference;

.field private mVoiceRejectList:Landroid/preference/Preference;

.field private mVoiceRejectSetting:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 41
    const-string v0, "CallRejectSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 46
    const-string v0, "onCreate!!"

    invoke-static {v0}, Lcom/android/phone/CallRejectSetting;->log(Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectSetting;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/CallRejectSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallRejectSetting;->mCallRejectModeArray:[Ljava/lang/String;

    .line 52
    const-string v0, "voice_call_reject_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallRejectSetting;->mVoiceRejectSetting:Landroid/preference/ListPreference;

    .line 53
    iget-object v0, p0, Lcom/android/phone/CallRejectSetting;->mVoiceRejectSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    const-string v0, "voice_call_reject_list_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallRejectSetting;->mVoiceRejectList:Landroid/preference/Preference;

    .line 56
    iget-object v0, p0, Lcom/android/phone/CallRejectSetting;->mVoiceRejectList:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    const-string v0, "video_call_reject_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallRejectSetting;->mVideoRejectSetting:Landroid/preference/ListPreference;

    .line 59
    iget-object v0, p0, Lcom/android/phone/CallRejectSetting;->mVideoRejectSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string v0, "video_call_reject_list_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallRejectSetting;->mVideoRejectList:Landroid/preference/Preference;

    .line 62
    iget-object v0, p0, Lcom/android/phone/CallRejectSetting;->mVideoRejectList:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 133
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 135
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 137
    sparse-switch p1, :sswitch_data_0

    .line 147
    :goto_0
    const v2, 0x1040013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 149
    .local v0, alertDlg:Landroid/app/AlertDialog;
    return-object v0

    .line 139
    .end local v0           #alertDlg:Landroid/app/AlertDialog;
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CallRejectSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0311

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 142
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/CallRejectSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0312

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "onPause()..."

    invoke-static {v0}, Lcom/android/phone/CallRejectSetting;->log(Ljava/lang/String;)V

    .line 89
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 90
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 109
    const-string v4, "Enter onPreferenceChange function."

    invoke-static {v4}, Lcom/android/phone/CallRejectSetting;->log(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, key:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, value:I
    const-string v4, "voice_call_reject_mode_key"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/CallRejectSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_call_reject_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    iget-object v4, p0, Lcom/android/phone/CallRejectSetting;->mVoiceRejectSetting:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/CallRejectSetting;->mCallRejectModeArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, p0, Lcom/android/phone/CallRejectSetting;->mVoiceRejectList:Landroid/preference/Preference;

    if-ne v1, v6, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 117
    if-ne v1, v3, :cond_1

    .line 118
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/android/phone/CallRejectSetting;->showDialog(I)V

    .line 128
    :cond_1
    :goto_0
    return v3

    .line 120
    :cond_2
    const-string v4, "video_call_reject_mode_key"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/CallRejectSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vt_call_reject_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    iget-object v4, p0, Lcom/android/phone/CallRejectSetting;->mVideoRejectSetting:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/CallRejectSetting;->mCallRejectModeArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/android/phone/CallRejectSetting;->mVideoRejectList:Landroid/preference/Preference;

    if-ne v1, v6, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 124
    if-ne v1, v3, :cond_1

    .line 125
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/CallRejectSetting;->showDialog(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 94
    const-string v1, "Enter onPreferenceTreeClick function."

    invoke-static {v1}, Lcom/android/phone/CallRejectSetting;->log(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/phone/CallRejectSetting;->mVoiceRejectList:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/CallRejectListSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "voice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectSetting;->startActivity(Landroid/content/Intent;)V

    .line 104
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallRejectSetting;->mVideoRejectList:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/CallRejectListSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/phone/CallRejectSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 73
    const-string v2, "onResume()..."

    invoke-static {v2}, Lcom/android/phone/CallRejectSetting;->log(Ljava/lang/String;)V

    .line 74
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/CallRejectSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "voice_call_reject_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 76
    .local v1, voiceRejectMode:I
    iget-object v2, p0, Lcom/android/phone/CallRejectSetting;->mVoiceRejectSetting:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 77
    iget-object v2, p0, Lcom/android/phone/CallRejectSetting;->mVoiceRejectSetting:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/CallRejectSetting;->mCallRejectModeArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v5, p0, Lcom/android/phone/CallRejectSetting;->mVoiceRejectList:Landroid/preference/Preference;

    if-ne v1, v6, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/CallRejectSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "vt_call_reject_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 81
    .local v0, videoRejectMode:I
    iget-object v2, p0, Lcom/android/phone/CallRejectSetting;->mVideoRejectSetting:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 82
    iget-object v2, p0, Lcom/android/phone/CallRejectSetting;->mVideoRejectSetting:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/CallRejectSetting;->mCallRejectModeArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/android/phone/CallRejectSetting;->mVideoRejectList:Landroid/preference/Preference;

    if-ne v0, v6, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 84
    return-void

    .end local v0           #videoRejectMode:I
    :cond_0
    move v2, v4

    .line 78
    goto :goto_0

    .restart local v0       #videoRejectMode:I
    :cond_1
    move v3, v4

    .line 83
    goto :goto_1
.end method
