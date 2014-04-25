.class public Lcom/android/phone/CallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallFeaturesSetting$IpCallSetting;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

.field private static final AUTO_IP_CALL_SETTING:Ljava/lang/String; = "ip_call_setting_entry_key"

.field private static final BUTTON_CALL_ADDITIONAL_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_CALL_BAR_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_CALL_FWD_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_CALL_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail_key"

.field private static final BUTTON_IP_CALL_SETTING_KEY:Ljava/lang/String; = "button_ip_call_setting_key"

.field private static final BUTTON_IP_ENABLE:Ljava/lang/String; = "button_ip_enable"

.field private static final BUTTON_OTHERS_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final CALL_SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.android.phone.SingleSimCallSetting"

.field private static final DBG:Z = true

.field static final DTMF_TONE_TYPE_LONG:I = 0x1

.field static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final HAC_KEY:Ljava/lang/String; = "HACSetting"

.field public static final HAC_VAL_OFF:Ljava/lang/String; = "OFF"

.field public static final HAC_VAL_ON:Ljava/lang/String; = "ON"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallFeaturesSetting"

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field private static localSimId:I

.field private static mContext:Landroid/content/Context;


# instance fields
.field private SUB_TITLE_NAME:Ljava/lang/String;

.field private isOnlyOneSim:Z

.field private is_voice:Z

.field private mButtonCallAdditional:Landroid/preference/Preference;

.field private mButtonCallBar:Landroid/preference/Preference;

.field private mButtonCallFwd:Landroid/preference/Preference;

.field private mButtonFdn:Landroid/preference/Preference;

.field private mButtonIpPrefix:Landroid/preference/Preference;

.field private mButtonVoiceMail:Landroid/preference/Preference;

.field private mIpSetting:Landroid/preference/PreferenceScreen;

.field private mSimId:I

.field private preCfr:Lcom/android/phone/PreCheckForRunning;

.field private sub_title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallFeaturesSetting;->localSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 102
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    .line 104
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->isOnlyOneSim:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 106
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->is_voice:Z

    .line 107
    const-string v0, "sub_title_name"

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->SUB_TITLE_NAME:Ljava/lang/String;

    .line 320
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/android/phone/CallFeaturesSetting;->localSimId:I

    return v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const v8, 0x7f0b0061

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.SingleSimCallSetting"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->startActivity(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    .line 176
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 131
    :cond_0
    const v3, 0x7f050024

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 132
    const v3, 0x7f050011

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 135
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "button_more_expand_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallAdditional:Landroid/preference/Preference;

    .line 136
    const-string v3, "button_cf_expand_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallFwd:Landroid/preference/Preference;

    .line 137
    const-string v3, "button_cb_expand_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallBar:Landroid/preference/Preference;

    .line 138
    const-string v3, "button_voicemail_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonVoiceMail:Landroid/preference/Preference;

    .line 140
    const-string v3, "button_fdn_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonFdn:Landroid/preference/Preference;

    .line 141
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "simId"

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/phone/CallFeaturesSetting;->localSimId:I

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "ISVT"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->is_voice:Z

    .line 143
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->sub_title:Ljava/lang/String;

    .line 144
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->sub_title:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 145
    sget v3, Lcom/android/phone/CallFeaturesSetting;->localSimId:I

    invoke-static {p0, v3}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->sub_title:Ljava/lang/String;

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->sub_title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    :goto_1
    new-instance v3, Lcom/android/phone/PreCheckForRunning;

    invoke-direct {v3, p0}, Lcom/android/phone/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 155
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 156
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 159
    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->isOnlyOneSim:Z

    .line 160
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v3, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    .line 162
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->isOnlyOneSim:Z

    if-nez v3, :cond_3

    move v3, v4

    :goto_2
    iput-boolean v3, v6, Lcom/android/phone/PreCheckForRunning;->byPass:Z

    .line 172
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :goto_3
    const-string v3, "ip_call_setting_entry_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mIpSetting:Landroid/preference/PreferenceScreen;

    .line 173
    sput-object p0, Lcom/android/phone/CallFeaturesSetting;->mContext:Landroid/content/Context;

    .line 174
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 175
    invoke-static {p0}, Lyi/support/v1/YiLaf;->removePreferencePadding(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 148
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->sub_title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_3
    move v3, v5

    .line 162
    goto :goto_2

    .line 164
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_4
    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->isOnlyOneSim:Z

    .line 165
    iput v5, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    .line 166
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget-boolean v6, p0, Lcom/android/phone/CallFeaturesSetting;->isOnlyOneSim:Z

    if-nez v6, :cond_5

    :goto_4
    iput-boolean v4, v3, Lcom/android/phone/PreCheckForRunning;->byPass:Z

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 311
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/android/phone/PreCheckForRunning;->deRegister()V

    .line 314
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 739
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 740
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    .line 742
    const/4 v1, 0x1

    .line 744
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x12e

    const/4 v1, 0x1

    .line 229
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v3

    if-nez v3, :cond_5

    .line 231
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonFdn:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FdnSetting2;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 306
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 235
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonVoiceMail:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/VoiceMailSetting;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 240
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallFwd:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 245
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallBar:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/CallBarring;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 250
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallAdditional:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    move v1, v2

    .line 256
    goto :goto_0

    .line 258
    :cond_5
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonFdn:Landroid/preference/Preference;

    if-ne p2, v3, :cond_6

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FdnSetting2;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "simId"

    sget v3, Lcom/android/phone/CallFeaturesSetting;->localSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v2, "ISVT"

    iget-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->is_voice:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->SUB_TITLE_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto/16 :goto_0

    .line 266
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonVoiceMail:Landroid/preference/Preference;

    if-ne p2, v3, :cond_7

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/VoiceMailSetting;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "simId"

    sget v3, Lcom/android/phone/CallFeaturesSetting;->localSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v2, "ISVT"

    iget-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->is_voice:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->SUB_TITLE_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto/16 :goto_0

    .line 275
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallFwd:Landroid/preference/Preference;

    if-ne p2, v3, :cond_8

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "simId"

    sget v3, Lcom/android/phone/CallFeaturesSetting;->localSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    const-string v2, "ISVT"

    iget-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->is_voice:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->SUB_TITLE_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto/16 :goto_0

    .line 284
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallBar:Landroid/preference/Preference;

    if-ne p2, v3, :cond_9

    .line 285
    const-string v2, "Settings/CallFeaturesSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick , call barring key , simId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/CallBarring;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "simId"

    sget v3, Lcom/android/phone/CallFeaturesSetting;->localSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v2, "ISVT"

    iget-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->is_voice:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->SUB_TITLE_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto/16 :goto_0

    .line 294
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallAdditional:Landroid/preference/Preference;

    if-ne p2, v3, :cond_a

    .line 295
    const-string v2, "Settings/CallFeaturesSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick , call cost key , simId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "simId"

    sget v3, Lcom/android/phone/CallFeaturesSetting;->localSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v2, "ISVT"

    iget-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->is_voice:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->SUB_TITLE_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v5}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto/16 :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_a
    move v1, v2

    .line 306
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 180
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 183
    iget-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->isOnlyOneSim:Z

    if-eqz v4, :cond_0

    .line 184
    iget v4, p0, Lcom/android/phone/CallFeaturesSetting;->mSimId:I

    invoke-static {v4}, Lcom/android/phone/CallSettings;->isRadioOn(I)Z

    move-result v2

    .line 185
    .local v2, isRadioOn:Z
    if-nez v2, :cond_0

    .line 186
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 187
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallAdditional:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 188
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallFwd:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 189
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCallBar:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 190
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonVoiceMail:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 195
    .end local v2           #isRadioOn:Z
    :cond_0
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 196
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 197
    .local v1, insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 209
    .end local v1           #insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mIpSetting:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    .line 212
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->ipCallNotSetYet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 214
    const v3, 0x7f0b02d3

    .line 222
    .local v3, summary:I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mIpSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    .end local v3           #summary:I
    :cond_2
    return-void

    .line 201
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 202
    .local v0, bIccExist:Z
    if-nez v0, :cond_1

    .line 203
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonFdn:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 204
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonFdn:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 215
    .end local v0           #bIccExist:Z
    :cond_4
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting$IpCallSetting;->isIpCallSwitchCheckedNow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 217
    const v3, 0x7f0b02d4

    .restart local v3       #summary:I
    goto :goto_1

    .line 220
    .end local v3           #summary:I
    :cond_5
    const v3, 0x7f0b02d5

    .restart local v3       #summary:I
    goto :goto_1
.end method
