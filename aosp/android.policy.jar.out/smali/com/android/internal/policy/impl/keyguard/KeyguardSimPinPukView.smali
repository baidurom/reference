.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSimPinPukView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimMe;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;
    }
.end annotation


# static fields
.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final SIMLOCK_TYPE_PIN_PUK:I = 0x1

.field private static final SIMLOCK_TYPE_SIMMELOCK:I = 0x2

.field private static final SIMPINPUK_WAIT_STATE_CHANGE_TIMEOUT:I = 0x1770

.field private static final STATE_ENTER_FINISH:I = 0x4

.field private static final STATE_ENTER_ME:I = 0x5

.field private static final STATE_ENTER_NEW:I = 0x2

.field private static final STATE_ENTER_PIN:I = 0x0

.field private static final STATE_ENTER_PUK:I = 0x1

.field private static final STATE_REENTER_NEW:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeyguardSimPinPukView"

.field private static final VERIFY_INCORRECT_PASSWORD:I = 0x1

.field private static final VERIFY_RESULT_EXCEPTION:I = 0x2

.field private static final VERIFY_RESULT_PASS:I = 0x0

.field static final VERIFY_TYPE_PIN:I = 0x1f5

.field static final VERIFY_TYPE_PUK:I = 0x1f6

.field static final VERIFY_TYPE_SIMMELOCK:I = 0x1f7


# instance fields
.field private mCardInfoExt:Lcom/mediatek/common/policy/ICardInfoExt;

.field private mDismissSimPinPukRunnable:Ljava/lang/Runnable;

.field private mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardUtilExt:Lcom/mediatek/common/policy/IKeyguardUtilExt;

.field private mLastSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mNewPinText:Ljava/lang/String;

.field private mNextRepollStateSimId:I

.field private mPinRetryCount:I

.field private mPinText:Landroid/widget/TextView;

.field private mPukRetryCount:I

.field private mPukText:Ljava/lang/String;

.field private mSIMCardName:Landroid/widget/TextView;

.field private mSIMCardNamePadding:I

.field private mSb:Ljava/lang/StringBuffer;

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field private mSimCardDialog:Landroid/app/AlertDialog;

.field private volatile mSimCheckInProgress:Z

.field private mSimFirstBoot:[Z

.field public mSimId:I

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mUnlockEnterState:I

.field mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private strLockName:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 79
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 81
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    .line 85
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    .line 99
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    .line 109
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNextRepollStateSimId:I

    .line 110
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mLastSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 130
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " [NP]"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, " [NSP]"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " [SP]"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, " [CP]"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, " [SIMP]"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->strLockName:[Ljava/lang/String;

    .line 141
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mDismissSimPinPukRunnable:Ljava/lang/Runnable;

    .line 148
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 230
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->initMembers()V

    .line 233
    :try_start_0
    const-class v1, Lcom/mediatek/common/policy/IKeyguardUtilExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/policy/IKeyguardUtilExt;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mKeyguardUtilExt:Lcom/mediatek/common/policy/IKeyguardUtilExt;

    .line 234
    const-class v1, Lcom/mediatek/common/policy/ICardInfoExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/policy/ICardInfoExt;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCardInfoExt:Lcom/mediatek/common/policy/ICardInfoExt;

    .line 235
    const-class v1, Lcom/mediatek/common/policy/IOperatorSIMString;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/policy/IOperatorSIMString;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->dealwithSIMInfoChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSIMCardName(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimLockScreenDone(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Lcom/mediatek/common/policy/IKeyguardUtilExt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mKeyguardUtilExt:Lcom/mediatek/common/policy/IKeyguardUtilExt;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPinCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinRetryCount:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPukCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mDismissSimPinPukRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukRetryCount:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->minusRetryMeCount(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->simStateReadyProcess()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->strLockName:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryMe(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryMeCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mLastSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNextRepollStateSimId:I

    return v0
.end method

.method private checkMe()V
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkMe(I)V

    .line 818
    return-void
.end method

.method private checkMe(I)V
    .locals 3
    .parameter "simId"

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 823
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    if-nez v0, :cond_0

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    .line 825
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->start()V

    .line 870
    :cond_0
    return-void
.end method

.method private checkPin()V
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPin(I)V

    .line 694
    return-void
.end method

.method private checkPin(I)V
    .locals 3
    .parameter "simId"

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 698
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    if-nez v0, :cond_0

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    .line 700
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->start()V

    .line 753
    :cond_0
    return-void
.end method

.method private checkPuk()V
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPuk(I)V

    .line 757
    return-void
.end method

.method private checkPuk(I)V
    .locals 4
    .parameter "simId"

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->updatePinEnterScreen()V

    .line 761
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 765
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    if-nez v0, :cond_0

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    .line 767
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->start()V

    goto :goto_0
.end method

.method private dealWithPinOrPukUnlock()V
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 679
    const-string v0, "KeyguardSimPinPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, check PIN, mSimId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPin(I)V

    .line 690
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    .line 682
    const-string v0, "KeyguardSimPinPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, check PUK, mSimId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPuk(I)V

    goto :goto_0

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_2

    .line 685
    const-string v0, "KeyguardSimPinPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick, check ME, mSimId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkMe(I)V

    goto :goto_0

    .line 688
    :cond_2
    const-string v0, "KeyguardSimPinPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong status, mSimId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dealwithSIMInfoChanged(I)V
    .locals 9
    .parameter "slotId"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 979
    const/4 v2, 0x0

    .line 981
    .local v2, operName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 983
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlot(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 988
    :cond_0
    :goto_0
    const-string v3, "KeyguardSimPinPukView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dealwithSIMInfoChanged, slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", operName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const v3, 0x210003c

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 990
    .local v1, forText:Landroid/widget/TextView;
    if-nez v2, :cond_2

    .line 992
    const-string v3, "KeyguardSimPinPukView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is first reboot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimFirstBoot:[Z

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    aput-boolean v6, v3, v4

    .line 994
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setForTextNewCard(I)V

    .line 995
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1002
    :cond_1
    :goto_1
    return-void

    .line 984
    .end local v1           #forText:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "KeyguardSimPinPukView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOptrNameBySlot exception, slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 996
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #forText:Landroid/widget/TextView;
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v3, p1, :cond_1

    .line 997
    const-string v3, "KeyguardSimPinPukView"

    const-string v4, "dealwithSIMInfoChanged, we will refresh the SIMinfo"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v5, 0x205007e

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCardInfoExt:Lcom/mediatek/common/policy/ICardInfoExt;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, p1, v5, v2}, Lcom/mediatek/common/policy/ICardInfoExt;->addOptrNameBySlot(Landroid/widget/TextView;ILandroid/content/Context;Ljava/lang/String;)V

    .line 1000
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private getNextRepollStateSimId()I
    .locals 4

    .prologue
    .line 1088
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mLastSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    .line 1089
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getMaxSimId()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 1090
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->isPinPukOrMeRequired(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1089
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1094
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 1095
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 1102
    .end local v0           #i:I
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_1
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getRetryMe(I)Ljava/lang/String;
    .locals 7
    .parameter "simId"

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryMeCount(I)I

    move-result v0

    .line 477
    .local v0, meRetryCount:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v3, 0x205001a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRetryMeCount(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimMeLeftRetryCount(I)I

    move-result v0

    return v0
.end method

.method private getRetryPin(I)Ljava/lang/String;
    .locals 6
    .parameter "simId"

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPinCount(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinRetryCount:I

    .line 466
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinRetryCount:I

    packed-switch v0, :pswitch_data_0

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, 0x205001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinRetryCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 468
    :pswitch_0
    const-string v0, " "

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getRetryPinCount(I)I
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, -0x1

    .line 436
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 437
    const-string v0, "gsm.sim.retry.pin1.4"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 443
    :goto_0
    return v0

    .line 438
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 439
    const-string v0, "gsm.sim.retry.pin1.3"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 440
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 441
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 443
    :cond_2
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk(I)Ljava/lang/String;
    .locals 6
    .parameter "simId"

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPukCount(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukRetryCount:I

    .line 455
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukRetryCount:I

    packed-switch v0, :pswitch_data_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, 0x205001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukRetryCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 457
    :pswitch_0
    const-string v0, " "

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getRetryPukCount(I)I
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v2, -0x1

    .line 423
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 424
    const-string v0, "gsm.sim.retry.puk1.4"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 430
    :goto_0
    return v0

    .line 425
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 426
    const-string v0, "gsm.sim.retry.puk1.3"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 427
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 428
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 430
    :cond_2
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 638
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 639
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 641
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, #string@kg_sim_unlock_progress_dialog_message#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    const/4 v2, -0x1

    sget-object v3, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 643
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 646
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 647
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 652
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method

.method private initMembers()V
    .locals 3

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 215
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 218
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getNumOfSim()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimFirstBoot:[Z

    .line 219
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->getNumOfSim()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimFirstBoot:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

.method private isSimLockDisplay(II)Z
    .locals 10
    .parameter "slot"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x1

    const/4 v3, 0x1

    .line 873
    if-gez p1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return v2

    .line 877
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sim_lock_state_setting"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 879
    .local v1, simLockState:Ljava/lang/Long;
    move-object v0, v1

    .line 881
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-int/lit8 v6, p1, 0x2

    ushr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 882
    if-ne v3, p2, :cond_2

    .line 883
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 884
    goto :goto_0

    .line 888
    :cond_2
    const/4 v4, 0x2

    if-ne v4, p2, :cond_3

    .line 889
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    ushr-long/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 890
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 891
    goto :goto_0

    :cond_3
    move v2, v3

    .line 896
    goto :goto_0
.end method

.method private minusRetryMeCount(I)V
    .locals 1
    .parameter "simId"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->minusSimMeLeftRetryCount(I)V

    .line 452
    return-void
.end method

.method private setForTextNewCard(I)V
    .locals 7
    .parameter "simId"

    .prologue
    .line 968
    const v2, 0x210003c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 969
    .local v1, forText:Landroid/widget/TextView;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 971
    .local v0, forSb:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v3, 0x205007e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 972
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 973
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v3, 0x205007f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 975
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->SIMTOUIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p1, v4, v5}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    return-void
.end method

.method private setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    .locals 5
    .parameter "message"
    .parameter "shouldDisplay"

    .prologue
    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 404
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 405
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, #string@ok#t

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 411
    .local v0, newDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 413
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 415
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 419
    .end local v0           #newDialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->show()V

    goto :goto_0
.end method

.method private setSIMCardName(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    .line 1006
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 1010
    :cond_0
    const/4 v1, 0x0

    .line 1012
    .local v1, s:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlot(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1016
    :goto_1
    const-string v2, "KeyguardSimPinPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSimId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    if-eqz v1, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCardInfoExt:Lcom/mediatek/common/policy/ICardInfoExt;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p1, v4, v1}, Lcom/mediatek/common/policy/ICardInfoExt;->addOptrNameBySlot(Landroid/widget/TextView;ILandroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "KeyguardSimPinPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSIMCardName::getOptrNameBySlot exception, slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1021
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimFirstBoot:[Z

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    aget-boolean v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1022
    const-string v2, "KeyguardSimPinPukView"

    const-string v3, "setSIMCardName for the first reboot"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setForTextNewCard(I)V

    goto :goto_0

    .line 1025
    :cond_2
    const-string v2, "KeyguardSimPinPukView"

    const-string v3, "setSIMCardName for seaching SIM card"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    const v3, 0x20500a9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private setSimLockScreenDone(II)V
    .locals 6
    .parameter "slot"
    .parameter "type"

    .prologue
    .line 900
    if-gez p1, :cond_0

    .line 923
    :goto_0
    return-void

    .line 904
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->isSimLockDisplay(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 905
    const-string v2, "KeyguardSimPinPukView"

    const-string v3, "setSimLockScreenDone the SimLock display is done"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 909
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 912
    .local v1, simLockState:Ljava/lang/Long;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 914
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-int/lit8 v4, p1, 0x2

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 915
    const-string v2, "KeyguardSimPinPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimLockScreenDone1 bitset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const/4 v2, 0x2

    if-ne v2, p2, :cond_2

    .line 917
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 919
    :cond_2
    const-string v2, "KeyguardSimPinPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimLockScreenDone2 bitset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 922
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0
.end method

.method private simStateReadyProcess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1068
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getNextRepollStateSimId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNextRepollStateSimId:I

    .line 1069
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNextRepollStateSimId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1072
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1073
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repollIccStateForNetworkLock simId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNextRepollStateSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const-string v1, "phoneEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNextRepollStateSimId:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->repollIccStateForNetworkLock(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :goto_0
    return-void

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "repollIccStateForNetworkLock exception caught"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1081
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0
.end method

.method private updatePinEnterScreen()V
    .locals 6

    .prologue
    const v5, 0x2050013

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 493
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    packed-switch v0, :pswitch_data_0

    .line 534
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 536
    return-void

    .line 495
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukText:Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukText:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->validatePin(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x2050015

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 507
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->validatePin(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    .line 510
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, 0x2050014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x20500a3

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto/16 :goto_0

    .line 519
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 520
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, 0x20500a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 526
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const-string v1, ""

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 481
    if-eqz p2, :cond_1

    move v0, v1

    .line 483
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 485
    :cond_0
    const/4 v1, 0x0

    .line 487
    :goto_1
    return v1

    .line 481
    .end local v0           #pinMinimum:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 487
    .restart local v0       #pinMinimum:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 282
    const v0, 0x2100041

    return v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1062
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->hideBouncer(I)V

    .line 1063
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 245
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onDetachedFromWindow()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mDismissSimPinPukRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 253
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 287
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 290
    const v3, 0x210004e

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, ok:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 292
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    :cond_0
    const v3, 0x2100042

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 304
    .local v2, pinDelete:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 306
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 325
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 328
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 331
    const v3, 0x210004c

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 332
    .local v0, dismissButton:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 333
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    :cond_2
    const v3, 0x20500a1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 368
    const v3, 0x2100041

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    .line 369
    const v3, 0x210003d

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    .line 371
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20d001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardNamePadding:I

    .line 374
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v5}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 375
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public onResume(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 389
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 394
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "IME is showing, we should hide it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 399
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    .line 1274
    if-eqz p1, :cond_3

    .line 1275
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 1276
    .local v2, state:Lcom/android/internal/telephony/IccCardConstants$State;
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPinCount(I)I

    move-result v0

    .line 1277
    .local v0, pinRetryCount:I
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPukCount(I)I

    move-result v1

    .line 1278
    .local v1, pukRetryCount:I
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinRetryCount:I

    if-ne v3, v0, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukRetryCount:I

    if-eq v3, v1, :cond_2

    .line 1280
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->updateSimState()V

    .line 1284
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 1286
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->resetState()V

    .line 1288
    .end local v0           #pinRetryCount:I
    .end local v1           #pukRetryCount:I
    .end local v2           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    return-void
.end method

.method public resetState()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 278
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 926
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVerifyResult verifyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 928
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 929
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :goto_0
    return-void

    .line 932
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 933
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 934
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public setSimId(I)V
    .locals 4
    .parameter "simId"

    .prologue
    .line 256
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->updateSimState()V

    .line 259
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 265
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    .line 267
    :cond_1
    const-string v1, "gsm.siminfo.ready"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, siminfoupdate:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "siminfo already update, we should read value from the siminfoxxxx"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->dealwithSIMInfoChanged(I)V

    .line 273
    .end local v0           #siminfoupdate:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 9
    .parameter "button"

    .prologue
    const/4 v6, 0x0

    .line 943
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 946
    .local v2, newState:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 947
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 949
    .local v1, isVoiceCapable:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 950
    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    .line 952
    const v5, #string@lockscreen_return_to_call#t

    .line 953
    .local v5, textId:I
    const v3, 0x20200b8

    .line 954
    .local v3, phoneCallIcon:I
    invoke-virtual {p1, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 960
    .end local v3           #phoneCallIcon:I
    :goto_1
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 964
    .end local v5           #textId:I
    :goto_2
    return-void

    .end local v1           #isVoiceCapable:Z
    :cond_0
    move v1, v6

    .line 947
    goto :goto_0

    .line 956
    .restart local v1       #isVoiceCapable:Z
    :cond_1
    const v5, #string@lockscreen_emergency_call#t

    .line 957
    .restart local v5       #textId:I
    const v0, 0x20200b8

    .line 958
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 962
    .end local v0           #emergencyIcon:I
    .end local v5           #textId:I
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateSimState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1032
    const-string v2, "KeyguardSimPinPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimSate, simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSimFirstBoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimFirstBoot:[Z

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSIMCardName(I)V

    .line 1037
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1038
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 1039
    .local v1, state:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v1, :cond_1

    .line 1040
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v4, 0x2050011

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1041
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1042
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    .line 1054
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v7}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 1056
    return-void

    .line 1043
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v1, :cond_2

    .line 1044
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v4, #string@keyguard_password_enter_pin_code#t

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1045
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPin(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1046
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    goto :goto_0

    .line 1047
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v1, :cond_0

    .line 1048
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimMeCategory(I)I

    move-result v0

    .line 1049
    .local v0, category:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v4, 0x205007d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1050
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->strLockName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryMe(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1051
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUnlockEnterState:I

    goto/16 :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 657
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, entry:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_1

    .line 665
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v2, #string@kg_invalid_sim_pin_hint#t

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 670
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 675
    :goto_1
    return-void

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v2, 0x20500a3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 674
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->dealWithPinOrPukUnlock()V

    goto :goto_1
.end method
