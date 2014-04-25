.class public Lcom/android/phone/SingleSimCallSetting;
.super Landroid/preference/PreferenceActivity;
.source "SingleSimCallSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SingleSimCallSetting$AutoRecordSetting;,
        Lcom/android/phone/SingleSimCallSetting$IpCallSetting;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

.field private static final AUTO_IP_CALL_SETTING:Ljava/lang/String; = "ip_call_setting_entry_key"

.field private static final AUTO_RECORD_SETTING:Ljava/lang/String; = "autorecord_setting_entry_key"

.field private static final AUTO_RECORD_SETTING_CATEGORY:Ljava/lang/String; = "autorecord_setting_category"

.field private static final BROADCAST_CALL_BY_TTS:Ljava/lang/String; = "broadcast_call_by_tts"

.field private static final BROADCAST_TTS_GROUP:Ljava/lang/String; = "broadcast_by_tts_key"

.field private static final BUTON_FLIPMUTE_ENABLE:Ljava/lang/String; = "button_flipmute_enable"

.field private static final BUTTON_CALL_ADDITIONAL_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_CALL_BAR_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_CALL_FWD_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_CALL_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail_key"

.field private static final BUTTON_IP_CALL_SETTING_KEY:Ljava/lang/String; = "button_ip_call_setting_key"

.field private static final BUTTON_IP_ENABLE:Ljava/lang/String; = "button_ip_enable"

.field private static final BUTTON_OTHERS_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final DBG:Z = true

.field static final DTMF_TONE_TYPE_LONG:I = 0x1

.field static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final HAC_KEY:Ljava/lang/String; = "HACSetting"

.field public static final HAC_VAL_OFF:Ljava/lang/String; = "OFF"

.field public static final HAC_VAL_ON:Ljava/lang/String; = "ON"

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field private static final TTS_BROADCAST_ENBALE:Ljava/lang/String; = "tts_broadcast_enable"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field private static localSimId:I

.field private static mContext:Landroid/content/Context;


# instance fields
.field private isOnlyOneSim:Z

.field private is_voice:Z

.field private mButtonCallAdditional:Landroid/preference/Preference;

.field private mButtonCallBar:Landroid/preference/Preference;

.field private mButtonCallFwd:Landroid/preference/Preference;

.field private mButtonFdn:Landroid/preference/Preference;

.field private mButtonIpPrefix:Landroid/preference/Preference;

.field private mButtonVoiceMail:Landroid/preference/Preference;

.field private mFlipMute:Landroid/preference/SwitchPreference;

.field private mIpSetting:Landroid/preference/PreferenceScreen;

.field private mRecordSetting:Landroid/preference/PreferenceScreen;

.field private mRecordSettingCategory:Landroid/preference/PreferenceCategory;

.field private mSimId:I

.field private mTtsBroadCast:Landroid/preference/SwitchPreference;

.field private preCfr:Lcom/android/phone/PreCheckForRunning;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/SingleSimCallSetting;->localSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 104
    iput v1, p0, Lcom/android/phone/SingleSimCallSetting;->mSimId:I

    .line 106
    iput-boolean v1, p0, Lcom/android/phone/SingleSimCallSetting;->isOnlyOneSim:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SingleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 108
    iput-boolean v1, p0, Lcom/android/phone/SingleSimCallSetting;->is_voice:Z

    .line 718
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/phone/SingleSimCallSetting;->localSimId:I

    return v0
.end method

.method static updateWhiteListSettingSummary(Landroid/content/Context;Landroid/preference/PreferenceScreen;Ljava/lang/String;I)V
    .locals 11
    .parameter "context"
    .parameter "screen"
    .parameter "subscriberId"
    .parameter "type"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 677
    if-eqz p1, :cond_1

    .line 679
    sget-object v1, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 680
    .local v1, whiteListUri:Landroid/net/Uri;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    .line 681
    .local v2, projection:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 682
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 683
    .local v4, selectionArgs:[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscriber = ? AND type = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 686
    new-array v4, v9, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    aput-object p2, v4, v10

    .line 690
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 692
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 693
    const/4 v7, 0x0

    .line 694
    .local v7, count:I
    if-eqz v6, :cond_0

    .line 695
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 698
    :cond_0
    if-lez v7, :cond_4

    .line 699
    if-le v7, v9, :cond_3

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0b02ee

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 707
    .local v8, summary:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    if-eqz v6, :cond_1

    .line 710
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 714
    .end local v1           #whiteListUri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #count:I
    .end local v8           #summary:Ljava/lang/String;
    :cond_1
    return-void

    .line 688
    .restart local v1       #whiteListUri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 702
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #count:I
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0b02ef

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #summary:Ljava/lang/String;
    goto :goto_1

    .line 705
    .end local v8           #summary:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b02fe

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .restart local v8       #summary:Ljava/lang/String;
    goto :goto_1

    .line 709
    .end local v7           #count:I
    .end local v8           #summary:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 710
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v3, 0x7f05001e

    invoke-virtual {p0, v3}, Lcom/android/phone/SingleSimCallSetting;->addPreferencesFromResource(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 133
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "button_more_expand_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonCallAdditional:Landroid/preference/Preference;

    .line 134
    const-string v3, "button_cf_expand_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonCallFwd:Landroid/preference/Preference;

    .line 135
    const-string v3, "button_cb_expand_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonCallBar:Landroid/preference/Preference;

    .line 136
    const-string v3, "button_voicemail_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonVoiceMail:Landroid/preference/Preference;

    .line 138
    const-string v3, "button_fdn_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonFdn:Landroid/preference/Preference;

    .line 139
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/SingleSimCallSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    new-instance v3, Lcom/android/phone/PreCheckForRunning;

    invoke-direct {v3, p0}, Lcom/android/phone/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/SingleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 143
    iput-boolean v1, p0, Lcom/android/phone/SingleSimCallSetting;->isOnlyOneSim:Z

    .line 144
    iput v2, p0, Lcom/android/phone/SingleSimCallSetting;->mSimId:I

    .line 145
    iget-object v3, p0, Lcom/android/phone/SingleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget-boolean v4, p0, Lcom/android/phone/SingleSimCallSetting;->isOnlyOneSim:Z

    if-nez v4, :cond_0

    :goto_0
    iput-boolean v1, v3, Lcom/android/phone/PreCheckForRunning;->byPass:Z

    .line 150
    const-string v1, "ip_call_setting_entry_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/SingleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/SingleSimCallSetting;->mIpSetting:Landroid/preference/PreferenceScreen;

    .line 151
    sput-object p0, Lcom/android/phone/SingleSimCallSetting;->mContext:Landroid/content/Context;

    .line 153
    const-string v1, "broadcast_call_by_tts"

    invoke-virtual {p0, v1}, Lcom/android/phone/SingleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/SingleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    .line 154
    iget-object v1, p0, Lcom/android/phone/SingleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    const-string v1, "button_flipmute_enable"

    invoke-virtual {p0, v1}, Lcom/android/phone/SingleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/SingleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    .line 156
    iget-object v1, p0, Lcom/android/phone/SingleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    const-string v1, "autorecord_setting_category"

    invoke-virtual {p0, v1}, Lcom/android/phone/SingleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/phone/SingleSimCallSetting;->mRecordSettingCategory:Landroid/preference/PreferenceCategory;

    .line 160
    invoke-static {p0}, Lcom/baidu/phone/BaiduPhoneUtils;->allowInCallRecord(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/phone/SingleSimCallSetting;->mRecordSettingCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    :goto_1
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 167
    invoke-static {p0}, Lyi/support/v1/YiLaf;->removePreferencePadding(Landroid/app/Activity;)V

    .line 168
    return-void

    :cond_0
    move v1, v2

    .line 145
    goto :goto_0

    .line 163
    :cond_1
    const-string v1, "autorecord_setting_entry_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/SingleSimCallSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/SingleSimCallSetting;->mRecordSetting:Landroid/preference/PreferenceScreen;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 272
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/phone/SingleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/android/phone/PreCheckForRunning;->deRegister()V

    .line 275
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 279
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_2

    .line 280
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 281
    .local v0, isTtsOn:Z
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_broadcast_enable"

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    .end local v0           #isTtsOn:Z
    :cond_1
    :goto_0
    return v3

    .line 282
    .restart local p2
    :cond_2
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_1

    .line 283
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 284
    .local v1, mute:Z
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_mute"

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x12e

    const/4 v3, 0x1

    .line 234
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonFdn:Landroid/preference/Preference;

    if-ne p2, v4, :cond_0

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/FdnSetting2;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v5, p0, Lcom/android/phone/SingleSimCallSetting;->mSimId:I

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 267
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 238
    :cond_0
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonVoiceMail:Landroid/preference/Preference;

    if-ne p2, v4, :cond_1

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/VoiceMailSetting;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v5, p0, Lcom/android/phone/SingleSimCallSetting;->mSimId:I

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 243
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonCallFwd:Landroid/preference/Preference;

    if-ne p2, v4, :cond_2

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v5, p0, Lcom/android/phone/SingleSimCallSetting;->mSimId:I

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 248
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonCallBar:Landroid/preference/Preference;

    if-ne p2, v4, :cond_3

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/CallBarring;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v5, p0, Lcom/android/phone/SingleSimCallSetting;->mSimId:I

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 253
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonCallAdditional:Landroid/preference/Preference;

    if-ne p2, v4, :cond_4

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v5, p0, Lcom/android/phone/SingleSimCallSetting;->mSimId:I

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 258
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_6

    .line 259
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v3

    .line 260
    .local v1, isTtsOn:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_broadcast_enable"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 262
    .end local v1           #isTtsOn:I
    :cond_6
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_8

    .line 263
    iget-object v4, p0, Lcom/android/phone/SingleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v3

    .line 264
    .local v2, mute:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_mute"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .end local v2           #mute:I
    :cond_7
    move v2, v1

    .line 263
    goto :goto_1

    :cond_8
    move v3, v1

    .line 267
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 172
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 175
    iget v6, p0, Lcom/android/phone/SingleSimCallSetting;->mSimId:I

    invoke-static {v6}, Lcom/android/phone/CallSettings;->isRadioOn(I)Z

    move-result v1

    .line 176
    .local v1, isRadioOn:Z
    if-nez v1, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 178
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonCallAdditional:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 179
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonCallFwd:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 180
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonCallBar:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 181
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonVoiceMail:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 185
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 186
    .local v0, bIccExist:Z
    if-nez v0, :cond_1

    .line 187
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonFdn:Landroid/preference/Preference;

    if-eqz v6, :cond_1

    .line 188
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 192
    :cond_1
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mIpSetting:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_2

    .line 195
    invoke-static {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->ipCallNotSetYet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 197
    const v5, 0x7f0b02d3

    .line 205
    .local v5, summary:I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mIpSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v5}, Lcom/android/phone/SingleSimCallSetting;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    .end local v5           #summary:I
    :cond_2
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "tts_broadcast_enable"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 211
    .local v2, isTtsOn:I
    iget-object v9, p0, Lcom/android/phone/SingleSimCallSetting;->mTtsBroadCast:Landroid/preference/SwitchPreference;

    if-ne v2, v7, :cond_8

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 214
    .end local v2           #isTtsOn:I
    :cond_3
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/android/phone/SingleSimCallSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "flip_mute"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 217
    .local v3, mute:I
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mFlipMute:Landroid/preference/SwitchPreference;

    if-ne v3, v7, :cond_9

    :goto_2
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 220
    .end local v3           #mute:I
    :cond_4
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mRecordSetting:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_5

    .line 222
    invoke-static {p0}, Lcom/android/phone/BaiduPhoneUtil;->isAutoRecordEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 223
    .local v4, recoreEnable:Z
    if-nez v4, :cond_a

    .line 224
    const v5, 0x7f0b02fa

    .line 228
    .restart local v5       #summary:I
    :goto_3
    iget-object v6, p0, Lcom/android/phone/SingleSimCallSetting;->mRecordSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v5}, Lcom/android/phone/SingleSimCallSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    .end local v4           #recoreEnable:Z
    .end local v5           #summary:I
    :cond_5
    return-void

    .line 198
    :cond_6
    invoke-static {p0}, Lcom/android/phone/SingleSimCallSetting$IpCallSetting;->isIpCallSwitchCheckedNow(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 200
    const v5, 0x7f0b02d4

    .restart local v5       #summary:I
    goto :goto_0

    .line 203
    .end local v5           #summary:I
    :cond_7
    const v5, 0x7f0b02d5

    .restart local v5       #summary:I
    goto :goto_0

    .end local v5           #summary:I
    .restart local v2       #isTtsOn:I
    :cond_8
    move v6, v8

    .line 211
    goto :goto_1

    .end local v2           #isTtsOn:I
    .restart local v3       #mute:I
    :cond_9
    move v7, v8

    .line 217
    goto :goto_2

    .line 226
    .end local v3           #mute:I
    .restart local v4       #recoreEnable:Z
    :cond_a
    const v5, 0x7f0b02f9

    .restart local v5       #summary:I
    goto :goto_3
.end method
