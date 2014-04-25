.class public Lcom/android/phone/FdnSetting2;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting2.java"

# interfaces
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FdnSetting2$FdnSetting2BroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTON_CHANGE_PIN2_KEY:Ljava/lang/String; = "button_change_pin2_key"

.field private static final BUTTON_FDN_ENABLE_KEY:Ljava/lang/String; = "button_fdn_enable_key"

.field private static final BUTTON_FDN_LIST_KEY:Ljava/lang/String; = "button_fdn_list_key"

.field private static final EVENT_PIN2_ENTRY_COMPLETE:I = 0x64

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/FdnSetting2"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4


# instance fields
.field private isFdnSupport:Z

.field private mButtonChangePin2:Landroid/preference/Preference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private mButtonFDNList:Landroid/preference/Preference;

.field private mFDNHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryPin2New:I

.field private mRetryPin2Old:I

.field private mSimId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/FdnSetting2;->isFdnSupport:Z

    .line 87
    new-instance v0, Lcom/android/phone/FdnSetting2$FdnSetting2BroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/FdnSetting2$FdnSetting2BroadcastReceiver;-><init>(Lcom/android/phone/FdnSetting2;Lcom/android/phone/FdnSetting2$1;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v0, Lcom/android/phone/FdnSetting2$1;

    invoke-direct {v0, p0}, Lcom/android/phone/FdnSetting2$1;-><init>(Lcom/android/phone/FdnSetting2;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting2;->mFDNHandler:Landroid/os/Handler;

    .line 537
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/FdnSetting2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->getRetryPin2Count()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/FdnSetting2;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting2;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/FdnSetting2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->updateFDNPreference()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/FdnSetting2;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting2;->resetFDNDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/FdnSetting2;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/FdnSetting2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/FdnSetting2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2Old:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/FdnSetting2;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2Old:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/FdnSetting2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2New:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/FdnSetting2;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/phone/FdnSetting2;->updateMenuEnableState(Z)V

    return-void
.end method

.method private checkPhoneBookState()Z
    .locals 3

    .prologue
    .line 521
    const/4 v0, 0x0

    .line 523
    .local v0, isPhoneBookReady:Z
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    .line 528
    :goto_0
    if-nez v0, :cond_0

    .line 529
    const v1, 0x7f0b028c

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/FdnSetting2;->showTipToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_0
    return v0

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    goto :goto_0
.end method

.method private checkPhoneBookStateExit()V
    .locals 3

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, isPhoneBookReady:Z
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    .line 514
    :goto_0
    if-nez v0, :cond_0

    .line 515
    const v1, 0x7f0b028c

    invoke-virtual {p0, v1}, Lcom/android/phone/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/FdnSetting2;->showTipToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting2;->finish()V

    .line 518
    :cond_0
    return-void

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    goto :goto_0
.end method

.method private final displayMessage(I)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    return-void
.end method

.method private getRetryPin2()Ljava/lang/String;
    .locals 6

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->getRetryPin2Count()I

    move-result v0

    .line 112
    .local v0, retryCount:I
    iput v0, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2New:I

    .line 113
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRetryPin2 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    packed-switch v0, :pswitch_data_0

    .line 122
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b016e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/FdnSetting2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 117
    :pswitch_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "getRetryPin2,GET_SIM_RETRY_EMPTY"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v1, " "

    goto :goto_0

    .line 120
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b016d

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryPin2Count()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 100
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget v0, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    if-nez v0, :cond_0

    .line 102
    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 107
    :goto_0
    return v0

    .line 103
    :cond_0
    iget v0, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 104
    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 107
    :cond_1
    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk2Count()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 89
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget v0, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    if-nez v0, :cond_0

    .line 91
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 92
    :cond_0
    iget v0, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 93
    const-string v0, "gsm.sim.retry.puk2.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 96
    :cond_1
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private resetFDNDialog(I)V
    .locals 4
    .parameter "strId"

    .prologue
    const v3, 0x7f0b0174

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/phone/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->getRetryPin2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "resetFDNDialog 0"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/phone/FdnSetting2;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->getRetryPin2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setFDNSupport()V
    .locals 3

    .prologue
    .line 496
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 501
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->isFDNExist()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/FdnSetting2;->isFdnSupport:Z

    .line 502
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/phone/FdnSetting2;->isFdnSupport:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 503
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v2, p0, Lcom/android/phone/FdnSetting2;->isFdnSupport:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 504
    return-void

    .line 499
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    goto :goto_0
.end method

.method private toggleFDNEnable(Z)V
    .locals 8
    .parameter "positiveResult"

    .prologue
    const/4 v5, 0x0

    .line 178
    const-string v4, "Settings/FdnSetting2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleFDNEnable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-nez p1, :cond_0

    .line 181
    const-string v4, "Settings/FdnSetting2"

    const-string v6, "toggleFDNEnable positiveResult is false"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0, v5}, Lcom/android/phone/FdnSetting2;->resetFDNDialog(I)V

    .line 183
    iget v4, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2New:I

    iput v4, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2Old:I

    .line 184
    const-string v4, "Settings/FdnSetting2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleFDNEnable mRetryPin2Old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v4, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, password:Ljava/lang/String;
    invoke-direct {p0, v3, v5}, Lcom/android/phone/FdnSetting2;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    iget-object v4, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v6, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 198
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    :goto_1
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 199
    .local v1, isEnabled:Z
    iget-object v4, p0, Lcom/android/phone/FdnSetting2;->mFDNHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 202
    .local v2, onComplete:Landroid/os/Message;
    if-nez v1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v0, v4, v3, v2}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 210
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    .end local v1           #isEnabled:Z
    .end local v2           #onComplete:Landroid/os/Message;
    :goto_3
    iget-object v4, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    goto :goto_1

    .restart local v1       #isEnabled:Z
    .restart local v2       #onComplete:Landroid/os/Message;
    :cond_2
    move v4, v5

    .line 202
    goto :goto_2

    .line 205
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    .end local v1           #isEnabled:Z
    .end local v2           #onComplete:Landroid/os/Message;
    :cond_3
    const v4, 0x7f0b017b

    invoke-direct {p0, v4}, Lcom/android/phone/FdnSetting2;->resetFDNDialog(I)V

    .line 206
    iget-object v4, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_3
.end method

.method private updateEnableFDN()V
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 286
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN is FdnEnabled=2131427637"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0b0137

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 289
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0b0132

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 290
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0b0135

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    .line 297
    :goto_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/FdnSetting2;->resetFDNDialog(I)V

    .line 299
    return-void

    .line 284
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    goto :goto_0

    .line 292
    :cond_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN is not FdnEnabled=2131427636"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 294
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0b0133

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 295
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f0b0134

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    goto :goto_1
.end method

.method private updateFDNPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v1, v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 308
    .restart local v0       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    iget v1, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 310
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 311
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 382
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->getRetryPin2Count()I

    move-result v1

    if-nez v1, :cond_3

    .line 314
    iput v4, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2New:I

    .line 315
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFDNPreference, mRetryPin2New="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 317
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 318
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f0b0170

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 319
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->getRetryPuk2Count()I

    move-result v1

    if-nez v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 321
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f0b0171

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 326
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->updateEnableFDN()V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 324
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f0b016c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 329
    :cond_3
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateFDNPreference"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/phone/FdnSetting2;->isFdnSupport:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 331
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 332
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f0b0136

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 333
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v2, 0x7f0b013a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 334
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v2, p0, Lcom/android/phone/FdnSetting2;->isFdnSupport:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 335
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->updateEnableFDN()V

    goto/16 :goto_0
.end method

.method private updateMenuEnableState(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 562
    iget-object v3, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v0, p0, Lcom/android/phone/FdnSetting2;->isFdnSupport:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/android/phone/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v3, p0, Lcom/android/phone/FdnSetting2;->isFdnSupport:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 565
    return-void

    :cond_0
    move v0, v2

    .line 562
    goto :goto_0

    :cond_1
    move v1, v2

    .line 563
    goto :goto_1
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 266
    if-eqz p2, :cond_1

    move v0, v1

    .line 269
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 270
    :cond_0
    const/4 v1, 0x0

    .line 272
    :goto_1
    return v1

    .line 266
    .end local v0           #pinMinimum:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 272
    .restart local v0       #pinMinimum:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 386
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 388
    const v2, 0x7f05000f

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting2;->addPreferencesFromResource(I)V

    .line 390
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 391
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting2;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "simId"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    .line 392
    const-string v2, "Settings/FdnSetting2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate,Sim Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting2;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 395
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_fdn_enable_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 396
    const-string v2, "button_change_pin2_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    .line 397
    const-string v2, "button_fdn_list_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    .line 399
    iget-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 401
    iget-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/android/phone/FdnSetting2$2;

    invoke-direct {v3, p0}, Lcom/android/phone/FdnSetting2$2;-><init>(Lcom/android/phone/FdnSetting2;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    if-eqz v2, :cond_2

    .line 427
    iget-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 429
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/android/phone/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/FdnSetting2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    iget-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-object v3, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v4, 0xa

    iget v5, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/phone/EditPinPreference;->initFdnModeData(Lcom/android/internal/telephony/Phone;II)V

    .line 437
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting2;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 439
    invoke-virtual {p0}, Lcom/android/phone/FdnSetting2;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/FdnSetting2;->setTitle(Ljava/lang/CharSequence;)V

    .line 441
    :cond_3
    if-eqz p1, :cond_4

    .line 443
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->updateFDNPreference()V

    .line 446
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->getRetryPin2Count()I

    move-result v2

    iput v2, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2Old:I

    .line 447
    const-string v2, "Settings/FdnSetting2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate,  mRetryPin2Old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->checkPhoneBookStateExit()V

    .line 450
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->setFDNSupport()V

    .line 451
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 452
    invoke-static {p0}, Lyi/support/v1/YiLaf;->removePreferencePadding(Landroid/app/Activity;)V

    .line 453
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 489
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 491
    iget-object v0, p0, Lcom/android/phone/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/FdnSetting2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 492
    return-void
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_0

    .line 157
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "onPinEntered"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0, p2}, Lcom/android/phone/FdnSetting2;->toggleFDNEnable(Z)V

    .line 160
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 127
    const-string v2, "Settings/FdnSetting2"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pin2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    iget v2, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    if-ltz v2, :cond_0

    .line 132
    const-string v2, "simId"

    iget v3, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    :cond_0
    const-class v2, Lcom/android/phone/ChangeIccPinScreen;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnSetting2;->startActivity(Landroid/content/Intent;)V

    .line 138
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 139
    const-string v2, "Settings/FdnSetting2"

    const-string v3, "onPreferenceClick mButtonFDNList"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->checkPhoneBookState()Z

    move-result v2

    if-nez v2, :cond_3

    .line 141
    const/4 v1, 0x0

    .line 149
    :cond_2
    :goto_0
    return v1

    .line 143
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FdnList;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .restart local v0       #intent:Landroid/content/Intent;
    iget v2, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    if-ltz v2, :cond_4

    .line 145
    const-string v2, "simId"

    iget v3, p0, Lcom/android/phone/FdnSetting2;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnSetting2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 457
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 458
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 464
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0}, Lcom/android/phone/FdnSetting2;->updateFDNPreference()V

    .line 466
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 468
    .local v0, fdnDialog:Landroid/app/Dialog;
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, mRetryPin2New= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryPin2Old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget v1, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2New:I

    iget v2, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2Old:I

    if-eq v1, v2, :cond_1

    .line 471
    iget v1, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2New:I

    iput v1, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2Old:I

    .line 472
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, fdnDialog= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-eqz v0, :cond_0

    .line 474
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, fdnDialog.isShowing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, second mRetryPin2New= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryPin2Old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "onResume, isShowing"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/android/phone/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 485
    :cond_1
    return-void
.end method

.method public showTipToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 535
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 536
    return-void
.end method
