.class public Lcom/android/phone/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Settings$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_2G_ONLY:Ljava/lang/String; = "button_prefer_2g_key"

.field private static final BUTTON_3G_SERVICE:Ljava/lang/String; = "button_3g_service_key"

.field private static final BUTTON_APN:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_CARRIER_SEL:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final BUTTON_CDMA_LTE_DATA_SERVICE_KEY:Ljava/lang/String; = "cdma_lte_data_service_key"

.field private static final BUTTON_CDMA_OPTIONS:Ljava/lang/String; = "cdma_options_key"

.field private static final BUTTON_DATA_ENABLED_KEY:Ljava/lang/String; = "button_data_enabled_key"

.field private static final BUTTON_DATA_USAGE_KEY:Ljava/lang/String; = "button_data_usage_key"

.field private static final BUTTON_GSM_UMTS_OPTIONS:Ljava/lang/String; = "gsm_umts_options_key"

.field private static final BUTTON_PLMN_LIST:Ljava/lang/String; = "button_plmn_key"

.field private static final BUTTON_PREFERED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_roaming_key"

.field public static DATA_STATE_CHANGE_TIMEOUT:I = 0x0

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x11

.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SIM_CARD_SIGNAL:I = 0x2

.field private static final UP_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.settings.Settings$WirelessSettingsActivity"

.field private static final UP_ACTIVITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final WCDMA_CARD_SLOT:I = 0x0

.field private static _GEMINI_PHONE:Z = false

.field private static final iface:Ljava/lang/String; = "rmnet0"

.field static final preferredNetworkMode:I


# instance fields
.field private isChangeData:Z

.field private isOnlyOneSim:Z

.field private mAirplaneModeEnabled:Z

.field private mAlertDlg:Landroid/app/AlertDialog;

.field private mApnPref:Landroid/preference/PreferenceScreen;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonPreferredGSMOnly:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mCarrierSelPref:Landroid/preference/PreferenceScreen;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mDualSimMode:I

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field mH:Landroid/os/Handler;

.field private mHandler:Lcom/android/phone/Settings$MyHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsRadioOn:Z

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mOkClicked:Z

.field private mPLMNPreference:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference3GSwitch:Landroid/preference/Preference;

.field private mPreferredNetworkMode:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimId:I

.field private pd:Landroid/app/ProgressDialog;

.field private preCfr:Lcom/android/phone/PreCheckForRunning;

.field simIds:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/Settings;->_GEMINI_PHONE:Z

    .line 1245
    const/16 v0, 0x7d1

    sput v0, Lcom/android/phone/Settings;->DATA_STATE_CHANGE_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 124
    iput-object v0, p0, Lcom/android/phone/Settings;->mPreference3GSwitch:Landroid/preference/Preference;

    .line 125
    iput-object v0, p0, Lcom/android/phone/Settings;->mPLMNPreference:Landroid/preference/Preference;

    .line 128
    iput-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredGSMOnly:Landroid/preference/CheckBoxPreference;

    .line 129
    iput-object v0, p0, Lcom/android/phone/Settings;->mAlertDlg:Landroid/app/AlertDialog;

    .line 147
    iput-boolean v2, p0, Lcom/android/phone/Settings;->mIsRadioOn:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/phone/Settings;->isOnlyOneSim:Z

    .line 150
    iput-object v0, p0, Lcom/android/phone/Settings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 151
    iput-object v0, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    .line 153
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/phone/Settings;->simIds:[J

    .line 158
    iput-boolean v1, p0, Lcom/android/phone/Settings;->mAirplaneModeEnabled:Z

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/Settings;->mDualSimMode:I

    .line 161
    new-instance v0, Lcom/android/phone/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/Settings$1;-><init>(Lcom/android/phone/Settings;)V

    iput-object v0, p0, Lcom/android/phone/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1246
    iput-boolean v1, p0, Lcom/android/phone/Settings;->isChangeData:Z

    .line 1247
    new-instance v0, Lcom/android/phone/Settings$4;

    invoke-direct {v0, p0}, Lcom/android/phone/Settings$4;-><init>(Lcom/android/phone/Settings;)V

    iput-object v0, p0, Lcom/android/phone/Settings;->mH:Landroid/os/Handler;

    return-void
.end method

.method private UpdateGeneralPreferredNetworkModeSummary(I)V
    .locals 2
    .parameter "NetworkMode"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1087
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2
    .parameter "NetworkMode"

    .prologue
    .line 1090
    packed-switch p1, :pswitch_data_0

    .line 1140
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1143
    :goto_0
    return-void

    .line 1092
    :pswitch_0
    const-string v0, "OP01"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b00ad

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1101
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b00af

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1105
    :pswitch_2
    const-string v0, "OP01"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b00b1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1114
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1118
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1125
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b00b4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1120
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1131
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b00b5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1135
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1090
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1118
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/phone/Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/phone/Settings;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mIsRadioOn:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/Settings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/phone/Settings;->mSimId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/Settings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/phone/Settings;->mDualSimMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/Settings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/phone/Settings;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/phone/Settings;->update3GPrefStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/Settings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/phone/Settings;->isChangeData:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/Settings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/phone/Settings;->isChangeData:Z

    return p1
.end method

.method static synthetic access$500(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/phone/Settings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Settings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/Settings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/phone/Settings;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1265
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1267
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1269
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getPhoneType()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 639
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 640
    .local v1, it:Landroid/content/Intent;
    const-string v2, "simId"

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/Settings;->mSimId:I

    .line 641
    iget v2, p0, Lcom/android/phone/Settings;->mSimId:I

    if-ge v3, v2, :cond_0

    .line 642
    iput v4, p0, Lcom/android/phone/Settings;->mSimId:I

    .line 643
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/Settings;->mSimId:I

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v0

    .line 644
    .local v0, bIccExist:I
    const/4 v2, 0x5

    if-eq v2, v0, :cond_0

    .line 645
    iput v3, p0, Lcom/android/phone/Settings;->mSimId:I

    .line 649
    .end local v0           #bIccExist:I
    :cond_0
    sput-boolean v3, Lcom/android/phone/Settings;->_GEMINI_PHONE:Z

    .line 650
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v2, p0, Lcom/android/phone/Settings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 652
    iget v2, p0, Lcom/android/phone/Settings;->mSimId:I

    if-ne v2, v3, :cond_2

    .line 653
    iget-object v2, p0, Lcom/android/phone/Settings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/Settings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/Settings;->mIsRadioOn:Z

    .line 660
    :goto_1
    return-void

    :cond_1
    move v2, v4

    .line 653
    goto :goto_0

    .line 655
    :cond_2
    iget-object v2, p0, Lcom/android/phone/Settings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/Settings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/android/phone/Settings;->mIsRadioOn:Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method private isOrangeSupport()Z
    .locals 2

    .prologue
    .line 1275
    const-string v1, "ro.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1276
    .local v0, optr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "OP03"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1277
    const/4 v1, 0x1

    .line 1279
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupport3G(I)Z
    .locals 8
    .parameter "slot"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1209
    if-ltz p0, :cond_0

    if-le p0, v5, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return v4

    .line 1212
    :cond_1
    const-string v2, "gsm.baseband.capability"

    .line 1213
    .local v2, propertyKey:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1214
    .local v0, capability:Ljava/lang/String;
    if-ne p0, v5, :cond_2

    .line 1215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1217
    :cond_2
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1218
    if-eqz v0, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1222
    const/4 v3, 0x0

    .line 1224
    .local v3, value:I
    const/16 v6, 0x10

    :try_start_0
    invoke-static {v0, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1237
    const/4 v6, 0x3

    if-le v3, v6, :cond_0

    move v4, v5

    .line 1241
    goto :goto_0

    .line 1225
    :catch_0
    move-exception v1

    .line 1226
    .local v1, ne:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private isUsedGeneralPreference()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1191
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1203
    :goto_0
    return v5

    .line 1195
    :cond_0
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 1196
    .local v3, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v0, 0x0

    .line 1197
    .local v0, found3g:Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 1198
    .local v2, info:Landroid/provider/Telephony$SIMInfo;
    iget v6, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v6}, Lcom/android/phone/Settings;->isSupport3G(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1199
    const/4 v0, 0x1

    .line 1203
    .end local v2           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_3

    if-eqz v0, :cond_3

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1165
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-void
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 866
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    .line 867
    iget-object v0, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0089

    invoke-virtual {p0, v1}, Lcom/android/phone/Settings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v0, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 869
    iget-object v0, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 870
    iget-object v0, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 871
    return-void
.end method

.method private update3GPrefStatus()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 697
    const-string v3, "NetworkSettings"

    const-string v4, "update3GPrefStatus()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 700
    .local v0, sims:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const-string v3, "3G_SWITCH"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 702
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 703
    iget-object v2, p0, Lcom/android/phone/Settings;->mPreference3GSwitch:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 704
    iget-object v2, p0, Lcom/android/phone/Settings;->mPreference3GSwitch:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 718
    .end local v0           #sims:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 707
    .restart local v0       #sims:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Settings;->mPreference3GSwitch:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/android/phone/Settings;->mPreference3GSwitch:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 712
    :cond_2
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 714
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private updateStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 663
    const/4 v0, 0x1

    .line 664
    .local v0, isEnable:Z
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 665
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    if-ne v3, v4, :cond_5

    :cond_0
    move v0, v2

    .line 670
    :goto_0
    const-string v1, "NetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatus(), isEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v1, p0, Lcom/android/phone/Settings;->mApnPref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 672
    iget-object v1, p0, Lcom/android/phone/Settings;->mApnPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 674
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Settings;->mCarrierSelPref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    .line 675
    iget-object v1, p0, Lcom/android/phone/Settings;->mCarrierSelPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 677
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    .line 678
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 681
    :cond_3
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 682
    invoke-direct {p0}, Lcom/android/phone/Settings;->update3GPrefStatus()V

    .line 694
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v0, v1

    .line 665
    goto :goto_0

    .line 668
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v4, :cond_7

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 684
    :cond_8
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    .line 685
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 687
    :cond_9
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    .line 688
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 690
    :cond_a
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    .line 691
    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1147
    packed-switch p1, :pswitch_data_0

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1149
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1151
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 1147
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 199
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 200
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "getDataRoamingEnabledGemini do nothing"

    invoke-static {v0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 207
    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 208
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 213
    :goto_1
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 425
    invoke-static {p0}, Lcom/android/phone/ThemeUtils;->setTheme(Landroid/content/Context;)V

    .line 427
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 429
    const v9, 0x7f050018

    invoke-virtual {p0, v9}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 430
    const/4 v9, 0x0

    invoke-static {p0, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 431
    .local v1, info:Landroid/provider/Telephony$SIMInfo;
    iget-object v11, p0, Lcom/android/phone/Settings;->simIds:[J

    const/4 v12, 0x0

    if-eqz v1, :cond_7

    iget-wide v9, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    :goto_0
    aput-wide v9, v11, v12

    .line 434
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 435
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 437
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v9, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v9, p0, Lcom/android/phone/Settings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 439
    :cond_0
    new-instance v9, Lcom/android/phone/Settings$MyHandler;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    .line 440
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 441
    iget-object v9, p0, Lcom/android/phone/Settings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v9, p0, Lcom/android/phone/Settings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    new-instance v9, Lcom/android/phone/PreCheckForRunning;

    invoke-direct {v9, p0}, Lcom/android/phone/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 447
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 448
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 449
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/phone/Settings;->isOnlyOneSim:Z

    .line 450
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/provider/Telephony$SIMInfo;

    iget v9, v9, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v9, p0, Lcom/android/phone/Settings;->mSimId:I

    .line 452
    :cond_1
    iget-object v10, p0, Lcom/android/phone/Settings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget-boolean v9, p0, Lcom/android/phone/Settings;->isOnlyOneSim:Z

    if-nez v9, :cond_8

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v10, Lcom/android/phone/PreCheckForRunning;->byPass:Z

    .line 454
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 456
    .local v6, prefSet:Landroid/preference/PreferenceScreen;
    const-string v9, "button_data_enabled_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 457
    const-string v9, "button_roaming_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 458
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 462
    :cond_2
    const-string v9, "preferred_network_mode_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 464
    const-string v9, "button_data_usage_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 466
    const-string v9, "button_3g_service_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/Settings;->mPreference3GSwitch:Landroid/preference/Preference;

    .line 467
    const-string v9, "button_plmn_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/Settings;->mPLMNPreference:Landroid/preference/Preference;

    .line 468
    iget-object v9, p0, Lcom/android/phone/Settings;->mPLMNPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 470
    const-string v9, "OP01"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 475
    :cond_3
    const-string v9, "cdma_lte_data_service_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/Settings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 477
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    const/4 v2, 0x1

    .line 478
    .local v2, isLteOnCdma:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 481
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 484
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 488
    .local v7, settingsNetworkMode:I
    new-instance v9, Lcom/android/phone/CdmaOptions;

    iget-object v10, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v9, p0, v6, v10}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 489
    new-instance v9, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v9, p0, v6}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 595
    .end local v7           #settingsNetworkMode:I
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "setup_prepaid_data_service_url"

    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 599
    .local v4, missingDataServiceUrl:Z
    if-eqz v2, :cond_5

    if-eqz v4, :cond_17

    .line 600
    :cond_5
    iget-object v9, p0, Lcom/android/phone/Settings;->mLteDataServicePref:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 606
    :goto_4
    const-string v9, "throttle"

    invoke-virtual {p0, v9}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ThrottleManager;

    .line 607
    .local v8, tm:Landroid/net/ThrottleManager;
    new-instance v9, Lcom/android/phone/DataUsageListener;

    iget-object v10, p0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v9, p0, v10, v6}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 610
    new-instance v9, Lcom/android/phone/Settings$3;

    iget-object v10, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-direct {v9, p0, v10}, Lcom/android/phone/Settings$3;-><init>(Lcom/android/phone/Settings;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mContentObserver:Landroid/database/ContentObserver;

    .line 622
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mobile_data"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/phone/Settings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 627
    iget-object v9, p0, Lcom/android/phone/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/android/phone/Settings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v9, v10}, Lcom/android/phone/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 630
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_6

    .line 632
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 633
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 635
    :cond_6
    return-void

    .line 431
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v2           #isLteOnCdma:Z
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    .end local v4           #missingDataServiceUrl:Z
    .end local v6           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v8           #tm:Landroid/net/ThrottleManager;
    :cond_7
    const-wide/16 v9, 0x0

    goto/16 :goto_0

    .line 452
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 477
    .restart local v6       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 491
    .restart local v2       #isLteOnCdma:Z
    :cond_a
    if-nez v2, :cond_b

    .line 492
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 494
    :cond_b
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 495
    .local v5, phoneType:I
    const/4 v9, 0x2

    if-ne v5, v9, :cond_c

    .line 496
    new-instance v9, Lcom/android/phone/CdmaOptions;

    iget-object v10, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v9, p0, v6, v10}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 497
    if-eqz v2, :cond_4

    .line 498
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 499
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f060031

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 501
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v10, 0x7f060032

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 503
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 507
    .restart local v7       #settingsNetworkMode:I
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 511
    .end local v7           #settingsNetworkMode:I
    :cond_c
    const/4 v9, 0x1

    if-ne v5, v9, :cond_16

    .line 512
    new-instance v9, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v9, p0, v6}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v9, p0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 513
    const-string v9, "button_apn_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/phone/Settings;->mApnPref:Landroid/preference/PreferenceScreen;

    .line 516
    const-string v9, "button_prefer_2g_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredGSMOnly:Landroid/preference/CheckBoxPreference;

    .line 519
    const-string v9, "gsm_umts_preferred_network_mode_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 520
    const-string v9, "OP01"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 521
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060037

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 522
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060038

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 524
    :cond_d
    const-string v9, "button_network_mode_ex_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/Settings;->mPreferredNetworkMode:Landroid/preference/Preference;

    .line 527
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 530
    .restart local v7       #settingsNetworkMode:I
    const/4 v9, 0x2

    if-le v7, v9, :cond_e

    .line 531
    const/4 v7, 0x0

    .line 532
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    :cond_e
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 559
    const-string v9, "OP02"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "OP03"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/phone/Settings;->isSupport3G(I)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "3G_SWITCH"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 563
    :cond_f
    iget-object v9, p0, Lcom/android/phone/Settings;->mPreferredNetworkMode:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 564
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 567
    :cond_10
    invoke-direct {p0}, Lcom/android/phone/Settings;->isUsedGeneralPreference()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 568
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 573
    :goto_5
    const-string v9, "OP02"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "3G_SWITCH"

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v9

    if-nez v9, :cond_12

    .line 576
    :cond_11
    iget-object v9, p0, Lcom/android/phone/Settings;->mPreference3GSwitch:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 577
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/Settings;->mPreference3GSwitch:Landroid/preference/Preference;

    .line 580
    :cond_12
    const-string v9, "OP03"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 581
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredGSMOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 582
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredGSMOnly:Landroid/preference/CheckBoxPreference;

    .line 585
    :cond_13
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v9, :cond_14

    .line 587
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 589
    :cond_14
    const-string v9, "button_carrier_sel_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/phone/Settings;->mCarrierSelPref:Landroid/preference/PreferenceScreen;

    goto/16 :goto_3

    .line 570
    :cond_15
    iget-object v9, p0, Lcom/android/phone/Settings;->mPreferredNetworkMode:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 591
    .end local v7           #settingsNetworkMode:I
    :cond_16
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 602
    .end local v5           #phoneType:I
    .restart local v4       #missingDataServiceUrl:Z
    :cond_17
    const-string v9, "NetworkSettings"

    const-string v10, "keep ltePref"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 836
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 837
    iget-object v1, p0, Lcom/android/phone/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 838
    iget-object v1, p0, Lcom/android/phone/Settings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    if-eqz v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/android/phone/Settings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    invoke-virtual {v1}, Lcom/android/phone/PreCheckForRunning;->deRegister()V

    .line 842
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 844
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 851
    iput-object v3, p0, Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;

    .line 854
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Settings;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 855
    iget-object v1, p0, Lcom/android/phone/Settings;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 856
    iget-object v1, p0, Lcom/android/phone/Settings;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 858
    :cond_3
    iput-object v3, p0, Lcom/android/phone/Settings;->mAlertDlg:Landroid/app/AlertDialog;

    .line 861
    :cond_4
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NetworkSettings"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1171
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/android/phone/Settings;->finish()V

    .line 1184
    const/4 v1, 0x1

    .line 1186
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 830
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 831
    iget-object v0, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 832
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 882
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 885
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 887
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 888
    .local v0, buttonNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 891
    .local v2, settingsNetworkMode:I
    if-eq v0, v2, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/android/phone/Settings;->showProgressDialog()V

    .line 894
    packed-switch v0, :pswitch_data_0

    .line 920
    const/4 v1, 0x3

    .line 927
    .local v1, modemNetworkMode:I
    :goto_0
    if-nez v1, :cond_1

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 949
    .end local v0           #buttonNetworkMode:I
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_0
    :goto_1
    return v6

    .line 896
    .restart local v0       #buttonNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :pswitch_0
    const/4 v1, 0x7

    .line 897
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 899
    .end local v1           #modemNetworkMode:I
    :pswitch_1
    const/4 v1, 0x6

    .line 900
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 902
    .end local v1           #modemNetworkMode:I
    :pswitch_2
    const/4 v1, 0x5

    .line 903
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 905
    .end local v1           #modemNetworkMode:I
    :pswitch_3
    const/4 v1, 0x4

    .line 906
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 908
    .end local v1           #modemNetworkMode:I
    :pswitch_4
    const/4 v1, 0x3

    .line 909
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 911
    .end local v1           #modemNetworkMode:I
    :pswitch_5
    const/4 v1, 0x2

    .line 912
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 914
    .end local v1           #modemNetworkMode:I
    :pswitch_6
    const/4 v1, 0x1

    .line 915
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 917
    .end local v1           #modemNetworkMode:I
    :pswitch_7
    const/4 v1, 0x0

    .line 918
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 932
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    .line 934
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 938
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 939
    iget-object v3, p0, Lcom/android/phone/Settings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v4, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v4, v6}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/Settings;->mSimId:I

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto :goto_1

    .line 942
    :cond_2
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v4, v6}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 894
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 18
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mButtonDataUsage:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_1

    .line 233
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 235
    new-instance v6, Landroid/content/Intent;

    const-class v14, Lcom/android/phone/MultipleSimActivity;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v6, intent:Landroid/content/Intent;
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 238
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v15, "PreferenceScreen"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->targetClassKey:Ljava/lang/String;

    const-string v15, "com.android.phone.DataUsage"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/Settings;->mSimId:I

    const/16 v16, 0x12e

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 242
    const/4 v14, 0x1

    .line 420
    .end local v6           #intent:Landroid/content/Intent;
    :goto_0
    return v14

    .line 244
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 248
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mPLMNPreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_3

    .line 249
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 250
    new-instance v6, Landroid/content/Intent;

    const-class v14, Lcom/android/phone/MultipleSimActivity;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .restart local v6       #intent:Landroid/content/Intent;
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 253
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v15, "PreferenceScreen"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->targetClassKey:Ljava/lang/String;

    const-string v15, "com.android.phone.PLMNListPreference"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/Settings;->mSimId:I

    const/16 v16, 0x12e

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 257
    const/4 v14, 0x1

    goto :goto_0

    .line 259
    .end local v6           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 263
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mPreferredNetworkMode:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_4

    .line 265
    new-instance v6, Landroid/content/Intent;

    const-class v14, Lcom/android/phone/MultipleSimActivity;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .restart local v6       #intent:Landroid/content/Intent;
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v15, "ListPreference"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060035

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, entries:[Ljava/lang/CharSequence;
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->initArray:Ljava/lang/String;

    invoke-virtual {v6, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 269
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 270
    const-string v14, "LIST_TITLE_NAME"

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b011b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->initFeatureName:Ljava/lang/String;

    const-string v15, "NETWORK_MODE"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->initSimId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/Settings;->simIds:[J

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 273
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->initBaseKey:Ljava/lang/String;

    const-string v15, "preferred_network_mode_key@"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060036

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, entriesValue:[Ljava/lang/CharSequence;
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->initArrayValue:Ljava/lang/String;

    invoke-virtual {v6, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/Settings;->mSimId:I

    const/16 v16, 0x12e

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 278
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 281
    .end local v3           #entries:[Ljava/lang/CharSequence;
    .end local v4           #entriesValue:[Ljava/lang/CharSequence;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 283
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 284
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 286
    const-string v14, "ril.cdma.inecmmode"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 289
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/Settings;->mClickedPreference:Landroid/preference/Preference;

    .line 292
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v15, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/phone/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 296
    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 297
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_8

    .line 299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "preferred_network_mode"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 302
    .local v10, settingsNetworkMode:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 303
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 304
    .end local v10           #settingsNetworkMode:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_b

    .line 305
    const-string v14, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v14}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 310
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 311
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b00bf

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1040014

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f020172

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1040013

    move-object/from16 v0, p0

    invoke-virtual {v14, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1040009

    move-object/from16 v0, p0

    invoke-virtual {v14, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 328
    :goto_1
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 321
    :cond_9
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_1

    .line 325
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_1

    .line 329
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_f

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/Settings;->isOrangeSupport()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 332
    const v9, 0x7f0b0368

    .line 334
    .local v9, resId:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_d

    const/4 v7, 0x1

    .line 335
    .local v7, isCheckedBefore:Z
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Data enable button old status is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 336
    if-eqz v7, :cond_c

    .line 337
    const v9, 0x7f0b0369

    .line 339
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 340
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1040014

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1080027

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1040013

    new-instance v16, Lcom/android/phone/Settings$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/Settings$2;-><init>(Lcom/android/phone/Settings;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1040009

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/Settings;->mAlertDlg:Landroid/app/AlertDialog;

    .line 368
    .end local v7           #isCheckedBefore:Z
    .end local v9           #resId:I
    :goto_3
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 334
    .restart local v9       #resId:I
    :cond_d
    const/4 v7, 0x0

    goto :goto_2

    .line 360
    .end local v9           #resId:I
    :cond_e
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/Settings;->isChangeData:Z

    .line 361
    const-string v14, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v14}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 362
    const-string v14, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 363
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/Settings;->showProgressDialog()V

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    invoke-virtual {v2, v14}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 365
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mH:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/Settings;->mH:Landroid/os/Handler;

    sget v16, Lcom/android/phone/Settings;->DATA_STATE_CHANGE_TIMEOUT:I

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0x7530

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 369
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mLteDataServicePref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_13

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "setup_prepaid_data_service_url"

    invoke-static {v14, v15}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 372
    .local v12, tmpl:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 373
    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 375
    .local v11, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 376
    .local v5, imsi:Ljava/lang/String;
    if-nez v5, :cond_10

    .line 377
    const-string v5, ""

    .line 379
    :cond_10
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v13, 0x0

    .line 381
    .local v13, url:Ljava/lang/String;
    :goto_4
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v6, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 382
    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/phone/Settings;->startActivity(Landroid/content/Intent;)V

    .line 386
    .end local v5           #imsi:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v11           #tm:Landroid/telephony/TelephonyManager;
    .end local v13           #url:Ljava/lang/String;
    :goto_5
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 379
    .restart local v5       #imsi:Ljava/lang/String;
    .restart local v11       #tm:Landroid/telephony/TelephonyManager;
    :cond_11
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v12, v14}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 384
    .end local v5           #imsi:Ljava/lang/String;
    .end local v11           #tm:Landroid/telephony/TelephonyManager;
    :cond_12
    const-string v14, "NetworkSettings"

    const-string v15, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 388
    .end local v12           #tmpl:Ljava/lang/String;
    :cond_13
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 389
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 390
    .local v8, it:Landroid/content/Intent;
    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mApnPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_14

    .line 392
    const-string v14, "com.android.phone"

    const-string v15, "com.android.phone.MultipleSimActivity"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v14, "simId"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/Settings;->mSimId:I

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 396
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v15, "PreferenceScreen"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->targetClassKey:Ljava/lang/String;

    const-string v15, "com.baidu.dualcardsetting.ApnSettings"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/Settings;->mSimId:I

    const/16 v16, 0x12e

    move/from16 v0, v16

    invoke-virtual {v14, v8, v15, v0}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 400
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 401
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->mCarrierSelPref:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_16

    .line 402
    const-string v14, "com.android.phone"

    const-string v15, "com.android.phone.MultipleSimActivity"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->initTitleName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 406
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->intentKey:Ljava/lang/String;

    const-string v15, "PreferenceScreen"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    sget-object v14, Lcom/android/phone/MultipleSimActivity;->targetClassKey:Ljava/lang/String;

    const-string v15, "com.android.phone.NetworkSetting"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/Settings;->preCfr:Lcom/android/phone/PreCheckForRunning;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/phone/Settings;->mSimId:I

    const/16 v16, 0x12e

    move/from16 v0, v16

    invoke-virtual {v14, v8, v15, v0}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 410
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 416
    .end local v8           #it:Landroid/content/Intent;
    :cond_15
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 418
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 420
    .restart local v8       #it:Landroid/content/Intent;
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 722
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 726
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 728
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 730
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 735
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 736
    const-string v9, "getDataRoamingEnabledGemini do nothing!"

    invoke-static {v9}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 738
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 739
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "preferred_network_mode_key"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 740
    iget-object v9, p0, Lcom/android/phone/Settings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v10, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v10, v8}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/Settings;->mSimId:I

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferredNetworkTypeGemini(Landroid/os/Message;I)V

    .line 744
    :cond_0
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v9, :cond_1

    .line 746
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/telephony/TelephonyManager;->getCallStateGemini(I)I

    move-result v9

    if-nez v9, :cond_6

    .line 748
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 775
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/phone/Settings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v9}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 778
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 779
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v9

    if-nez v9, :cond_a

    move v3, v7

    .line 782
    .local v3, isCallStateIdle:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dual_sim_mode_setting"

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/phone/Settings;->mDualSimMode:I

    .line 783
    const-string v9, "NetworkSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Settings.onResume(), mDualSimMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/Settings;->mDualSimMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    if-eqz v3, :cond_b

    iget-boolean v10, p0, Lcom/android/phone/Settings;->mAirplaneModeEnabled:Z

    if-nez v10, :cond_b

    iget-boolean v10, p0, Lcom/android/phone/Settings;->mIsRadioOn:Z

    if-eqz v10, :cond_b

    iget v10, p0, Lcom/android/phone/Settings;->mDualSimMode:I

    if-eqz v10, :cond_b

    :goto_2
    invoke-virtual {v9, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 787
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v7, :cond_2

    .line 789
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "preferred_network_mode"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 793
    .local v4, settingsNetworkMode:I
    const-string v7, "NetworkSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mButtonPreferredNetworkMode != null and the settingsNetworkMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-direct {p0, v4}, Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V

    .line 797
    invoke-static {p0, v8}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 798
    .local v2, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v2, :cond_2

    .line 800
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 804
    .end local v2           #info:Landroid/provider/Telephony$SIMInfo;
    .end local v4           #settingsNetworkMode:I
    :cond_2
    iget-object v7, p0, Lcom/android/phone/Settings;->mPreferredNetworkMode:Landroid/preference/Preference;

    if-eqz v7, :cond_5

    .line 806
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "preferred_network_mode"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 809
    .restart local v4       #settingsNetworkMode:I
    const-string v7, "NetworkSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPreferredNetworkMode != null and the settingsNetworkMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    if-ltz v4, :cond_3

    const/4 v7, 0x2

    if-le v4, v7, :cond_4

    .line 812
    :cond_3
    const/4 v4, 0x0

    .line 813
    invoke-direct {p0, v4}, Lcom/android/phone/Settings;->UpdateGeneralPreferredNetworkModeSummary(I)V

    .line 816
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 818
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 819
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v7, "preferred_network_mode_key"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 820
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 825
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v4           #settingsNetworkMode:I
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/Settings;->updateStatus()V

    .line 826
    return-void

    .line 752
    .end local v3           #isCallStateIdle:Z
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_6
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 756
    :cond_7
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 758
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "preferred_network_mode_key"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 759
    iget-object v9, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v10, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v10, v8}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 763
    :cond_8
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v9, :cond_1

    .line 765
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v9

    if-nez v9, :cond_9

    .line 767
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 771
    :cond_9
    iget-object v9, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .restart local v6       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_a
    move v3, v8

    .line 779
    goto/16 :goto_1

    .restart local v3       #isCallStateIdle:Z
    :cond_b
    move v7, v8

    .line 785
    goto/16 :goto_2
.end method
