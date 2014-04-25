.class public Lcom/android/phone/CallSettings;
.super Landroid/preference/PreferenceActivity;
.source "CallSettings.java"


# instance fields
.field private SUB_TITLE_NAME:Ljava/lang/String;

.field private VT_CARD_SLOT:I

.field private is_voice:Z

.field private localSimId:I

.field mOnlyVt:Z

.field mSipCallSetting:Landroid/preference/Preference;

.field mVTSetting:Landroid/preference/Preference;

.field mVoiceSetting:Landroid/preference/Preference;

.field private sub_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/android/phone/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 26
    iput-object v1, p0, Lcom/android/phone/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    .line 27
    iput-object v1, p0, Lcom/android/phone/CallSettings;->mSipCallSetting:Landroid/preference/Preference;

    .line 29
    iput-boolean v0, p0, Lcom/android/phone/CallSettings;->mOnlyVt:Z

    .line 30
    iput v0, p0, Lcom/android/phone/CallSettings;->VT_CARD_SLOT:I

    .line 31
    iput v0, p0, Lcom/android/phone/CallSettings;->localSimId:I

    .line 32
    const-string v0, "sub_title_name"

    iput-object v0, p0, Lcom/android/phone/CallSettings;->SUB_TITLE_NAME:Ljava/lang/String;

    return-void
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/CallSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 165
    return-void
.end method

.method public static isMultipleSim()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public static isRadioOn(I)Z
    .locals 5
    .parameter "slot"

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, isRadioOn:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 150
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 151
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 152
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v1

    .line 157
    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :goto_0
    return v1

    .line 154
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/android/phone/CallSettings;->addPreferencesFromResource(I)V

    .line 40
    const-string v1, "button_vedio_call_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallSettings;->mVTSetting:Landroid/preference/Preference;

    .line 41
    const-string v1, "button_voice_call_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/CallSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallSettings;->localSimId:I

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/CallSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallSettings;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallSettings;->sub_title:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/android/phone/CallSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ISVT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CallSettings;->is_voice:Z

    .line 45
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    .line 46
    .local v0, voipSupported:Z
    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/CallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "button_internet_call_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v3, "simId"

    iget v4, p0, Lcom/android/phone/CallSettings;->localSimId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    iget-object v3, p0, Lcom/android/phone/CallSettings;->SUB_TITLE_NAME:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallSettings;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v3, "ISVT"

    iget-boolean v4, p0, Lcom/android/phone/CallSettings;->is_voice:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    iget-object v3, p0, Lcom/android/phone/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v1, intent1:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/phone/CallSettings;->mOnlyVt:Z

    if-nez v3, :cond_0

    .line 71
    const-class v3, Lcom/android/phone/VTAdvancedSettingEx;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CallSettings;->startActivity(Landroid/content/Intent;)V

    .line 92
    .end local v1           #intent1:Landroid/content/Intent;
    :goto_1
    return v2

    .line 74
    .restart local v1       #intent1:Landroid/content/Intent;
    :cond_0
    const-class v3, Lcom/android/phone/VTAdvancedSetting;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 78
    .end local v1           #intent1:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 79
    const-class v3, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/phone/CallSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 82
    :cond_2
    const-string v3, "button_internet_call_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_3

    .line 83
    const-class v3, Lcom/android/phone/SipCallSetting;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/phone/CallSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 86
    :cond_3
    const-string v3, "button_others_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_4

    .line 87
    const-class v3, Lcom/android/phone/OthersSettings;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/phone/CallSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 92
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 98
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 99
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/android/phone/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 140
    .end local v1           #insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_1
    :goto_0
    return-void

    .line 111
    .restart local v1       #insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_2
    const-string v2, "3G_SWITCH"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v2

    iput v2, p0, Lcom/android/phone/CallSettings;->VT_CARD_SLOT:I

    .line 116
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget v3, p0, Lcom/android/phone/CallSettings;->VT_CARD_SLOT:I

    if-ne v2, v3, :cond_4

    .line 118
    iput-boolean v5, p0, Lcom/android/phone/CallSettings;->mOnlyVt:Z

    .line 121
    :cond_4
    iget v2, p0, Lcom/android/phone/CallSettings;->VT_CARD_SLOT:I

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    if-nez v2, :cond_5

    .line 124
    iget-object v2, p0, Lcom/android/phone/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 128
    :cond_5
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    iput-boolean v5, p0, Lcom/android/phone/CallSettings;->mOnlyVt:Z

    goto :goto_0

    .line 133
    .end local v1           #insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 134
    .local v0, bIccExist:Z
    iput-boolean v5, p0, Lcom/android/phone/CallSettings;->mOnlyVt:Z

    .line 135
    if-nez v0, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/phone/CallSettings;->mVTSetting:Landroid/preference/Preference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/CallSettings;->mVTSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 137
    :cond_7
    iget-object v2, p0, Lcom/android/phone/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallSettings;->mVoiceSetting:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
