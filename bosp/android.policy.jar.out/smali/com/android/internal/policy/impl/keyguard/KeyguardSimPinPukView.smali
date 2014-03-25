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
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;
    }
.end annotation


# static fields
.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final SIMLOCK_TYPE_PIN:I = 0x1

.field private static final SIMLOCK_TYPE_SIMMELOCK:I = 0x2

.field private static final STATE_ENTER_FINISH:I = 0x4

.field private static final STATE_ENTER_NEW:I = 0x2

.field private static final STATE_ENTER_PIN:I = 0x0

.field private static final STATE_ENTER_PUK:I = 0x1

.field private static final STATE_REENTER_NEW:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeyguardSimPinPukView"

.field static final VERIFY_TYPE_PIN:I = 0x1f5


# instance fields
.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mMoreInfoBtn:Landroid/widget/Button;

.field private mMoreInfoIndicator:Landroid/view/View;

.field private mNewPinText:Ljava/lang/String;

.field private mPINRetryCount:I

.field private mPUKRetryCount:I

.field private mPinText:Landroid/widget/TextView;

.field private mPukEnterState:I

.field private mPukText:Ljava/lang/String;

.field private mSIMCardName:Landroid/widget/TextView;

.field private mSIMCardNamePadding:I

.field private mSim1FirstBoot:Z

.field private mSim2FirstBoot:Z

.field private mSim2PINRetryCount:I

.field private mSim2PUKRetryCount:I

.field public mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimCardDialog:Landroid/app/AlertDialog;

.field private volatile mSimCheckInProgress:Z

.field public mSimId:I

.field public mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 71
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    .line 75
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    .line 76
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    .line 77
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoIndicator:Landroid/view/View;

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    .line 143
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->dealwithSIMInfoChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSIMCardName(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPinCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPukCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPUKRetryCount:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimLockScreenDone(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->displaySimCardInfo(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    return p1
.end method

.method private checkPin()V
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPin(I)V

    .line 624
    return-void
.end method

.method private checkPin(I)V
    .locals 3
    .parameter "simId"

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 628
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    .line 630
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->start()V

    .line 678
    :cond_0
    return-void
.end method

.method private checkPuk()V
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPuk(I)V

    .line 682
    return-void
.end method

.method private checkPuk(I)V
    .locals 4
    .parameter "simId"

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->updatePinEnterScreen()V

    .line 686
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 690
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    if-nez v0, :cond_0

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    .line 692
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->start()V

    goto :goto_0
.end method

.method private dealwithSIMInfoChanged(I)V
    .locals 12
    .parameter "slotId"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    .line 835
    .local v5, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    const/4 v4, 0x0

    .line 836
    .local v4, operName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 837
    .local v0, bkground:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 839
    int-to-long v6, p1

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 845
    :goto_0
    int-to-long v6, p1

    :try_start_1
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlot(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 850
    :cond_0
    :goto_1
    const-string v6, "KeyguardSimPinPukView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dealwithSIMInfoChanged, slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", operName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const v6, 0x210003c

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 852
    .local v2, forText:Landroid/widget/TextView;
    if-nez v4, :cond_3

    .line 853
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 854
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 855
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v10, v6, :cond_2

    .line 858
    const-string v6, "KeyguardSimPinPukView"

    const-string v7, "SIM2 is first reboot"

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    .line 860
    const v6, 0x20500ad

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 867
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 868
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoIndicator:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 880
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    :goto_3
    return-void

    .line 840
    .end local v2           #forText:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 841
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "KeyguardSimPinPukView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOptrDrawableBySlot exception, slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 846
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 847
    .restart local v1       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "KeyguardSimPinPukView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOptrNameBySlot exception, slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 862
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #forText:Landroid/widget/TextView;
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const-string v6, "KeyguardSimPinPukView"

    const-string v7, "SIM1 is first reboot"

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    .line 864
    const v6, 0x20500ac

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 869
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v6, p1, :cond_1

    .line 870
    const-string v6, "KeyguardSimPinPukView"

    const-string v7, "dealwithSIMInfoChanged, we will refresh the SIMinfo"

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 872
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoIndicator:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 873
    const-string v6, ""

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    if-eqz v0, :cond_1

    .line 876
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 877
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardNamePadding:I

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardNamePadding:I

    invoke-virtual {v6, v7, v9, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3
.end method

.method private displaySimCardInfo(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 335
    .local v0, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    if-nez p1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSIMInserted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM1_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;)V

    .line 344
    :goto_0
    return-void

    .line 337
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSIMInserted(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM1_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;)V

    goto :goto_0

    .line 339
    :cond_1
    if-ne v2, p1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSIMInserted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM2_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;)V

    goto :goto_0

    .line 342
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM2_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;)V

    goto :goto_0
.end method

.method private dualWithPinOrPukUnlock()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 598
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 599
    .local v0, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 600
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-nez v1, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v3, v1, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_3

    .line 602
    :cond_1
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick, check PIN, mSimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPin(I)V

    .line 620
    :cond_2
    :goto_0
    return-void

    .line 604
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-nez v1, :cond_4

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v3, v1, :cond_6

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_6

    .line 606
    :cond_5
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick, check PUK, mSimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPuk(I)V

    goto :goto_0

    .line 609
    :cond_6
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong status, mSimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_8

    .line 613
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "onClick, check Pin for single SIM"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPin()V

    goto :goto_0

    .line 615
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 616
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "onClick, check PUK for single SIM"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPuk()V

    goto :goto_0
.end method

.method private getRetryPin(I)Ljava/lang/String;
    .locals 6
    .parameter "simId"

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPinCount(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPINRetryCount:I

    .line 432
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPINRetryCount:I

    packed-switch v0, :pswitch_data_0

    .line 438
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

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPINRetryCount:I

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

    .line 434
    :pswitch_0
    const-string v0, " "

    goto :goto_0

    .line 432
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

    .line 412
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 413
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 415
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk(I)Ljava/lang/String;
    .locals 6
    .parameter "simId"

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPukCount(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPUKRetryCount:I

    .line 421
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPUKRetryCount:I

    packed-switch v0, :pswitch_data_0

    .line 427
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

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPUKRetryCount:I

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

    .line 423
    :pswitch_0
    const-string v0, " "

    goto :goto_0

    .line 421
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

    .line 404
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 405
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 407
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getSIMCardName(I)V
    .locals 10
    .parameter "slotId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 883
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 884
    .local v4, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    const/4 v0, 0x0

    .line 885
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 887
    .local v3, s:Ljava/lang/String;
    int-to-long v5, p1

    :try_start_0
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 891
    :goto_0
    if-eqz v0, :cond_0

    .line 892
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 893
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardNamePadding:I

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardNamePadding:I

    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 897
    :cond_0
    int-to-long v5, p1

    :try_start_1
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlot(J)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 901
    :goto_1
    const-string v5, "KeyguardSimPinPukView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mSimId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    if-eqz v3, :cond_1

    .line 904
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    :goto_2
    return-void

    .line 888
    :catch_0
    move-exception v1

    .line 889
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "KeyguardSimPinPukView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSIMCardName::getOptrDrawableBySlot exception, slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 898
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 899
    .restart local v1       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "KeyguardSimPinPukView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSIMCardName::getOptrNameBySlot exception, slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 905
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v5, v9, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    if-nez v5, :cond_3

    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    if-eqz v5, :cond_5

    .line 907
    :cond_3
    const-string v5, "KeyguardSimPinPukView"

    const-string v6, "getSIMCardName for the first reboot"

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const v5, 0x210003c

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 909
    .local v2, forText:Landroid/widget/TextView;
    if-ne v9, p1, :cond_4

    .line 910
    const v5, 0x20500ad

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 912
    :cond_4
    const v5, 0x20500ac

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 915
    .end local v2           #forText:Landroid/widget/TextView;
    :cond_5
    const-string v5, "KeyguardSimPinPukView"

    const-string v6, "getSIMCardName for seaching SIM card"

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    const v6, 0x20500aa

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, #string@kg_sim_unlock_progress_dialog_message#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private isSimLockDisplay(II)Z
    .locals 10
    .parameter "slot"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x1

    const/4 v3, 0x1

    .line 740
    if-gez p1, :cond_1

    .line 763
    :cond_0
    :goto_0
    return v2

    .line 744
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

    .line 746
    .local v1, simLockState:Ljava/lang/Long;
    move-object v0, v1

    .line 748
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-int/lit8 v6, p1, 0x2

    ushr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 749
    if-ne v3, p2, :cond_2

    .line 750
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 751
    goto :goto_0

    .line 755
    :cond_2
    const/4 v4, 0x2

    if-ne v4, p2, :cond_3

    .line 756
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    ushr-long/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 758
    goto :goto_0

    :cond_3
    move v2, v3

    .line 763
    goto :goto_0
.end method

.method private popupSIMInfoDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;)V
    .locals 4
    .parameter "status"

    .prologue
    .line 347
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 348
    .local v1, view:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 349
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSimPinPukView$SIMStatus:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 371
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 372
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x20501ba

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 374
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 375
    const v2, #string@ok#t

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    .line 377
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 379
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 380
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 381
    return-void

    .line 351
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20200e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 355
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20200e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 359
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20200ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 363
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20200ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    .locals 5
    .parameter "message"
    .parameter "shouldDisplay"

    .prologue
    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 386
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 387
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

    .line 393
    .local v0, newDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 397
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 401
    .end local v0           #newDialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->show()V

    goto :goto_0
.end method

.method private setSimLockScreenDone(II)V
    .locals 6
    .parameter "slot"
    .parameter "type"

    .prologue
    .line 767
    if-gez p1, :cond_0

    .line 790
    :goto_0
    return-void

    .line 771
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->isSimLockDisplay(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    const-string v2, "KeyguardSimPinPukView"

    const-string v3, "setSimLockScreenDone the SimLock display is done"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 776
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

    .line 779
    .local v1, simLockState:Ljava/lang/Long;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 781
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-int/lit8 v4, p1, 0x2

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 782
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

    .line 783
    const/4 v2, 0x2

    if-ne v2, p2, :cond_2

    .line 784
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 786
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

    .line 788
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 789
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_0
.end method

.method private updatePinEnterScreen()V
    .locals 6

    .prologue
    const v5, 0x2050013

    const/4 v4, 0x2

    const v2, 0x210003c

    const/4 v3, 0x1

    .line 454
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    if-eqz v1, :cond_1

    .line 456
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x20500ad

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 463
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    packed-switch v1, :pswitch_data_0

    .line 500
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 502
    return-void

    .line 457
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    if-eqz v1, :cond_2

    .line 458
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x20500ac

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 465
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukText:Ljava/lang/String;

    .line 466
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukText:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 467
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    .line 468
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v5, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1

    .line 470
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v2, 0x2050015

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1

    .line 475
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    .line 476
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->validatePin(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 477
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    .line 478
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v2, 0x2050014

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1

    .line 480
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v2, 0x20500a4

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1

    .line 485
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 486
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    .line 487
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 488
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, 0x20500a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 489
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 490
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1

    .line 492
    .end local v0           #sb:Ljava/lang/StringBuffer;
    :cond_5
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    .line 493
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const-string v2, ""

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1

    .line 463
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

    .line 443
    if-eqz p2, :cond_1

    move v0, v1

    .line 445
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 447
    :cond_0
    const/4 v1, 0x0

    .line 449
    :goto_1
    return v1

    .line 443
    .end local v0           #pinMinimum:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 449
    .restart local v0       #pinMinimum:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 209
    const v0, 0x2100042

    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 217
    const v3, 0x210004f

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 218
    .local v1, ok:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 219
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_0
    const v3, 0x2100043

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 231
    .local v2, pinDelete:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 232
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 251
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 252
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 255
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 258
    const v3, 0x210004d

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 259
    .local v0, dismissButton:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 260
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_2
    const v3, 0x20500a2

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 287
    const v3, 0x2100042

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    .line 288
    const v3, 0x210003d

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    .line 289
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    const v3, 0x210003e

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    .line 293
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    const v4, 0x20501b9

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 294
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    const v3, 0x2100040

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoIndicator:Landroid/view/View;

    .line 303
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20d001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardNamePadding:I

    .line 305
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 314
    return-void
.end method

.method public onResume(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 321
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 326
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "IME is showing, we should hide it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 331
    :cond_1
    return-void
.end method

.method public resetState()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 205
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 793
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

    .line 794
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 795
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 796
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :goto_0
    return-void

    .line 799
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 801
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public setSimId(I)V
    .locals 4
    .parameter "simId"

    .prologue
    .line 183
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

    .line 184
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->updateSimState()V

    .line 186
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 192
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    .line 194
    :cond_1
    const-string v1, "gsm.siminfo.ready"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, siminfoupdate:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "siminfo already update, we should read value from the siminfoxxxx"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->dealwithSIMInfoChanged(I)V

    .line 200
    .end local v0           #siminfoupdate:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .locals 9
    .parameter "button"

    .prologue
    const/4 v6, 0x0

    .line 810
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 813
    .local v2, newState:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 814
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 816
    .local v1, isVoiceCapable:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 817
    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    .line 819
    const v5, #string@lockscreen_return_to_call#t

    .line 820
    .local v5, textId:I
    const v3, 0x20200b8

    .line 821
    .local v3, phoneCallIcon:I
    invoke-virtual {p1, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 827
    .end local v3           #phoneCallIcon:I
    :goto_1
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 831
    .end local v5           #textId:I
    :goto_2
    return-void

    .end local v1           #isVoiceCapable:Z
    :cond_0
    move v1, v6

    .line 814
    goto :goto_0

    .line 823
    .restart local v1       #isVoiceCapable:Z
    :cond_1
    const v5, #string@lockscreen_emergency_call#t

    .line 824
    .restart local v5       #textId:I
    const v0, 0x20200b8

    .line 825
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 829
    .end local v0           #emergencyIcon:I
    .end local v5           #textId:I
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateSimState()V
    .locals 9

    .prologue
    const v8, 0x210003c

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 921
    const-string v3, "KeyguardSimPinPukView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSimSate, simId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSim1FirstBoot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mSim2FirstBoot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 925
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    if-eqz v3, :cond_1

    .line 927
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 928
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoIndicator:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 930
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSIMCardName(I)V

    .line 932
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 933
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 934
    .local v2, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 935
    .local v1, state:Lcom/android/internal/telephony/IccCardConstants$State;
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v6, v3, :cond_4

    .line 936
    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .end local v1           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 940
    .restart local v1       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v1, :cond_5

    .line 941
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v4, 0x2050011

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 942
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

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 943
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    .line 949
    :cond_3
    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v6, v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    if-eqz v3, :cond_6

    .line 950
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x20500ad

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 958
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 959
    return-void

    .line 938
    :cond_4
    invoke-virtual {v2, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .end local v1           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 944
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v1, :cond_3

    .line 945
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v4, #string@keyguard_password_enter_pin_code#t

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 946
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

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 947
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    goto :goto_1

    .line 952
    :cond_6
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    if-eqz v3, :cond_7

    .line 953
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x20500ac

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 956
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    .line 583
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, entry:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 587
    .local v1, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_0

    .line 589
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v3, #string@kg_invalid_sim_pin_hint#t

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 590
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 595
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->dualWithPinOrPukUnlock()V

    goto :goto_0
.end method
