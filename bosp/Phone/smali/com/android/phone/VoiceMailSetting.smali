.class public Lcom/android/phone/VoiceMailSetting;
.super Landroid/preference/PreferenceActivity;
.source "VoiceMailSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;,
        Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

.field private static final BUTTON_CALL_ADDITIONAL_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_CALL_BAR_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_CALL_COST_KEY:Ljava/lang/String; = "button_aoc_expand_key"

.field private static final BUTTON_CALL_FWD_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_CDMA_OPTIONS:Ljava/lang/String; = "button_cdma_more_expand_key"

.field private static final BUTTON_CELL_BROADCAST_KEY:Ljava/lang/String; = "cbsettings"

.field private static final BUTTON_DTMF_KEY:Ljava/lang/String; = "button_dtmf_settings"

.field private static final BUTTON_ENABLE_CELLBROADCAST:Ljava/lang/String; = "enable_cellBroadcast"

.field private static final BUTTON_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final BUTTON_GSM_UMTS_OPTIONS:Ljava/lang/String; = "button_gsm_more_expand_key"

.field private static final BUTTON_HAC_KEY:Ljava/lang/String; = "button_hac_key"

.field private static final BUTTON_RETRY_KEY:Ljava/lang/String; = "button_auto_retry_key"

.field private static final BUTTON_SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options_key"

.field private static final BUTTON_SIP_CALL_OPTIONS_WIFI_ONLY:Ljava/lang/String; = "sip_call_options_wifi_only_key"

.field private static final BUTTON_TTY_KEY:Ljava/lang/String; = "button_tty_mode_key"

.field private static final BUTTON_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail_key"

.field private static final BUTTON_VOICEMAIL_PROVIDER_KEY:Ljava/lang/String; = "button_voicemail_provider_key"

.field private static final BUTTON_VOICEMAIL_SETTING_KEY:Ljava/lang/String; = "button_voicemail_setting_key"

.field private static final BUTTON_VOICE_MAIL_KEY:Ljava/lang/String; = "button_voicemail_category_key"

.field private static final BUTTON_VT_ADVANCED_KEY:Ljava/lang/String; = "button_vt_advanced_expand_key"

.field private static final DBG:Z = false

.field public static final DEFAULT_VM_PROVIDER_KEY:Ljava/lang/String; = "1"

.field public static final DEFAULT_VM_PROVIDER_KEY2:Ljava/lang/String; = "2"

.field static final DTMF_TONE_TYPE_LONG:I = 0x1

.field static final DTMF_TONE_TYPE_NORMAL:I = 0x0

.field private static final EVENT_FORWARDING_CHANGED:I = 0x1f5

.field private static final EVENT_FORWARDING_GET_COMPLETED:I = 0x1f6

.field private static final EVENT_VOICEMAIL_CHANGED:I = 0x1f4

.field static final FORWARDING_SETTINGS_REASONS:[I = null

.field public static final FWD_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumber"

.field public static final FWD_NUMBER_TIME_EXTRA:Ljava/lang/String; = "com.android.phone.ForwardingNumberTime"

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo; = null

.field public static final FWD_SETTINGS_LENGTH_TAG:Ljava/lang/String; = "#Length"

.field public static final FWD_SETTINGS_TAG:Ljava/lang/String; = "#FWDSettings"

.field public static final FWD_SETTING_NUMBER:Ljava/lang/String; = "#Number"

.field public static final FWD_SETTING_REASON:Ljava/lang/String; = "#Reason"

.field public static final FWD_SETTING_STATUS:Ljava/lang/String; = "#Status"

.field public static final FWD_SETTING_TAG:Ljava/lang/String; = "#Setting"

.field public static final FWD_SETTING_TIME:Ljava/lang/String; = "#Time"

.field private static final FW_GET_RESPONSE_ERROR:I = 0x1f6

.field private static final FW_SET_RESPONSE_ERROR:I = 0x1f5

.field public static final HAC_KEY:Ljava/lang/String; = "HACSetting"

.field public static final HAC_VAL_OFF:Ljava/lang/String; = "OFF"

.field public static final HAC_VAL_ON:Ljava/lang/String; = "ON"

.field public static final IGNORE_PROVIDER_EXTRA:Ljava/lang/String; = "com.android.phone.ProviderToIgnore"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/VoiceMailSetting"

.field private static final MSG_FW_GET_EXCEPTION:I = 0x192

.field private static final MSG_FW_SET_EXCEPTION:I = 0x191

.field private static final MSG_OK:I = 0x64

.field private static final MSG_VM_EXCEPTION:I = 0x190

.field private static final MSG_VM_NOCHANGE:I = 0x2bc

.field private static final MSG_VM_OK:I = 0x258

.field private static final NUM_PROJECTION:[Ljava/lang/String; = null

.field public static final SIGNOUT_EXTRA:Ljava/lang/String; = "com.android.phone.Signout"

.field private static final SIP_SETTINGS_CATEGORY_KEY:Ljava/lang/String; = "sip_settings_category_key"

.field private static final VM_NOCHANGE_ERROR:I = 0x190

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME:Ljava/lang/String; = "vm_numbers"

.field private static final VM_NUMBERS_SHARED_PREFERENCES_NAME2:Ljava/lang/String; = "vm_numbers_sim2"

.field public static final VM_NUMBER_EXTRA:Ljava/lang/String; = "com.android.phone.VoicemailNumber"

.field public static final VM_NUMBER_TAG:Ljava/lang/String; = "#VMNumber"

.field private static final VM_RESPONSE_ERROR:I = 0x1f4

.field private static final VOICEMAIL_DIALOG_CONFIRM:I = 0x258

.field private static final VOICEMAIL_FWD_READING_DIALOG:I = 0x25a

.field private static final VOICEMAIL_FWD_SAVING_DIALOG:I = 0x259

.field private static final VOICEMAIL_PREF_ID:I = 0x1

.field private static final VOICEMAIL_PROVIDER_CFG_ID:I = 0x2

.field private static final VOICEMAIL_REVERTING_DIALOG:I = 0x25b

.field static final preferredTtyMode:I


# instance fields
.field private initTitle:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonCallAdditional:Landroid/preference/Preference;

.field private mButtonCallBar:Landroid/preference/Preference;

.field private mButtonCallCost:Landroid/preference/Preference;

.field private mButtonCallFwd:Landroid/preference/Preference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonFDN:Landroid/preference/Preference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mButtonVTAdvanced:Landroid/preference/Preference;

.field mChangingVMorFwdDueToProviderChange:Z

.field private mContactListIntent:Landroid/content/Intent;

.field mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSimId:I

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field mVMChangeCompletedSuccesfully:Z

.field mVMOrFwdSetError:I

.field mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mVoicemail:Landroid/preference/Preference;

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/VoiceMailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 254
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 192
    iput-object v1, p0, Lcom/android/phone/VoiceMailSetting;->initTitle:Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/android/phone/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;-><init>(Lcom/android/phone/VoiceMailSetting;Lcom/android/phone/VoiceMailSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    iput-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemail:Landroid/preference/Preference;

    .line 340
    iput-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 346
    iput-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 353
    iput-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 358
    iput-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 363
    iput-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 368
    iput v2, p0, Lcom/android/phone/VoiceMailSetting;->mCurrentDialogId:I

    .line 374
    iput-boolean v2, p0, Lcom/android/phone/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 380
    iput-boolean v2, p0, Lcom/android/phone/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/phone/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 392
    iput-boolean v2, p0, Lcom/android/phone/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    .line 398
    iput v2, p0, Lcom/android/phone/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    .line 434
    iput-boolean v2, p0, Lcom/android/phone/VoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 902
    new-instance v0, Lcom/android/phone/VoiceMailSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceMailSetting$1;-><init>(Lcom/android/phone/VoiceMailSetting;)V

    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1117
    new-instance v0, Lcom/android/phone/VoiceMailSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceMailSetting$2;-><init>(Lcom/android/phone/VoiceMailSetting;)V

    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1177
    new-instance v0, Lcom/android/phone/VoiceMailSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceMailSetting$3;-><init>(Lcom/android/phone/VoiceMailSetting;)V

    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    .line 2026
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/VoiceMailSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/VoiceMailSetting;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/VoiceMailSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/VoiceMailSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/VoiceMailSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/phone/VoiceMailSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/VoiceMailSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1215
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1216
    const/4 v2, 0x1

    .line 1228
    .local v2, result:Z
    :cond_0
    :goto_0
    return v2

    .line 1220
    .end local v2           #result:Z
    :cond_1
    const/4 v2, 0x1

    .line 1221
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1222
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1223
    const/4 v2, 0x0

    .line 1224
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1234
    const/4 v3, 0x0

    .line 1235
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1237
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1238
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1239
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1240
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1241
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1242
    if-nez v3, :cond_1

    .line 1243
    const-string v3, ""

    .line 1248
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1255
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1256
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1258
    const-string v0, ""

    .line 1262
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 1989
    :goto_0
    return-void

    .line 1985
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 820
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/VoiceMailSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1992
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1994
    .local v0, key:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1996
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1997
    .local v1, sp:Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "button_voicemail_provider_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2001
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2003
    iget v2, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    if-nez v2, :cond_3

    .line 2005
    if-eqz v0, :cond_2

    .line 2014
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 2005
    .restart local v0       #key:Ljava/lang/String;
    :cond_2
    const-string v0, "1"

    goto :goto_0

    .line 2009
    :cond_3
    if-nez v0, :cond_1

    const-string v0, "2"

    goto :goto_0

    .line 2014
    :cond_4
    if-nez v0, :cond_1

    const-string v0, "1"

    goto :goto_0
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .locals 4

    .prologue
    .line 1665
    const-string v3, "sip_call_options_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/VoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1667
    .local v1, wifiAnd3G:Landroid/preference/ListPreference;
    const-string v3, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/VoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 1669
    .local v2, wifiOnly:Landroid/preference/ListPreference;
    const-string v3, "sip_settings_category_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/VoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 1671
    .local v0, sipSettings:Landroid/preference/PreferenceGroup;
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1672
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1676
    .end local v2           #wifiOnly:Landroid/preference/ListPreference;
    :goto_0
    return-object v2

    .line 1675
    .restart local v2       #wifiOnly:Landroid/preference/ListPreference;
    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v2, v1

    .line 1676
    goto :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 5

    .prologue
    .line 1269
    const/4 v2, 0x1

    .line 1270
    .local v2, success:Z
    const/4 v1, 0x0

    .line 1271
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1272
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1273
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1274
    if-eqz v0, :cond_0

    .line 1275
    const/4 v2, 0x0

    .line 1276
    const/4 v1, 0x1

    .line 1279
    :cond_0
    if-eqz v2, :cond_1

    .line 1280
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1281
    if-eqz v0, :cond_1

    .line 1282
    const/4 v2, 0x0

    .line 1285
    :cond_1
    if-eqz v2, :cond_2

    .line 1287
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/VoiceMailSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1288
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->updateVoiceNumberField()V

    .line 1298
    :goto_0
    return-void

    .line 1290
    :cond_2
    if-eqz v1, :cond_3

    .line 1291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change FW failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1292
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/VoiceMailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    .line 1294
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change VM failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1295
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/VoiceMailSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 1313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1314
    invoke-direct {p0, p1}, Lcom/android/phone/VoiceMailSetting;->showVMDialog(I)V

    .line 1315
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;)V

    .line 785
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    .line 1301
    iget-boolean v0, p0, Lcom/android/phone/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1302
    iput p1, p0, Lcom/android/phone/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 1303
    iput-boolean v1, p0, Lcom/android/phone/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1304
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    .line 1310
    :goto_0
    return-void

    .line 1307
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1308
    invoke-direct {p0, p1}, Lcom/android/phone/VoiceMailSetting;->showVMDialog(I)V

    .line 1309
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 1012
    const/4 v4, 0x0

    .line 1013
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 1014
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1015
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 1016
    move-object v4, v2

    .line 1021
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_0
    return-object v4

    .line 1014
    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1       #i$:I
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 23

    .prologue
    .line 1737
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "callFeaturesSettings, initVoiceMailProviders: simId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 1738
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1740
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 1742
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "vm_numbers"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 1762
    :goto_0
    const/4 v14, 0x0

    .line 1763
    .local v14, providerToIgnore:Ljava/lang/String;
    const-string v19, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1765
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1766
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "com.android.phone.ProviderToIgnore"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1769
    :cond_0
    if-eqz v14, :cond_1

    .line 1770
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/VoiceMailSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    .line 1774
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->clear()V

    .line 1777
    const v19, 0x7f0b009a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/phone/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1779
    .local v10, myCarrier:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1781
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    const-string v20, "1"

    new-instance v21, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/VoiceMailSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1799
    .local v12, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1800
    .local v7, intent:Landroid/content/Intent;
    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1801
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v7, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 1802
    .local v15, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v9, v19, 0x1

    .line 1806
    .local v9, len:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_7

    .line 1807
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1808
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1809
    .local v3, currentActivityInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/VoiceMailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1811
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1813
    add-int/lit8 v9, v9, -0x1

    .line 1806
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1748
    .end local v3           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #i:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #len:I
    .end local v10           #myCarrier:Ljava/lang/String;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #providerToIgnore:Ljava/lang/String;
    .end local v15           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "vm_numbers_sim2"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    goto/16 :goto_0

    .line 1755
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "vm_numbers"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    goto/16 :goto_0

    .line 1787
    .restart local v10       #myCarrier:Ljava/lang/String;
    .restart local v14       #providerToIgnore:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    const-string v20, "2"

    new-instance v21, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1792
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    const-string v20, "1"

    new-instance v21, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1816
    .restart local v3       #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v6       #i:I
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #key:Ljava/lang/String;
    .restart local v9       #len:I
    .restart local v12       #pm:Landroid/content/pm/PackageManager;
    .restart local v15       #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16       #ri:Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1817
    .local v11, nameForDisplay:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1818
    .local v13, providerIntent:Landroid/content/Intent;
    const-string v19, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1819
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;-><init>(Lcom/android/phone/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1829
    .end local v3           #currentActivityInfo:Landroid/content/pm/ActivityInfo;
    .end local v8           #key:Ljava/lang/String;
    .end local v11           #nameForDisplay:Ljava/lang/String;
    .end local v13           #providerIntent:Landroid/content/Intent;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_7
    new-array v4, v9, [Ljava/lang/String;

    .line 1830
    .local v4, entries:[Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1831
    .local v18, values:[Ljava/lang/String;
    const/16 v19, 0x0

    aput-object v10, v4, v19

    .line 1833
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1835
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 1837
    const/16 v19, 0x0

    const-string v20, "1"

    aput-object v20, v18, v19

    .line 1850
    :goto_4
    const/4 v5, 0x1

    .line 1851
    .local v5, entryIdx:I
    const/4 v6, 0x0

    :goto_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_b

    .line 1852
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/VoiceMailSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1853
    .restart local v8       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 1851
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1841
    .end local v5           #entryIdx:I
    .end local v8           #key:Ljava/lang/String;
    :cond_8
    const/16 v19, 0x0

    const-string v20, "2"

    aput-object v20, v18, v19

    goto :goto_4

    .line 1846
    :cond_9
    const/16 v19, 0x0

    const-string v20, "1"

    aput-object v20, v18, v19

    goto :goto_4

    .line 1856
    .restart local v5       #entryIdx:I
    .restart local v8       #key:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v4, v5

    .line 1857
    aput-object v8, v18, v5

    .line 1858
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1861
    .end local v8           #key:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1864
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1865
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 1867
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1868
    .local v17, sp:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "button_voicemail_provider_key"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1871
    .end local v17           #sp:Landroid/content/SharedPreferences;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/VoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1872
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1689
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .parameter "oldInfo"
    .parameter "newInfo"

    .prologue
    .line 1026
    const/4 v0, 0x1

    .line 1027
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1030
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1031
    const/4 v0, 0x0

    .line 1034
    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;
    .locals 12
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 1943
    iget-object v7, p0, Lcom/android/phone/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#VMNumber"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1945
    .local v6, vmNumberSetting:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1974
    :goto_0
    return-object v5

    .line 1950
    :cond_0
    sget-object v0, Lcom/android/phone/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1951
    .local v0, cfi:[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1952
    .local v1, fwdKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Length"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1953
    .local v2, fwdLen:I
    if-lez v2, :cond_1

    .line 1954
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1955
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v0

    if-ge v3, v7, :cond_1

    .line 1956
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1957
    .local v4, settingKey:Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v7, v0, v3

    .line 1958
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1960
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Reason"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1963
    aget-object v7, v0, v3

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1964
    aget-object v7, v0, v3

    const/16 v8, 0x91

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1965
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Number"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1967
    aget-object v7, v0, v3

    iget-object v8, p0, Lcom/android/phone/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#Time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x14

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1955
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1972
    .end local v3           #i:I
    .end local v4           #settingKey:Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 1974
    .local v5, settings:Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1694
    const-string v0, "Settings/VoiceMailSetting"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter "ai"

    .prologue
    .line 1875
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;)V
    .locals 9
    .parameter "key"
    .parameter "newSettings"

    .prologue
    .line 1905
    iget-object v7, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v7, :cond_1

    .line 1932
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/VoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 1909
    .local v0, curSettings:Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;
    invoke-virtual {p2, v0}, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1914
    iget-object v7, p0, Lcom/android/phone/VoiceMailSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1915
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#VMNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p2, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1916
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#FWDSettings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1917
    .local v3, fwdKey:Ljava/lang/String;
    iget-object v5, p2, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1918
    .local v5, s:[Lcom/android/internal/telephony/CallForwardInfo;
    sget-object v7, Lcom/android/phone/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v5, v7, :cond_2

    .line 1919
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1920
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_3

    .line 1921
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1922
    .local v6, settingKey:Ljava/lang/String;
    aget-object v2, v5, v4

    .line 1923
    .local v2, fi:Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1924
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Reason"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1925
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1926
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1920
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1929
    .end local v2           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v4           #i:I
    .end local v6           #settingKey:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Length"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1931
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 1038
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1039
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 1040
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;)V
    .locals 8
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const/16 v7, 0x1f6

    const/4 v6, 0x0

    .line 831
    iget-object v2, p2, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 833
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 834
    const-string v2, ""

    iput-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 837
    :cond_0
    iget-object v2, p2, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 843
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 845
    sget-object v2, Lcom/android/phone/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 849
    :cond_1
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v3, Lcom/android/phone/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v2, v3, :cond_2

    .line 850
    const/16 v2, 0x2bc

    invoke-direct {p0, v2}, Lcom/android/phone/VoiceMailSetting;->showVMDialog(I)V

    .line 900
    :goto_0
    return-void

    .line 854
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/phone/VoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;)V

    .line 855
    iput-boolean v6, p0, Lcom/android/phone/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 856
    iput-boolean v6, p0, Lcom/android/phone/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    .line 857
    iput v6, p0, Lcom/android/phone/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 862
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 864
    iget v2, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    if-nez v2, :cond_3

    .line 866
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 878
    .local v1, isKeySame:Z
    :goto_1
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 881
    sget-object v2, Lcom/android/phone/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 882
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v2, Lcom/android/phone/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 883
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 884
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 886
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    sget-object v3, Lcom/android/phone/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/VoiceMailSetting;->mGetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v4, v7, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCallForwardingOptionGemini(ILandroid/os/Message;I)V

    .line 882
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 870
    .end local v0           #i:I
    .end local v1           #isKeySame:Z
    :cond_3
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .restart local v1       #isKeySame:Z
    goto :goto_1

    .line 875
    .end local v1           #isKeySame:Z
    :cond_4
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .restart local v1       #isKeySame:Z
    goto :goto_1

    .line 891
    .restart local v0       #i:I
    :cond_5
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/VoiceMailSetting;->mGetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v4, v7, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_3

    .line 896
    :cond_6
    const/16 v2, 0x25a

    invoke-direct {p0, v2}, Lcom/android/phone/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 898
    .end local v0           #i:I
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    const/16 v13, 0x1f5

    const/4 v10, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1045
    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1046
    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1047
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_4

    .line 1048
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->resetForwardingChangeState()V

    .line 1049
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v9, v0, :cond_5

    .line 1050
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v8, v0, v9

    .line 1052
    .local v8, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v8, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/VoiceMailSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/phone/VoiceMailSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v7

    .line 1055
    .local v7, doUpdate:Z
    if-eqz v7, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, v8, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v12, :cond_1

    move v1, v10

    :goto_1
    iget v2, v8, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v8, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v8, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v5, v13, v9, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCallForwardingOptionGemini(IILjava/lang/String;ILandroid/os/Message;I)V

    .line 1085
    :cond_0
    :goto_2
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceMailSetting;->showDialogIfForeground(I)V

    .line 1049
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v1, v11

    .line 1062
    goto :goto_1

    .line 1074
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v8, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v12, :cond_3

    move v1, v10

    :goto_3
    iget v2, v8, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v8, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v8, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v5, v13, v9, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_2

    :cond_3
    move v1, v11

    goto :goto_3

    .line 1089
    .end local v7           #doUpdate:Z
    .end local v8           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9           #i:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->setVMNumberWithCarrier()V

    .line 1091
    :cond_5
    return-void
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/phone/VoiceMailSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {p0, p1}, Lcom/android/phone/VoiceMailSetting;->showDialog(I)V

    .line 816
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .parameter "msgStatus"

    .prologue
    .line 1481
    sparse-switch p1, :sswitch_data_0

    .line 1503
    :goto_0
    return-void

    .line 1485
    :sswitch_0
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1488
    :sswitch_1
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1491
    :sswitch_2
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1494
    :sswitch_3
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1497
    :sswitch_4
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceMailSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1481
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1888
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1889
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1890
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1895
    :cond_0
    return-void

    .line 1888
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 590
    iget-boolean v0, p0, Lcom/android/phone/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_9

    .line 592
    :cond_0
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceMailSetting;->showDialogIfForeground(I)V

    .line 593
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v10

    .line 595
    .local v10, prevSettings:Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;
    if-nez v10, :cond_2

    .line 672
    .end local v10           #prevSettings:Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;
    :cond_1
    :goto_0
    return-void

    .line 598
    .restart local v10       #prevSettings:Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_3

    .line 599
    iget-object v0, v10, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    .line 603
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 605
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailAlphaTagGemini(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setVoiceMailNumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 620
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_1

    .line 622
    iget-object v9, v10, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 624
    .local v9, prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v9, :cond_1

    .line 625
    iget-object v12, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 627
    .local v12, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->resetForwardingChangeState()V

    .line 628
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    array-length v0, v9

    if-ge v8, v0, :cond_1

    .line 629
    aget-object v7, v9, v8

    .line 633
    .local v7, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/AsyncResult;

    .line 634
    .local v11, result:Landroid/os/AsyncResult;
    if-eqz v11, :cond_4

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    .line 635
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 640
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x3

    :goto_3
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v6, 0x1f5

    const/4 v13, 0x0

    invoke-virtual {v5, v6, v8, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCallForwardingOptionGemini(IILjava/lang/String;ILandroid/os/Message;I)V

    .line 628
    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 613
    .end local v7           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v8           #i:I
    .end local v9           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v11           #result:Landroid/os/AsyncResult;
    .end local v12           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_5
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 640
    .restart local v7       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v8       #i:I
    .restart local v9       #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v11       #result:Landroid/os/AsyncResult;
    .restart local v12       #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 652
    :cond_7
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x3

    :goto_5
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/VoiceMailSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v6, 0x1f5

    const/4 v13, 0x0

    invoke-virtual {v5, v6, v8, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    .line 669
    .end local v7           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v8           #i:I
    .end local v9           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v10           #prevSettings:Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;
    .end local v11           #result:Landroid/os/AsyncResult;
    .end local v12           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->onRevertDone()V

    goto/16 :goto_0
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 9
    .parameter "currentProviderSetting"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1703
    move-object v0, p1

    .line 1704
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;

    .line 1710
    .local v1, provider:Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;
    if-nez v1, :cond_0

    .line 1711
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v4, 0x7f0b0099

    invoke-virtual {p0, v4}, Lcom/android/phone/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1712
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1713
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1714
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1723
    :goto_0
    return-void

    .line 1716
    :cond_0
    iget-object v2, v1, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 1717
    .local v2, providerName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1718
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b01fb

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1720
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1721
    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, v1, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 4

    .prologue
    .line 1322
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1327
    :cond_0
    const-string v1, "Settings/VoiceMailSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceNumberField, simid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1330
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailNumberGemini(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1337
    :goto_1
    const-string v1, "Settings/VoiceMailSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceNumberField, mOldVmNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1341
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1343
    :cond_1
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1344
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1346
    .local v0, summary:Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1334
    .end local v0           #summary:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    goto :goto_1

    .line 1344
    :cond_3
    const v1, 0x7f0b01f9

    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 10
    .parameter "ar"
    .parameter "idx"

    .prologue
    const/16 v6, 0x25a

    const/4 v9, 0x0

    .line 916
    const/4 v2, 0x0

    .line 917
    .local v2, error:Ljava/lang/Throwable;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 920
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 922
    :cond_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 925
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #error:Ljava/lang/Throwable;
    check-cast v2, Ljava/lang/Throwable;

    .line 929
    .restart local v2       #error:Ljava/lang/Throwable;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v5, :cond_3

    .line 1009
    :cond_2
    :goto_0
    return-void

    .line 935
    :cond_3
    if-eqz v2, :cond_4

    .line 937
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 938
    invoke-direct {p0, v6}, Lcom/android/phone/VoiceMailSetting;->dismissDialogSafely(I)V

    .line 939
    const/16 v5, 0x192

    invoke-direct {p0, v5}, Lcom/android/phone/VoiceMailSetting;->showVMDialog(I)V

    goto :goto_0

    .line 944
    :cond_4
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v5

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 945
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 946
    .local v3, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 947
    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 948
    aget-object v3, v0, v4

    .line 952
    :cond_5
    if-nez v3, :cond_a

    .line 957
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v3           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 958
    .restart local v3       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 959
    sget-object v5, Lcom/android/phone/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v5, v5, p2

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 960
    const/4 v5, 0x1

    iput v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 969
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v3, v5, p2

    .line 972
    const/4 v1, 0x1

    .line 973
    .local v1, done:Z
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_7

    .line 974
    iget-object v5, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v5, v4

    if-nez v5, :cond_c

    .line 975
    const/4 v1, 0x0

    .line 979
    :cond_7
    if-eqz v1, :cond_2

    .line 981
    invoke-direct {p0, v6}, Lcom/android/phone/VoiceMailSetting;->dismissDialogSafely(I)V

    .line 982
    iget-boolean v5, p0, Lcom/android/phone/VoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v5, :cond_8

    .line 984
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 986
    iget v5, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    if-nez v5, :cond_d

    .line 988
    const-string v5, "1"

    new-instance v6, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/VoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;)V

    .line 1003
    :goto_4
    iput-boolean v9, p0, Lcom/android/phone/VoiceMailSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1005
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .line 946
    .end local v1           #done:Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 963
    :cond_a
    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    .line 964
    :cond_b
    iput v9, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_2

    .line 973
    .restart local v1       #done:Z
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 993
    :cond_d
    const-string v5, "2"

    new-instance v6, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/VoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;)V

    goto :goto_4

    .line 999
    :cond_e
    const-string v5, "1"

    new-instance v6, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;

    iget-object v7, p0, Lcom/android/phone/VoiceMailSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/VoiceMailSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v5, v6}, Lcom/android/phone/VoiceMailSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;)V

    goto :goto_4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 691
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_8

    .line 692
    const/4 v8, 0x0

    .line 696
    .local v8, failure:Z
    iget-boolean v12, p0, Lcom/android/phone/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 697
    .local v12, isVMProviderSettingsForced:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 699
    const/4 v14, 0x0

    .line 700
    .local v14, vmNum:Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_2

    .line 702
    const/4 v8, 0x1

    .line 730
    :cond_0
    :goto_0
    if-eqz v8, :cond_7

    .line 732
    if-eqz v12, :cond_1

    .line 733
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    .line 772
    .end local v8           #failure:Z
    .end local v12           #isVMProviderSettingsForced:Z
    .end local v14           #vmNum:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 704
    .restart local v8       #failure:Z
    .restart local v12       #isVMProviderSettingsForced:Z
    .restart local v14       #vmNum:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 706
    const/4 v8, 0x1

    goto :goto_0

    .line 708
    :cond_3
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 710
    if-eqz v12, :cond_4

    .line 712
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 714
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v13

    .line 716
    .local v13, victim:Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v11, i:Landroid/content/Intent;
    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const/high16 v1, 0x400

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 719
    invoke-virtual {p0, v11}, Lcom/android/phone/VoiceMailSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 723
    .end local v11           #i:Landroid/content/Intent;
    .end local v13           #victim:Ljava/lang/String;
    :cond_5
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 724
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 726
    :cond_6
    const/4 v8, 0x1

    goto :goto_0

    .line 739
    :cond_7
    iput-boolean v12, p0, Lcom/android/phone/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 740
    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 744
    .local v9, fwdNum:Ljava/lang/String;
    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 748
    .local v10, fwdNumTime:I
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;

    invoke-direct {v2, p0, v14, v9, v10}, Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/VoiceMailSetting;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/VoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;)V

    goto :goto_1

    .line 753
    .end local v8           #failure:Z
    .end local v9           #fwdNum:Ljava/lang/String;
    .end local v10           #fwdNumTime:I
    .end local v12           #isVMProviderSettingsForced:Z
    .end local v14           #vmNum:Ljava/lang/String;
    :cond_8
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 758
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/phone/VoiceMailSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 760
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 767
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 765
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0x1f6

    .line 1445
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1446
    packed-switch p2, :pswitch_data_0

    .line 1474
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1475
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->finish()V

    .line 1477
    :cond_1
    :goto_1
    return-void

    .line 1452
    :pswitch_1
    iget v0, p0, Lcom/android/phone/VoiceMailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    .line 1455
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1460
    :pswitch_2
    iget v0, p0, Lcom/android/phone/VoiceMailSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2

    .line 1463
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    .line 1465
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->finish()V

    goto :goto_1

    .line 1446
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 1511
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1513
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1515
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "simId"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    .line 1518
    iget v6, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    if-eq v6, v8, :cond_0

    .line 1519
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v6

    sget-object v7, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/VoiceMailSetting;->initTitle:Ljava/lang/String;

    .line 1520
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->initTitle:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 1521
    iget v6, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-static {p0, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/phone/VoiceMailSetting;->initTitle:Ljava/lang/String;

    .line 1525
    :cond_0
    const v6, 0x7f050025

    invoke-virtual {p0, v6}, Lcom/android/phone/VoiceMailSetting;->addPreferencesFromResource(I)V

    .line 1527
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/phone/VoiceMailSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1529
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->initTitle:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1531
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->initTitle:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/phone/VoiceMailSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 1535
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 1537
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const-string v6, "button_voicemail_category_key"

    invoke-virtual {p0, v6}, Lcom/android/phone/VoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemail:Landroid/preference/Preference;

    .line 1539
    const-string v6, "button_voicemail_key"

    invoke-virtual {p0, v6}, Lcom/android/phone/VoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1540
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v6, :cond_2

    .line 1541
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v6, p0, v9, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1542
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v6, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1543
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v7, 0x7f0b018c

    invoke-virtual {v6, v7}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1545
    :cond_2
    const-string v6, "button_voicemail_provider_key"

    invoke-virtual {p0, v6}, Lcom/android/phone/VoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1547
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 1548
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1549
    const-string v6, "button_voicemail_setting_key"

    invoke-virtual {p0, v6}, Lcom/android/phone/VoiceMailSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1550
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1552
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "button_voicemail_provider_key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1554
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->initVoiceMailProviders()V

    .line 1557
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1558
    const-string v6, "button_cdma_more_expand_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1559
    .local v3, options:Landroid/preference/Preference;
    if-eqz v3, :cond_5

    .line 1560
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1561
    :cond_5
    const-string v6, "button_gsm_more_expand_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1562
    if-eqz v3, :cond_6

    .line 1563
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1565
    :cond_6
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 1566
    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_b

    .line 1567
    const-string v6, "button_fdn_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1568
    .local v1, fdnButton:Landroid/preference/Preference;
    if-eqz v1, :cond_7

    .line 1569
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1570
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1571
    const v6, 0x7f050008

    invoke-virtual {p0, v6}, Lcom/android/phone/VoiceMailSetting;->addPreferencesFromResource(I)V

    .line 1593
    .end local v1           #fdnButton:Landroid/preference/Preference;
    .end local v3           #options:Landroid/preference/Preference;
    .end local v4           #phoneType:I
    :cond_8
    :goto_0
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mContactListIntent:Landroid/content/Intent;

    .line 1594
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v7, "vnd.android.cursor.item/phone"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1601
    if-nez p1, :cond_9

    .line 1602
    const-string v6, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v6, :cond_9

    .line 1605
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-le v6, v9, :cond_e

    .line 1606
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/phone/VoiceMailSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1630
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->updateVoiceNumberField()V

    .line 1631
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/phone/VoiceMailSetting;->mVMProviderSettingsForced:Z

    .line 1639
    if-nez p1, :cond_a

    .line 1649
    :cond_a
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1653
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1656
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/VoiceMailSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1657
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 1658
    invoke-static {p0}, Lyi/support/v1/YiLaf;->removePreferencePadding(Landroid/app/Activity;)V

    .line 1659
    return-void

    .line 1573
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    .restart local v3       #options:Landroid/preference/Preference;
    .restart local v4       #phoneType:I
    :cond_b
    if-ne v4, v9, :cond_d

    .line 1577
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1579
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    .local v0, bIccExist:Z
    goto :goto_0

    .line 1583
    .end local v0           #bIccExist:Z
    :cond_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    goto :goto_0

    .line 1588
    :cond_d
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1609
    .end local v3           #options:Landroid/preference/Preference;
    .end local v4           #phoneType:I
    :cond_e
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1611
    iget v6, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    if-nez v6, :cond_f

    .line 1613
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v7, "1"

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/VoiceMailSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1614
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 1618
    :cond_f
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v7, "2"

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/VoiceMailSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1619
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v7, "2"

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 1622
    :cond_10
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v7, "1"

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/VoiceMailSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1623
    iget-object v6, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/16 v9, 0x25b

    const/16 v8, 0x259

    const/4 v7, 0x0

    const v6, 0x7f0b008f

    .line 1367
    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_0

    const/16 v5, 0x190

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f5

    if-eq p1, v5, :cond_0

    const/16 v5, 0x1f6

    if-eq p1, v5, :cond_0

    const/16 v5, 0x258

    if-ne p1, v5, :cond_1

    .line 1371
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1374
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b0087

    .line 1375
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_0

    .line 1406
    const v3, 0x7f0b008c

    .line 1409
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1413
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1414
    invoke-virtual {p0, v3}, Lcom/android/phone/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1415
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1416
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1417
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1420
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1437
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_1
    return-object v1

    .line 1377
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_0
    const v3, 0x7f0b0094

    .line 1378
    .restart local v3       #msgId:I
    const v4, 0x7f0b005e

    .line 1380
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1385
    .end local v3           #msgId:I
    :sswitch_1
    const v3, 0x7f0b0098

    .line 1386
    .restart local v3       #msgId:I
    const v4, 0x7f0b005e

    .line 1388
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1391
    .end local v3           #msgId:I
    :sswitch_2
    const v3, 0x7f0b0095

    .line 1393
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1396
    .end local v3           #msgId:I
    :sswitch_3
    const v3, 0x7f0b0096

    .line 1398
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1401
    .end local v3           #msgId:I
    :sswitch_4
    const v3, 0x7f0b0097

    .line 1402
    .restart local v3       #msgId:I
    const v5, 0x7f0b01f4

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1403
    const v5, 0x7f0b01f5

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1423
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x25a

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    .line 1425
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1426
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0b0086

    invoke-virtual {p0, v5}, Lcom/android/phone/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1427
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1428
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1429
    if-ne p1, v8, :cond_3

    const v5, 0x7f0b0089

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/phone/VoiceMailSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f0b008a

    goto :goto_2

    :cond_4
    const v5, 0x7f0b0088

    goto :goto_2

    .line 1437
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_5
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_1

    .line 1375
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 2022
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 2023
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceMailSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2024
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 2
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 522
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    instance-of v1, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 526
    move-object v0, p1

    .line 528
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 540
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->updateVoiceNumberField()V

    move-object v1, v2

    .line 570
    :goto_0
    return-object v1

    .line 550
    :cond_0
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v3, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailNumberGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, vmDisplay:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 563
    goto :goto_0

    .line 556
    .end local v0           #vmDisplay:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #vmDisplay:Ljava/lang/String;
    goto :goto_1

    .line 569
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ongetDefaultnumber, vmDisplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/VoiceMailSetting;->log(Ljava/lang/String;)V

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b005f

    invoke-virtual {p0, v2}, Lcom/android/phone/VoiceMailSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 2040
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2041
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2042
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->finish()V

    .line 2043
    const/4 v1, 0x1

    .line 2045
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 424
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VoiceMailSetting;->mForeground:Z

    .line 426
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    .line 468
    iget-object v5, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, currentProviderKey:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    move-object v2, p2

    .line 471
    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, newProviderKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 515
    .end local v0           #currentProviderKey:Ljava/lang/String;
    .end local v2           #newProviderKey:Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 480
    .restart local v0       #currentProviderKey:Ljava/lang/String;
    .restart local v2       #newProviderKey:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 482
    invoke-virtual {p0}, Lcom/android/phone/VoiceMailSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 484
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 485
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button_voicemail_provider_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/phone/VoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 491
    iput-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 493
    invoke-direct {p0, v2}, Lcom/android/phone/VoiceMailSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;

    move-result-object v3

    .line 502
    .local v3, newProviderSettings:Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;
    if-nez v3, :cond_3

    .line 505
    iput-boolean v7, p0, Lcom/android/phone/VoiceMailSetting;->mVMProviderSettingsForced:Z

    goto :goto_0

    .line 510
    :cond_3
    iput-boolean v7, p0, Lcom/android/phone/VoiceMailSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 511
    invoke-direct {p0, v2, v3}, Lcom/android/phone/VoiceMailSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/VoiceMailSetting$VoiceMailProviderSettings;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 443
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemail:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/MultipleSimActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v3, "PreferenceScreen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    sget-object v2, Lcom/android/phone/MultipleSimActivity;->targetClassKey:Ljava/lang/String;

    const-string v3, "com.android.phone.VoiceMailSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceMailSetting;->startActivity(Landroid/content/Intent;)V

    .line 456
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 450
    :cond_0
    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_1

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 451
    const-string v2, "====="

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/VoiceMailSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 456
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1360
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1361
    iput p1, p0, Lcom/android/phone/VoiceMailSetting;->mCurrentDialogId:I

    .line 1362
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1682
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1684
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->updateVoiceNumberField()V

    .line 1685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VoiceMailSetting;->mForeground:Z

    .line 1686
    return-void
.end method

.method onRevertDone()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceMailSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 678
    invoke-direct {p0}, Lcom/android/phone/VoiceMailSetting;->updateVoiceNumberField()V

    .line 679
    iget v0, p0, Lcom/android/phone/VoiceMailSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 680
    iget v0, p0, Lcom/android/phone/VoiceMailSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/VoiceMailSetting;->showVMDialog(I)V

    .line 681
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/VoiceMailSetting;->mVMOrFwdSetError:I

    .line 683
    :cond_0
    return-void
.end method

.method setVMNumberWithCarrier()V
    .locals 5

    .prologue
    const/16 v4, 0x1f4

    .line 1097
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailAlphaTagGemini(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/VoiceMailSetting;->mSimId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setVoiceMailNumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 1112
    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/VoiceMailSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VoiceMailSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/VoiceMailSetting;->mSetOptionComplete:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 577
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 579
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 585
    :goto_0
    return-void

    .line 584
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
