.class Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;
.super Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.source "MSimKeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MSimKeyguardStatusView"


# instance fields
.field private mCarrierTextSub:[Ljava/lang/CharSequence;

.field private mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mMSimPlmn:[Ljava/lang/CharSequence;

.field private mMSimSpn:[Ljava/lang/CharSequence;

.field private mMSimState:[Lcom/android/internal/telephony/IccCard$State;

.field private mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

.field private mNumPhones:I

.field private mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V
    .locals 5
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    .line 45
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 228
    new-instance v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;-><init>(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    .line 293
    new-instance v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$2;-><init>(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 61
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    .line 62
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    .line 63
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    .line 64
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    .line 65
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/IccCard$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    .line 66
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    sget-object v2, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aput-object v2, v1, v0

    .line 71
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aput-object v4, v1, v0

    .line 72
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aput-object v4, v1, v0

    .line 73
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    aput-object v4, v1, v0

    .line 74
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 77
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->resetStatusInfo()V

    .line 80
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 81
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    .line 82
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    .line 83
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 85
    return-void
.end method

.method private DefaultNoSimString(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #string@badPuk_one#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #string@lockscreen_missing_sim_message_short#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V

    return-void
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 5
    .parameter "simState"
    .parameter "subscription"

    .prologue
    const/4 v4, 0x1

    .line 125
    const-string v1, "MSimKeyguardStatusView"

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

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, carrierHelpTextId:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 130
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v2

    aput-object v2, v1, p2

    .line 131
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aput-object p1, v1, p2

    .line 133
    const-string v1, "MSimKeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMSimPlmn[] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

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

    .line 134
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 137
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$3;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    :cond_2
    :goto_0
    const-string v1, "MSimKeyguardStatusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierStateWithSimStatus: Sim Status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimStatus:[Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Carrier = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->setCarrierText()V

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 218
    iget v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mPhoneState:I

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 219
    return-void

    .line 139
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_unlock_label#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 150
    const v0, #string@lockscreen_instructions_when_pattern_disabled#t

    .line 151
    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->DefaultNoSimString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 163
    const v0, #string@lockscreen_missing_sim_instructions_long#t

    .line 164
    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->DefaultNoSimString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 168
    const v0, #string@lockscreen_permanent_disabled_sim_instructions#t

    .line 169
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 177
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->DefaultNoSimString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    .line 178
    const v0, #string@lockscreen_missing_sim_instructions#t

    .line 179
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 187
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_sim_locked_message#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 189
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 197
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_sim_puk_locked_message#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 199
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 209
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #string@lockscreen_glogin_invalid_input#t

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    .line 211
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 137
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
    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->resetStatusInfo()V

    .line 116
    return-void
.end method

.method setCarrierText()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, airplaneMode:I
    if-ne v0, v4, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #string@global_actions_airplane_mode_on_status#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 99
    :goto_0
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 100
    return-void

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierTextSub:[Ljava/lang/CharSequence;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_0
.end method
