.class public Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;
.super Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;
.source "SmartMSimKeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SmartMSimKeyguardStatusViewManager"


# instance fields
.field private mCarrierTextSub:[Ljava/lang/CharSequence;

.field private mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mMSimPlmn:[Ljava/lang/CharSequence;

.field private mMSimSpn:[Ljava/lang/CharSequence;

.field private mMSimState:[Lcom/android/internal/telephony/IccCard$State;

.field private mMSimStatus:[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

.field private mNumPhones:I

.field private mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ZLcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V
    .locals 5
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"
    .parameter "unlockView"

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;ZLcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;)V

    .line 47
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    const/4 v2, 0x0

    sget-object v3, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->Normal:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 233
    new-instance v1, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;

    invoke-direct {v1, p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$1;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;)V

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 294
    new-instance v1, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$2;

    invoke-direct {v1, p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$2;-><init>(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;)V

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 63
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mNumPhones:I

    .line 64
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    .line 65
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    .line 66
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    .line 67
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/IccCard$State;

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    .line 68
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    sget-object v2, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->Normal:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aput-object v2, v1, v0

    .line 73
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aput-object v4, v1, v0

    .line 74
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aput-object v4, v1, v0

    .line 75
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    aput-object v4, v1, v0

    .line 76
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 79
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 80
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->resetStatusInfo()V

    .line 82
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mStatus:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    .line 83
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    .line 84
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    .line 85
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 87
    return-void
.end method

.method private DefaultNoSimString(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #string@badPuk_one#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #string@lockscreen_missing_sim_message_short#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;)[Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V

    return-void
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 5
    .parameter "simState"
    .parameter "subscription"

    .prologue
    const/4 v4, 0x1

    .line 130
    const-string v1, "SmartMSimKeyguardStatusViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierStateWithSimStatus(), simState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, carrierHelpTextId:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 135
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    move-result-object v2

    aput-object v2, v1, p2

    .line 136
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aput-object p1, v1, p2

    .line 138
    const-string v1, "SmartMSimKeyguardStatusViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMSimPlmn[] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 142
    :cond_1
    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$3;->$SwitchMap$com$baidu$internal$keyguard$slide$SmartKeyguardStatusViewManager$StatusMode:[I

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 219
    :cond_2
    :goto_0
    const-string v1, "SmartMSimKeyguardStatusViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierStateWithSimStatus: Sim Status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$StatusMode;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Carrier = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->setCarrierText()V

    .line 222
    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 223
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPhoneState:I

    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 224
    return-void

    .line 144
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-static {v2, v3}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_unlock_label#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 155
    const v0, #string@lockscreen_instructions_when_pattern_disabled#t

    .line 156
    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->DefaultNoSimString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 168
    const v0, #string@lockscreen_missing_sim_instructions_long#t

    .line 169
    goto :goto_0

    .line 172
    :pswitch_3
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->DefaultNoSimString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 173
    const v0, #string@lockscreen_permanent_disabled_sim_instructions#t

    .line 174
    iput-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 182
    :pswitch_4
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->DefaultNoSimString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 183
    const v0, #string@lockscreen_missing_sim_instructions#t

    .line 184
    iput-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 192
    :pswitch_5
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_sim_locked_message#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 194
    iput-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 202
    :pswitch_6
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_sim_puk_locked_message#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 204
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    iput-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 214
    :pswitch_7
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_glogin_invalid_input#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 216
    iput-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 119
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 120
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->resetStatusInfo()V

    .line 121
    return-void
.end method

.method protected registerInfoCallback()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method setCarrierText()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 97
    .local v0, airplaneMode:I
    if-ne v0, v4, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@global_actions_airplane_mode_on_status#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 104
    :goto_0
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 105
    return-void

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_0
.end method
