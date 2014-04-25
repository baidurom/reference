.class public Lcom/android/phone/VTAdvancedSettingEx;
.super Landroid/preference/PreferenceActivity;
.source "VTAdvancedSettingEx.java"


# static fields
.field private static final BUTTON_CALL_ADDITIONAL_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_CALL_BAR_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_CALL_FWD_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_VT_AUTO_DROPBACK_KEY:Ljava/lang/String; = "button_vt_auto_dropback_key"

.field private static final BUTTON_VT_ENABLE_BACK_CAMERA_KEY:Ljava/lang/String; = "button_vt_enable_back_camera_key"

.field private static final BUTTON_VT_ENABLE_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_enable_peer_replace_key"

.field private static final BUTTON_VT_MO_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mo_local_video_display_key"

.field private static final BUTTON_VT_MT_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mt_local_video_display_key"

.field private static final BUTTON_VT_PEER_BIGGER_KEY:Ljava/lang/String; = "button_vt_peer_bigger_key"

.field private static final BUTTON_VT_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_peer_expand_key"

.field private static final BUTTON_VT_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_expand_key"

.field private static final BUTTON_VT_RINGTONE_KEY:Ljava/lang/String; = "button_vt_ringtone_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/VTAdvancedSetting"

.field public static final REQUESTCODE_PICTRUE_PICKED_WITH_DATA:I = 0xbcd

.field private static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field private static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field private static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"

.field private static final SELECT_My_PICTURE:Ljava/lang/String; = "2"


# instance fields
.field private isOnlyOneSim:Z

.field private mButtonCallAdditional:Landroid/preference/Preference;

.field private mButtonCallBar:Landroid/preference/Preference;

.field private mButtonCallFwd:Landroid/preference/Preference;

.field private mButtonVTAutoDropBack:Landroid/preference/Preference;

.field private mButtonVTEnablePeerReplace:Landroid/preference/Preference;

.field private mButtonVTEnablebackCamer:Landroid/preference/Preference;

.field private mButtonVTMoVideo:Landroid/preference/Preference;

.field private mButtonVTMtVideo:Landroid/preference/Preference;

.field private mButtonVTPeerBigger:Landroid/preference/Preference;

.field private mButtonVTPeerReplace:Landroid/preference/Preference;

.field private mButtonVTReplace:Landroid/preference/Preference;

.field private mSimId:I

.field private preCfr:Lcom/android/phone/PreCheckForRunning;

.field simIds:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 68
    iput v1, p0, Lcom/android/phone/VTAdvancedSettingEx;->mSimId:I

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 76
    iput-boolean v1, p0, Lcom/android/phone/VTAdvancedSettingEx;->isOnlyOneSim:Z

    return-void
.end method

.method private getKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/phone/VTAdvancedSettingEx;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    .local v0, sp:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 79
    const-string v0, "Settings/VTAdvancedSetting"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method private setKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/phone/VTAdvancedSettingEx;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 319
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    return-void
.end method

.method private updateView(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonCallAdditional:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonCallFwd:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonCallBar:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v2, 0x7f050027

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->addPreferencesFromResource(I)V

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    const-string v2, "3G_SWITCH"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v2

    iput v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mSimId:I

    .line 91
    iget v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mSimId:I

    invoke-static {p0, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 95
    :goto_0
    new-instance v2, Lcom/android/phone/PreCheckForRunning;

    invoke-direct {v2, p0}, Lcom/android/phone/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 96
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 98
    iput-boolean v3, p0, Lcom/android/phone/VTAdvancedSettingEx;->isOnlyOneSim:Z

    .line 99
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mSimId:I

    .line 101
    :cond_0
    iget-object v5, p0, Lcom/android/phone/VTAdvancedSettingEx;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget-boolean v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->isOnlyOneSim:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, v5, Lcom/android/phone/PreCheckForRunning;->byPass:Z

    .line 103
    if-eqz v0, :cond_3

    .line 105
    iget-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    iget-wide v5, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    aput-wide v5, v2, v4

    .line 111
    :goto_2
    const-string v2, "button_vt_replace_expand_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    .line 113
    const-string v2, "button_vt_enable_back_camera_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    .line 114
    const-string v2, "button_vt_peer_bigger_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    .line 115
    const-string v2, "button_vt_mo_local_video_display_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    .line 116
    const-string v2, "button_vt_mt_local_video_display_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    .line 118
    const-string v2, "button_more_expand_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonCallAdditional:Landroid/preference/Preference;

    .line 119
    const-string v2, "button_cf_expand_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonCallFwd:Landroid/preference/Preference;

    .line 120
    const-string v2, "button_cb_expand_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonCallBar:Landroid/preference/Preference;

    .line 122
    const-string v2, "button_vt_replace_peer_expand_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    .line 123
    const-string v2, "button_vt_enable_peer_replace_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    .line 124
    const-string v2, "button_vt_auto_dropback_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    .line 126
    return-void

    .line 93
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_1
    invoke-static {p0, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    goto/16 :goto_0

    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_2
    move v2, v4

    .line 101
    goto :goto_1

    .line 109
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 326
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->preCfr:Lcom/android/phone/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSettingEx;->preCfr:Lcom/android/phone/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/android/phone/PreCheckForRunning;->deRegister()V

    .line 329
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v6, 0x12e

    const/4 v3, 0x1

    .line 162
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonCallFwd:Landroid/preference/Preference;

    if-ne p2, v4, :cond_0

    .line 164
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v2, intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 167
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v5, "VT"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v5, "PreferenceScreen"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 170
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->targetClassKey:Ljava/lang/String;

    const-string v5, "com.android.phone.GsmUmtsCallForwardOptions"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v5, p0, Lcom/android/phone/VTAdvancedSettingEx;->mSimId:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 307
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 174
    :cond_0
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonCallBar:Landroid/preference/Preference;

    if-ne p2, v4, :cond_1

    .line 175
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "ISVT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 179
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v5, "VT"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v5, "PreferenceScreen"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 182
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->targetClassKey:Ljava/lang/String;

    const-string v5, "com.android.phone.CallBarring"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v5, p0, Lcom/android/phone/VTAdvancedSettingEx;->mSimId:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 186
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonCallAdditional:Landroid/preference/Preference;

    if-ne p2, v4, :cond_2

    .line 187
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 190
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v5, "VT"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v5, "PreferenceScreen"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 193
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->targetClassKey:Ljava/lang/String;

    const-string v5, "com.android.phone.GsmUmtsAdditionalCallOptions"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v5, p0, Lcom/android/phone/VTAdvancedSettingEx;->mSimId:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 197
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTEnablebackCamer:Landroid/preference/Preference;

    if-ne p2, v4, :cond_3

    .line 198
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v5, "VT"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 202
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 203
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initBaseKey:Ljava/lang/String;

    const-string v5, "button_vt_enable_back_camera_key@"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v5, "CheckBoxPreference"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 208
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTReplace:Landroid/preference/Preference;

    if-ne p2, v4, :cond_5

    .line 209
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 212
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v5, "VT"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v5, "ListPreference"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v4, "LIST_TITLE_NAME"

    invoke-virtual {p0}, Lcom/android/phone/VTAdvancedSettingEx;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b037d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0}, Lcom/android/phone/VTAdvancedSettingEx;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, entries:[Ljava/lang/CharSequence;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initArray:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 217
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 218
    const-string v4, "button_vt_replace_expand_key"

    invoke-direct {p0, v4}, Lcom/android/phone/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 220
    const-string v4, "button_vt_replace_expand_key"

    const-string v5, "0"

    invoke-direct {p0, v4, v5}, Lcom/android/phone/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_4
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initBaseKey:Ljava/lang/String;

    const-string v5, "button_vt_replace_expand_key@"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0}, Lcom/android/phone/VTAdvancedSettingEx;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, entriesValue:[Ljava/lang/CharSequence;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initArrayValue:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 227
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #entriesValue:[Ljava/lang/CharSequence;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTPeerBigger:Landroid/preference/Preference;

    if-ne p2, v4, :cond_7

    .line 228
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v4, "VT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 232
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 233
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v4, "CheckBoxPreference"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initBaseKey:Ljava/lang/String;

    const-string v4, "button_vt_peer_bigger_key@"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    .line 307
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 237
    :cond_7
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTMoVideo:Landroid/preference/Preference;

    if-ne p2, v4, :cond_8

    .line 238
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v4, "VT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 242
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 243
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v4, "CheckBoxPreference"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initBaseKey:Ljava/lang/String;

    const-string v4, "button_vt_mo_local_video_display_key@"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 247
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTMtVideo:Landroid/preference/Preference;

    if-ne p2, v4, :cond_a

    .line 248
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 251
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v5, "VT"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v4, "LIST_TITLE_NAME"

    invoke-virtual {p0}, Lcom/android/phone/VTAdvancedSettingEx;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0375

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v5, "ListPreference"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0}, Lcom/android/phone/VTAdvancedSettingEx;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 255
    .restart local v0       #entries:[Ljava/lang/CharSequence;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initArray:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 256
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 257
    const-string v4, "button_vt_mt_local_video_display_key"

    invoke-direct {p0, v4}, Lcom/android/phone/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    .line 259
    const-string v4, "button_vt_mt_local_video_display_key"

    const-string v5, "0"

    invoke-direct {p0, v4, v5}, Lcom/android/phone/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_9
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initBaseKey:Ljava/lang/String;

    const-string v5, "button_vt_mt_local_video_display_key@"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0}, Lcom/android/phone/VTAdvancedSettingEx;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 263
    .restart local v1       #entriesValue:[Ljava/lang/CharSequence;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initArrayValue:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 266
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #entriesValue:[Ljava/lang/CharSequence;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_a
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTPeerReplace:Landroid/preference/Preference;

    if-ne p2, v4, :cond_c

    .line 267
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 270
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v5, "VT"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v5, "ListPreference"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v4, "LIST_TITLE_NAME"

    invoke-virtual {p0}, Lcom/android/phone/VTAdvancedSettingEx;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b03a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0}, Lcom/android/phone/VTAdvancedSettingEx;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 274
    .restart local v0       #entries:[Ljava/lang/CharSequence;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initArray:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 275
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 276
    const-string v4, "button_vt_replace_peer_expand_key"

    invoke-direct {p0, v4}, Lcom/android/phone/VTAdvancedSettingEx;->getKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    .line 278
    const-string v4, "button_vt_replace_peer_expand_key"

    const-string v5, "0"

    invoke-direct {p0, v4, v5}, Lcom/android/phone/VTAdvancedSettingEx;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_b
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initBaseKey:Ljava/lang/String;

    const-string v5, "button_vt_replace_peer_expand_key@"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0}, Lcom/android/phone/VTAdvancedSettingEx;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 282
    .restart local v1       #entriesValue:[Ljava/lang/CharSequence;
    sget-object v4, Lcom/android/phone/MultipleSimActivity;->initArrayValue:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 285
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #entriesValue:[Ljava/lang/CharSequence;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_c
    iget-object v3, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTEnablePeerReplace:Landroid/preference/Preference;

    if-ne p2, v3, :cond_d

    .line 286
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v4, "VT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 290
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 291
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v4, "CheckBoxPreference"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initBaseKey:Ljava/lang/String;

    const-string v4, "button_vt_enable_peer_replace_key@"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 295
    .end local v2           #intent:Landroid/content/Intent;
    :cond_d
    iget-object v3, p0, Lcom/android/phone/VTAdvancedSettingEx;->mButtonVTAutoDropBack:Landroid/preference/Preference;

    if-ne p2, v3, :cond_6

    .line 296
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .restart local v2       #intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v4, "VT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/VTAdvancedSettingEx;->simIds:[J

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 300
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 301
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v4, "CheckBoxPreference"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    sget-object v3, Lcom/android/phone/MultipleSimActivity;->initBaseKey:Ljava/lang/String;

    const-string v4, "button_vt_auto_dropback_key@"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v2}, Lcom/android/phone/VTAdvancedSettingEx;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, is3GEnable:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v0

    .line 133
    .local v0, Capability3G:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    const/4 v1, 0x1

    .line 136
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/VTAdvancedSettingEx;->updateView(Z)V

    .line 137
    return-void
.end method
