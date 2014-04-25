.class public Lcom/android/phone/Modem3GCapabilitySwitch;
.super Landroid/preference/PreferenceActivity;
.source "Modem3GCapabilitySwitch.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Modem3GCapabilitySwitch$1;,
        Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;,
        Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final GSM_BASEBAND_CAPABILITY:Ljava/lang/String; = "gsm.baseband.capability"

.field public static final GSM_BASEBAND_CAPABILITY2:Ljava/lang/String; = "gsm.baseband.capability2"

.field public static final MODEM_MASK_TDSCDMA:I = 0x8

.field public static final NETWORK_MODE_KEY:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final NT_MODE_INDEX_AUTO:I = 0x0

.field private static final NT_MODE_INDEX_GSM_ONLY:I = 0x2

.field private static final NT_MODE_INDEX_WCDMA_ONLY:I = 0x1

.field public static final SERVICE_LIST_KEY:Ljava/lang/String; = "preferred_3g_service_key"

.field private static SIMID_3G_SERVICE_NOT_SET:I = 0x0

.field private static SIMID_3G_SERVICE_OFF:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Settings/Modem3GCapabilitySwitch"

.field private static instanceFlag:I

.field private static pdSwitching:Landroid/app/ProgressDialog;

.field static final preferredNetworkMode:I


# instance fields
.field private instanceIndex:I

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field mHandler:Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;

.field private mNetworkMode:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mServiceList:Lcom/android/phone/ServiceSelectList;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mslr:Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;

.field private pd:Landroid/app/ProgressDialog;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    .line 62
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/Modem3GCapabilitySwitch;->SIMID_3G_SERVICE_OFF:I

    .line 63
    const/4 v0, -0x2

    sput v0, Lcom/android/phone/Modem3GCapabilitySwitch;->SIMID_3G_SERVICE_NOT_SET:I

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/Modem3GCapabilitySwitch;->instanceFlag:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    .line 41
    iput-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    .line 45
    iput-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 49
    iput-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 57
    iput-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->instanceIndex:I

    .line 72
    sget v0, Lcom/android/phone/Modem3GCapabilitySwitch;->instanceFlag:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/phone/Modem3GCapabilitySwitch;->instanceFlag:I

    iput v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->instanceIndex:I

    .line 73
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modem3GCapabilitySwitch(), instanceIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->instanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 3
    .parameter "NetworkMode"

    .prologue
    .line 491
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, value:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 520
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "Global"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 522
    :goto_0
    return-void

    .line 495
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 500
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 504
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 507
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "GSM/WCDMA"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 510
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "CDMA / EvDo"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 513
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "CDMA only"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 516
    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, "EvDo only"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/android/phone/Modem3GCapabilitySwitch;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/Modem3GCapabilitySwitch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->update3GService()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/Modem3GCapabilitySwitch;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/Modem3GCapabilitySwitch;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/Modem3GCapabilitySwitch;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Modem3GCapabilitySwitch;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Modem3GCapabilitySwitch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->updateItemStatus()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/Modem3GCapabilitySwitch;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/Modem3GCapabilitySwitch;->showInstanceIndex(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/Modem3GCapabilitySwitch;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/Modem3GCapabilitySwitch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->updateNetworkMode()V

    return-void
.end method

.method private disSwitchProgressDialog()V
    .locals 3

    .prologue
    .line 323
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "disSwitchProgressDialog()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v0, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "disSwitchProgressDialog(), take effect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-object v0, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 327
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdSwitching != null?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getBaseBand(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    .line 623
    const/4 v4, 0x0

    .line 624
    .local v4, value:I
    const/4 v0, 0x0

    .line 626
    .local v0, capability:Ljava/lang/String;
    :try_start_0
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 628
    .local v2, iTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 629
    const-string v6, "gsm.baseband.capability2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 638
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-eqz v0, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v5, v4

    .line 647
    .end local v4           #value:I
    .local v5, value:I
    :goto_1
    return v5

    .line 631
    .end local v5           #value:I
    .restart local v2       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v4       #value:I
    :cond_1
    :try_start_1
    const-string v6, "gsm.baseband.capability"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 633
    .end local v2           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 634
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "Settings/Modem3GCapabilitySwitch"

    const-string v7, "getBaseBand error"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v6, "gsm.baseband.capability"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 643
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/16 v6, 0x10

    :try_start_2
    invoke-static {v0, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    :goto_2
    move v5, v4

    .line 647
    .end local v4           #value:I
    .restart local v5       #value:I
    goto :goto_1

    .line 644
    .end local v5           #value:I
    .restart local v4       #value:I
    :catch_1
    move-exception v3

    .line 645
    .local v3, ne:Ljava/lang/NumberFormatException;
    const-string v6, "Settings/Modem3GCapabilitySwitch"

    const-string v7, "parse value of basband error"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleServiceSwitch(J)V
    .locals 5
    .parameter "simId"

    .prologue
    .line 334
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Switch has been locked, return"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    return-void

    .line 338
    :cond_0
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleServiceSwitch("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), show switching dialog first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->showSwitchProgress()V

    .line 340
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/phone/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 341
    const/4 v1, -0x1

    .line 342
    .local v1, slotId:I
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 343
    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 344
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_2

    const/4 v1, -0x1

    .line 346
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneInterfaceManager;->set3GCapabilitySIM(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 347
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Receive ok for the switch, and starting the waiting..."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    iget v1, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1

    .line 349
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Receive error for the switch & Dismiss switching didalog"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->disSwitchProgressDialog()V

    .line 351
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    goto :goto_0
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 581
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarEnableStatus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    .line 583
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/phone/Modem3GCapabilitySwitch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    .line 586
    if-eqz p1, :cond_1

    .line 587
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 594
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 592
    :cond_2
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    const-string v1, "Fail to get status bar instance"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showInstanceIndex(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 651
    const-string v0, "Settings/Modem3GCapabilitySwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->instanceIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 526
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    .line 527
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0089

    invoke-virtual {p0, v1}, Lcom/android/phone/Modem3GCapabilitySwitch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 529
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 530
    iget-object v0, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 531
    return-void
.end method

.method private update3GService()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 166
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v0

    .line 167
    .local v0, enabled:Z
    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 172
    .local v1, isAirMode:Z
    :goto_1
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/phone/ServiceSelectList;->setEnabled(Z)V

    .line 173
    if-eqz v1, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    invoke-virtual {v2}, Lcom/android/phone/ServiceSelectList;->dismissDialogs()V

    goto :goto_0

    .end local v1           #isAirMode:Z
    :cond_2
    move v1, v3

    .line 171
    goto :goto_1

    .restart local v1       #isAirMode:Z
    :cond_3
    move v2, v3

    .line 172
    goto :goto_2
.end method

.method private updateItemStatus()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 534
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->is3GSwitchLocked()Z

    move-result v1

    .line 535
    .local v1, enabled:Z
    const-string v3, "Settings/Modem3GCapabilitySwitch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateItemStatus(), is3GSwitchLocked()?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    if-eqz v3, :cond_0

    .line 537
    iget-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    if-nez v1, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/android/phone/ServiceSelectList;->setEnabled(Z)V

    .line 540
    :cond_0
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 544
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v0

    .line 545
    .local v0, cardSlot:I
    invoke-static {p0, v0}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 546
    .local v2, info:Landroid/provider/Telephony$SIMInfo;
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/android/phone/CallSettings;->isRadioOn(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 547
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 548
    iget-object v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 551
    .end local v0           #cardSlot:I
    .end local v2           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 537
    goto :goto_0

    .restart local v0       #cardSlot:I
    .restart local v2       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    move v4, v5

    .line 546
    goto :goto_1
.end method

.method private updateNetworkMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-nez v1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v0

    .line 154
    .local v0, slot:I
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkMode(), 3G capability slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/phone/CallSettings;->isRadioOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 157
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to get preferred network mode for slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mHandler:Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;

    invoke-virtual {v2, v4}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPreferredNetworkTypeGemini(Landroid/os/Message;I)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSummarys(J)V
    .locals 6
    .parameter "simId"

    .prologue
    const/4 v5, 0x0

    .line 180
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    if-nez v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummarys(), simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget v2, Lcom/android/phone/Modem3GCapabilitySwitch;->SIMID_3G_SERVICE_OFF:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 186
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    const v3, 0x7f0b035a

    invoke-virtual {v2, v3}, Lcom/android/phone/ServiceSelectList;->setSummary(I)V

    .line 187
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 189
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_2
    sget v2, Lcom/android/phone/Modem3GCapabilitySwitch;->SIMID_3G_SERVICE_NOT_SET:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/ServiceSelectList;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 195
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_3
    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 198
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/phone/ServiceSelectList;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v2}, Lcom/android/phone/CallSettings;->isRadioOn(I)Z

    move-result v1

    .line 202
    .local v1, isPowerOn:Z
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSummarys(), SIM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " power status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 204
    if-nez v1, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public changeForNetworkMode(Ljava/lang/Object;)V
    .locals 8
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    .line 212
    iget-object v5, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 214
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 215
    .local v0, buttonNetworkMode:I
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 218
    .local v2, settingsNetworkMode:I
    if-eq v0, v2, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->showProgressDialog()V

    .line 221
    packed-switch v0, :pswitch_data_0

    .line 247
    const/4 v1, 0x3

    .line 251
    .local v1, modemNetworkMode:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/Modem3GCapabilitySwitch;->UpdatePreferredNetworkModeSummary(I)V

    .line 253
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    .line 258
    .local v3, slot:I
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v5, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mHandler:Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;

    invoke-virtual {v5, v7}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v1, v5, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    .line 266
    .end local v1           #modemNetworkMode:I
    .end local v3           #slot:I
    :cond_0
    :goto_1
    return-void

    .line 223
    :pswitch_0
    const/4 v1, 0x7

    .line 224
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 226
    .end local v1           #modemNetworkMode:I
    :pswitch_1
    const/4 v1, 0x6

    .line 227
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 229
    .end local v1           #modemNetworkMode:I
    :pswitch_2
    const/4 v1, 0x5

    .line 230
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 232
    .end local v1           #modemNetworkMode:I
    :pswitch_3
    const/4 v1, 0x4

    .line 233
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 235
    .end local v1           #modemNetworkMode:I
    :pswitch_4
    const/4 v1, 0x3

    .line 236
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 238
    .end local v1           #modemNetworkMode:I
    :pswitch_5
    const/4 v1, 0x2

    .line 239
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 241
    .end local v1           #modemNetworkMode:I
    :pswitch_6
    const/4 v1, 0x1

    .line 242
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 244
    .end local v1           #modemNetworkMode:I
    :pswitch_7
    const/4 v1, 0x0

    .line 245
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 262
    .restart local v3       #slot:I
    :cond_1
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mHandler:Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;

    invoke-virtual {v5, v7}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    .line 221
    nop

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

.method clearAfterSwitch(Landroid/content/Intent;)V
    .locals 6
    .parameter "it"

    .prologue
    .line 301
    sget v4, Lcom/android/phone/Modem3GCapabilitySwitch;->SIMID_3G_SERVICE_NOT_SET:I

    int-to-long v1, v4

    .line 302
    .local v1, simId3G:J
    const-string v4, "Settings/Modem3GCapabilitySwitch"

    const-string v5, "clearAfterSwitch(), remove switching dialog"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->disSwitchProgressDialog()V

    .line 304
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/phone/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 307
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    sget v5, Lcom/android/phone/Modem3GCapabilitySwitch;->SIMID_3G_SERVICE_NOT_SET:I

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 308
    .local v3, slot3G:I
    sget v4, Lcom/android/phone/Modem3GCapabilitySwitch;->SIMID_3G_SERVICE_OFF:I

    if-ne v3, v4, :cond_1

    .line 309
    sget v4, Lcom/android/phone/Modem3GCapabilitySwitch;->SIMID_3G_SERVICE_OFF:I

    int-to-long v1, v4

    .line 317
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/phone/Modem3GCapabilitySwitch;->updateSummarys(J)V

    .line 318
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->updateNetworkMode()V

    .line 319
    return-void

    .line 311
    :cond_1
    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 312
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 313
    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v6, "Settings/Modem3GCapabilitySwitch"

    const-string v7, "onCreate()"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const v6, 0x7f05001d

    invoke-virtual {p0, v6}, Lcom/android/phone/Modem3GCapabilitySwitch;->addPreferencesFromResource(I)V

    .line 80
    const-string v6, "preferred_3g_service_key"

    invoke-virtual {p0, v6}, Lcom/android/phone/Modem3GCapabilitySwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/phone/ServiceSelectList;

    iput-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    .line 81
    const-string v6, "preferred_network_mode_key"

    invoke-virtual {p0, v6}, Lcom/android/phone/Modem3GCapabilitySwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    .line 82
    iget-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    invoke-virtual {v6, p0}, Lcom/android/phone/ServiceSelectList;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    iget-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 86
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    iget-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v6, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 90
    :cond_0
    new-instance v6, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;-><init>(Lcom/android/phone/Modem3GCapabilitySwitch;Lcom/android/phone/Modem3GCapabilitySwitch$1;)V

    iput-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mHandler:Lcom/android/phone/Modem3GCapabilitySwitch$MyHandler;

    .line 91
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iput-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 93
    new-instance v6, Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-direct {v6, p0}, Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;-><init>(Lcom/android/phone/Modem3GCapabilitySwitch;)V

    iput-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mslr:Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v6, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, intentFilter:Landroid/content/IntentFilter;
    sget-object v6, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    sget-object v6, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mslr:Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/android/phone/Modem3GCapabilitySwitch;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, isTd:Z
    iget-object v6, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/Modem3GCapabilitySwitch;->getBaseBand(Landroid/content/Context;)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    .line 103
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v2, preferredNetworkModeNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, totalNetworkModeName:[Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v3, preferredNetworkModeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, totalNetworkModeValues:[Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 110
    aget-object v6, v4, v11

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    aget-object v6, v5, v11

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v6, "Settings/Modem3GCapabilitySwitch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GSM_ONLY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 115
    aget-object v6, v4, v9

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    aget-object v6, v5, v9

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v6, "Settings/Modem3GCapabilitySwitch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WCDMA_ONLY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v9, :cond_5

    .line 121
    :cond_4
    aget-object v6, v4, v10

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    aget-object v6, v5, v10

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v6, "Settings/Modem3GCapabilitySwitch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AUTO = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_5
    iget-object v7, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 127
    iget-object v7, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 130
    return-void

    .line 104
    .end local v3           #preferredNetworkModeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #totalNetworkModeName:[Ljava/lang/String;
    .end local v5           #totalNetworkModeValues:[Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 107
    .restart local v3       #preferredNetworkModeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #totalNetworkModeName:[Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 554
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 555
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->instanceIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onDestroy()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 565
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->pd:Landroid/app/ProgressDialog;

    .line 567
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->disSwitchProgressDialog()V

    .line 569
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mslr:Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    if-eqz v1, :cond_2

    .line 570
    iget-object v1, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mslr:Lcom/android/phone/Modem3GCapabilitySwitch$ModemSwitchReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/Modem3GCapabilitySwitch;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 573
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V

    .line 574
    return-void

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Settings/Modem3GCapabilitySwitch"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mServiceList:Lcom/android/phone/ServiceSelectList;

    if-ne p1, v2, :cond_1

    .line 270
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 273
    .local v0, simId:J
    invoke-direct {p0, v0, v1}, Lcom/android/phone/Modem3GCapabilitySwitch;->handleServiceSwitch(J)V

    .line 277
    .end local v0           #simId:J
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 275
    invoke-virtual {p0, p2}, Lcom/android/phone/Modem3GCapabilitySwitch;->changeForNetworkMode(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 134
    sget v4, Lcom/android/phone/Modem3GCapabilitySwitch;->SIMID_3G_SERVICE_NOT_SET:I

    int-to-long v1, v4

    .line 135
    .local v1, simId:J
    iget-object v4, p0, Lcom/android/phone/Modem3GCapabilitySwitch;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    .line 136
    .local v3, slot:I
    sget v4, Lcom/android/phone/Modem3GCapabilitySwitch;->SIMID_3G_SERVICE_OFF:I

    if-ne v3, v4, :cond_0

    .line 137
    int-to-long v1, v3

    .line 143
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/phone/Modem3GCapabilitySwitch;->updateSummarys(J)V

    .line 144
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->updateNetworkMode()V

    .line 145
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->updateItemStatus()V

    .line 146
    invoke-direct {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->update3GService()V

    .line 147
    return-void

    .line 139
    :cond_0
    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 140
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_1

    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    :goto_1
    goto :goto_0

    :cond_1
    sget v4, Lcom/android/phone/Modem3GCapabilitySwitch;->SIMID_3G_SERVICE_NOT_SET:I

    int-to-long v1, v4

    goto :goto_1
.end method

.method showSwitchProgress()V
    .locals 5

    .prologue
    .line 281
    sget-object v2, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 282
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "The progress dialog already exist, so exit!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    .line 287
    sget-object v2, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    .line 288
    sget-object v2, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/Modem3GCapabilitySwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0357

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 290
    :cond_1
    const-string v2, "Settings/Modem3GCapabilitySwitch"

    const-string v3, "Create and show the progress dialog..."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v2, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 293
    sget-object v2, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 294
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 295
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x8000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 296
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 297
    sget-object v2, Lcom/android/phone/Modem3GCapabilitySwitch;->pdSwitching:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
