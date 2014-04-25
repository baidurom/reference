.class public Lcom/android/phone/OthersSettings;
.super Landroid/preference/PreferenceActivity;
.source "OthersSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTON_OTHERS_DUAL_MIC_KEY:Ljava/lang/String; = "dual_mic_key"

.field private static final BUTTON_OTHERS_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final BUTTON_OTHERS_MINUTE_REMINDER_KEY:Ljava/lang/String; = "minute_reminder_key"

.field private static final BUTTON_TTY_KEY:Ljava/lang/String; = "button_tty_mode_key"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/OthersSettings"

.field static final preferredTtyMode:I


# instance fields
.field private isOnlyOneSim:Z

.field private mButtonDualMic:Landroid/preference/CheckBoxPreference;

.field private mButtonFdn:Landroid/preference/Preference;

.field private mButtonMr:Landroid/preference/CheckBoxPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mSimId:I

.field preCfr:Lcom/android/phone/PreCheckForRunning;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 44
    iput v0, p0, Lcom/android/phone/OthersSettings;->mSimId:I

    .line 45
    iput-boolean v0, p0, Lcom/android/phone/OthersSettings;->isOnlyOneSim:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/OthersSettings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    return-void
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/MultipleSimCallSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 257
    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 261
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 262
    .local v0, buttonTtyMode:I
    invoke-virtual {p0}, Lcom/android/phone/OthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 265
    .local v1, settingsTtyMode:I
    const-string v3, "Settings/OthersSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTTYChange: requesting set TTY mode enable (TTY) to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-eq v0, v1, :cond_0

    .line 269
    packed-switch v0, :pswitch_data_0

    .line 278
    const/4 v0, 0x0

    .line 281
    :goto_0
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, v0}, Lcom/android/phone/OthersSettings;->updatePreferredTtyModeSummary(I)V

    .line 283
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyPreferredMode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v2}, Lcom/android/phone/OthersSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 287
    .end local v2           #ttyModeChanged:Landroid/content/Intent;
    :cond_0
    return-void

    .line 274
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/OthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/android/phone/OthersSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 299
    iget-object v1, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 300
    iget-object v1, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v3, 0x7f050019

    invoke-virtual {p0, v3}, Lcom/android/phone/OthersSettings;->addPreferencesFromResource(I)V

    .line 73
    const-string v3, "button_fdn_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/OthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    .line 74
    const-string v3, "minute_reminder_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/OthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    .line 75
    const-string v3, "dual_mic_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/OthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "def.dualmic.display.enabled"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, isNeedShowDualMicKey:Ljava/lang/String;
    const-string v3, "DUAL_MIC"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/OthersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/OthersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v6, "auto_reject_setting_key"

    invoke-virtual {p0, v6}, Lcom/android/phone/OthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    const-string v3, "OP01"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/OthersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v6, "call_reject"

    invoke-virtual {p0, v6}, Lcom/android/phone/OthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    :cond_2
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    :cond_3
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    .line 129
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    :cond_4
    const-string v3, "button_tty_mode_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/OthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    .line 133
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v3, :cond_5

    .line 134
    const-string v3, "TTY"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 135
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    :cond_5
    :goto_1
    new-instance v3, Lcom/android/phone/PreCheckForRunning;

    invoke-direct {v3, p0}, Lcom/android/phone/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/OthersSettings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 146
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 147
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 148
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_6

    .line 149
    iput-boolean v4, p0, Lcom/android/phone/OthersSettings;->isOnlyOneSim:Z

    .line 150
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v3, p0, Lcom/android/phone/OthersSettings;->mSimId:I

    .line 157
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/android/phone/OthersSettings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget-boolean v3, p0, Lcom/android/phone/OthersSettings;->isOnlyOneSim:Z

    if-nez v3, :cond_b

    move v3, v4

    :goto_3
    iput-boolean v3, v6, Lcom/android/phone/PreCheckForRunning;->byPass:Z

    .line 158
    return-void

    .line 84
    :cond_7
    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "def.dualmic.enabled"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, isDualMicOpen:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 89
    const-string v3, "1"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setDualMicMode(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 93
    :cond_8
    const-string v3, "0"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setDualMicMode(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 137
    .end local v0           #isDualMicOpen:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/OthersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    goto :goto_1

    .line 153
    :cond_a
    iput-boolean v4, p0, Lcom/android/phone/OthersSettings;->isOnlyOneSim:Z

    .line 154
    iput v5, p0, Lcom/android/phone/OthersSettings;->mSimId:I

    goto :goto_2

    :cond_b
    move v3, v5

    .line 157
    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 247
    iget-object v0, p0, Lcom/android/phone/OthersSettings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/phone/OthersSettings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/android/phone/PreCheckForRunning;->deRegister()V

    .line 250
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/phone/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/phone/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "OthersSettings"

    const-string v1, "onPreferenceChange mButtonReminder turn on"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/phone/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b03eb

    invoke-virtual {p0, v1}, Lcom/android/phone/OthersSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 193
    :cond_1
    const-string v0, "OthersSettings"

    const-string v1, "onPreferenceChange mButtonReminder turn off"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/phone/OthersSettings;->mButtonMr:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0b03ec

    invoke-virtual {p0, v1}, Lcom/android/phone/OthersSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/phone/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/android/phone/OthersSettings;->mButtonDualMic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    const-string v0, "Settings/OthersSettings"

    const-string v1, "onPreferenceChange mButtonDualmic turn on"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v0, "1"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setDualMicMode(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_3
    const-string v0, "Settings/OthersSettings"

    const-string v1, "onPreferenceChange mButtonDualmic turn off"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v0, "0"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setDualMicMode(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/phone/OthersSettings;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v4, 0x12e

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 162
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v3

    if-nez v3, :cond_2

    .line 163
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FdnSetting2;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/OthersSettings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/OthersSettings;->mSimId:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 184
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v3, :cond_0

    move v1, v2

    .line 170
    goto :goto_0

    .line 173
    :cond_2
    iget-object v3, p0, Lcom/android/phone/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 177
    sget-object v2, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v3, "PreferenceScreen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    sget-object v2, Lcom/android/phone/MultipleSimActivity;->targetClassKey:Ljava/lang/String;

    const-string v3, "com.android.phone.FdnSetting2"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v2, p0, Lcom/android/phone/OthersSettings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/OthersSettings;->mSimId:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    move v1, v2

    .line 184
    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 216
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 217
    iget v4, p0, Lcom/android/phone/OthersSettings;->mSimId:I

    invoke-static {v4}, Lcom/android/phone/CallSettings;->isRadioOn(I)Z

    move-result v2

    .line 218
    .local v2, isRadioOn:Z
    iget-boolean v4, p0, Lcom/android/phone/OthersSettings;->isOnlyOneSim:Z

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 219
    iget-object v4, p0, Lcom/android/phone/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 222
    :cond_0
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 224
    .local v1, insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 225
    iget-object v4, p0, Lcom/android/phone/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 234
    .end local v1           #insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v4, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/android/phone/OthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_tty_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 238
    .local v3, settingsTtyMode:I
    iget-object v4, p0, Lcom/android/phone/OthersSettings;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, v3}, Lcom/android/phone/OthersSettings;->updatePreferredTtyModeSummary(I)V

    .line 241
    .end local v3           #settingsTtyMode:I
    :cond_2
    return-void

    .line 228
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 229
    .local v0, bIccExist:Z
    if-nez v0, :cond_1

    .line 230
    iget-object v4, p0, Lcom/android/phone/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/OthersSettings;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
