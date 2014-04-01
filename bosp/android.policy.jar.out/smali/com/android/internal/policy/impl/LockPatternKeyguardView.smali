.class public Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/KeyguardViewBase;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DEBUG:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final FAILED_FACE_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0xf

.field private static final TAG:Ljava/lang/String; = "LockPatternKeyguardView"

.field private static final TRANSPORT_USERACTIVITY_TIMEOUT:I = 0x2710


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final FACELOCK_VIEW_AREA_EMERGENCY_DIALER_TIMEOUT:I

.field private final FACELOCK_VIEW_AREA_SERVICE_TIMEOUT:I

.field private final MSG_HIDE_FACELOCK_AREA_VIEW:I

.field private final MSG_SHOW_FACELOCK_AREA_VIEW:I

.field private mBoundToFaceLockService:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mEnableFallback:Z

.field private mFaceLockAreaView:Landroid/view/View;

.field private final mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceLockConnection:Landroid/content/ServiceConnection;

.field private mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mFaceLockServiceRunning:Z

.field private final mFaceLockServiceRunningLock:Ljava/lang/Object;

.field private final mFaceLockStartupLock:Ljava/lang/Object;

.field private mFailedFaceUnlockAttempts:I

.field private mForgotPattern:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasOverlay:Z

.field private mIsVerifyUnlockOnly:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreen:Landroid/view/View;

.field private mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

.field private mRecreateRunnable:Ljava/lang/Runnable;

.field private mRequiresSim:Z

.field private mSavedState:Landroid/os/Parcelable;

.field private volatile mScreenOn:Z

.field private mShowLockBeforeUnlock:Z

.field private mTransportControlView:Lcom/android/internal/widget/TransportControlView;

.field private mUnlockScreen:Landroid/view/View;

.field private mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

.field private final mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

.field private volatile mWindowFocused:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .locals 3
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 329
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;-><init>(Landroid/content/Context;)V

    .line 109
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    .line 125
    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_SHOW_FACELOCK_AREA_VIEW:I

    .line 126
    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_HIDE_FACELOCK_AREA_VIEW:I

    .line 130
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->FACELOCK_VIEW_AREA_EMERGENCY_DIALER_TIMEOUT:I

    .line 135
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->FACELOCK_VIEW_AREA_SERVICE_TIMEOUT:I

    .line 138
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->BACKUP_LOCK_TIMEOUT:I

    .line 141
    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    .line 206
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 212
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 214
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 233
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    .line 253
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    .line 1402
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    .line 1479
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    .line 331
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 333
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    .line 334
    const-string v0, "keyguard.no_require_sim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    .line 335
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 336
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 337
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    .line 338
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerDeviceInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$deviceInfoCallback;)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerPhoneStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;)V

    .line 343
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 506
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setFocusableInTouchMode(Z)V

    .line 507
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setDescendantFocusability(I)V

    .line 509
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 510
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 511
    return-void
.end method

.method private IsSIMPINRequired()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1079
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    .line 1080
    .local v1, simState2:Lcom/android/internal/telephony/IccCard$State;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1082
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 1084
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v2, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    move v2, v3

    .line 1095
    :cond_2
    :goto_0
    return v2

    .line 1089
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_5
    move v2, v3

    .line 1093
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockAreaWithTimeout(J)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtWipeDialog(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showTimeoutDialog()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    return p1
.end method

.method static synthetic access$2108(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/IFaceLockCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->restoreWidgetState()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return p1
.end method

.method private activateFaceLockIfAble()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0xbb8

    .line 612
    iget v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_3

    move v2, v3

    .line 614
    .local v2, tooManyFaceUnlockTries:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 615
    .local v1, failedBackupAttempts:I
    const/4 v5, 0x5

    if-lt v1, v5, :cond_4

    move v0, v3

    .line 617
    .local v0, backupIsTimedOut:Z
    :goto_1
    if-eqz v2, :cond_0

    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tooManyFaceUnlockTries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->bindToFaceLock()V

    .line 627
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 628
    invoke-direct {p0, v7, v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockAreaWithTimeout(J)V

    .line 630
    :cond_1
    invoke-direct {p0, v7, v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockAreaWithTimeout(J)V

    .line 635
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 636
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 638
    invoke-direct {p0, v7, v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockAreaWithTimeout(J)V

    .line 643
    :cond_2
    :goto_2
    return-void

    .end local v0           #backupIsTimedOut:Z
    .end local v1           #failedBackupAttempts:I
    .end local v2           #tooManyFaceUnlockTries:Z
    :cond_3
    move v2, v4

    .line 612
    goto :goto_0

    .restart local v1       #failedBackupAttempts:I
    .restart local v2       #tooManyFaceUnlockTries:Z
    :cond_4
    move v0, v4

    .line 615
    goto :goto_1

    .line 641
    .restart local v0       #backupIsTimedOut:Z
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    goto :goto_2
.end method

.method private getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 1

    .prologue
    .line 1067
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 1073
    :goto_0
    return-object v0

    .line 1070
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-eqz v0, :cond_2

    .line 1071
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_0

    .line 1073
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_0
.end method

.method private getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1103
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .line 1104
    .local v3, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 1105
    .local v2, sim2State:Lcom/android/internal/telephony/IccCard$State;
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1106
    .local v0, currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v5, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1110
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1143
    :goto_0
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUnlockMode, Mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-object v0

    .line 1111
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v6, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1115
    :cond_4
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Sim2Pin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    goto :goto_0

    .line 1117
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 1118
    .local v1, mode:I
    sparse-switch v1, :sswitch_data_0

    .line 1139
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown unlock mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1123
    :sswitch_0
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1124
    goto :goto_0

    .line 1127
    :sswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1129
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1130
    :cond_6
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    goto :goto_0

    .line 1132
    :cond_7
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    goto :goto_0

    .line 1135
    :cond_8
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1137
    goto :goto_0

    .line 1118
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private hideFaceLockArea()V
    .locals 2

    .prologue
    .line 1349
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeFaceLockAreaDisplayMessages()V

    .line 1350
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1351
    return-void
.end method

.method private initializeFaceLockAreaView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1273
    const v0, #id@faceLockAreaView#t

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    .line 1274
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1275
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Layout does not have faceLockAreaView and FaceLock is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "we want to show the faceunlock view, mHasOverlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v0, :cond_2

    .line 1283
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    .line 1287
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-eqz v0, :cond_0

    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 1293
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    goto :goto_0

    .line 1285
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    goto :goto_1

    .line 1297
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    goto :goto_0
.end method

.method private initializeTransportControlView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1052
    const v0, #id@transport#t

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/TransportControlView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    .line 1053
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-nez v0, :cond_0

    .line 1060
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1057
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 870
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .line 871
    .local v1, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    const/4 v0, 0x0

    .line 872
    .local v0, secure:Z
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;->$SwitchMap$com$android$internal$policy$impl$LockPatternKeyguardView$UnlockMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 902
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 874
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    .line 875
    const-string v2, "LockPatternKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSecure, Pattern, secure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :goto_0
    :pswitch_1
    return v0

    .line 879
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v2, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v0, v3

    .line 883
    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    .line 879
    goto :goto_1

    .line 886
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move v0, v3

    .line 890
    :goto_2
    goto :goto_0

    :cond_5
    move v0, v2

    .line 886
    goto :goto_2

    .line 893
    :pswitch_4
    const/4 v0, 0x1

    .line 894
    goto :goto_0

    .line 896
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    .line 897
    goto :goto_0

    .line 872
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 567
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;)V

    .line 568
    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->start()V

    .line 569
    return-void
.end method

.method private recreateLockScreen()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 723
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 727
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 729
    return-void
.end method

.method private recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V
    .locals 2
    .parameter "unlockMode"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 739
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 740
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 742
    return-void
.end method

.method private removeFaceLockAreaDisplayMessages()V
    .locals 2

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1336
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1337
    return-void
.end method

.method private restoreWidgetState()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 676
    :cond_0
    return-void
.end method

.method private saveWidgetState()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v0}, Lcom/android/internal/widget/TransportControlView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    .line 667
    :cond_0
    return-void
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 8

    .prologue
    .line 1183
    const/16 v2, 0x1e

    .line 1184
    .local v2, timeoutInSeconds:I
    const/16 v0, 0xf

    .line 1186
    .local v0, count:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, #string@lockscreen_failed_attempts_almost_glogin#t

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1188
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 7
    .parameter "attempts"
    .parameter "remaining"

    .prologue
    .line 1192
    const/16 v1, 0x1e

    .line 1193
    .local v1, timeoutInSeconds:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v3, #string@lockscreen_failed_attempts_almost_at_wipe#t

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 1156
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, #string@ok#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1161
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1162
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1163
    return-void
.end method

.method private showFaceLockArea()V
    .locals 2

    .prologue
    .line 1342
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeFaceLockAreaDisplayMessages()V

    .line 1343
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1344
    return-void
.end method

.method private showFaceLockAreaWithTimeout(J)V
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 1355
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    .line 1356
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1357
    return-void
.end method

.method private showTimeoutDialog()V
    .locals 7

    .prologue
    .line 1166
    const/16 v2, 0x1e

    .line 1167
    .local v2, timeoutInSeconds:I
    const v1, #string@lockscreen_too_many_failed_attempts_dialog_message#t

    .line 1168
    .local v1, messageId:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v4, :cond_0

    .line 1169
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1171
    const v1, #string@lockscreen_too_many_failed_pin_attempts_dialog_message#t

    .line 1176
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    return-void

    .line 1173
    .end local v0           #message:Ljava/lang/String;
    :cond_1
    const v1, #string@lockscreen_too_many_failed_password_attempts_dialog_message#t

    goto :goto_0
.end method

.method private showWipeDialog(I)V
    .locals 6
    .parameter "attempts"

    .prologue
    .line 1199
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v2, #string@lockscreen_failed_attempts_now_wiping#t

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1201
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    return-void
.end method

.method private stopFaceLockIfRunning()Z
    .locals 1

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-eqz v0, :cond_0

    .line 1304
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 1305
    const/4 v0, 0x1

    .line 1307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stuckOnLockScreenBecauseSimMissing()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    .locals 7
    .parameter "mode"
    .parameter "force"

    .prologue
    .line 909
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** UPDATE SCREEN: mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " last mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", force = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 915
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-eq p1, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-eqz v4, :cond_2

    .line 916
    :cond_0
    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-nez v4, :cond_2

    .line 917
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateLockScreen()V

    .line 922
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v2

    .line 923
    .local v2, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v4, :cond_4

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v2, v4, :cond_4

    .line 924
    if-nez p2, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v2, v4, :cond_4

    .line 925
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLockIfRunning()Z

    move-result v1

    .line 926
    .local v1, restartFaceLock:Z
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V

    .line 927
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    .line 932
    .end local v1           #restartFaceLock:Z
    :cond_4
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v4, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 933
    .local v0, goneScreen:Landroid/view/View;
    :goto_0
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v4, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 937
    .local v3, visibleScreen:Landroid/view/View;
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-object v4, v3

    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->needsInput()Z

    move-result v4

    invoke-interface {v5, v4}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setNeedsInput(Z)V

    .line 944
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v4, :cond_6

    .line 945
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    move-object v4, v0

    .line 946
    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 948
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v3

    .line 949
    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 953
    :cond_6
    if-eqz v0, :cond_7

    .line 954
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 956
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->requestLayout()V

    .line 959
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_a

    .line 960
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyguard screen must be able to take focus when shown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 932
    .end local v0           #goneScreen:Landroid/view/View;
    .end local v3           #visibleScreen:Landroid/view/View;
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    goto :goto_0

    .line 933
    .restart local v0       #goneScreen:Landroid/view/View;
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    goto :goto_1

    .line 963
    .restart local v3       #visibleScreen:Landroid/view/View;
    :cond_a
    return-void
.end method

.method private usingFaceLock()Z
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindToFaceLock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1362
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-nez v0, :cond_1

    .line 1365
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1369
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Attempt to bind to FaceLock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 845
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 847
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 848
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 849
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 853
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 854
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 855
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 858
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_2

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 865
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 867
    :cond_2
    return-void

    .line 861
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method createLockScreen()Landroid/view/View;
    .locals 6

    .prologue
    .line 966
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->createLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;

    move-result-object v0

    .line 972
    .local v0, lockView:Landroid/view/View;
    return-object v0
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 11
    .parameter "unlockMode"

    .prologue
    .line 976
    const/4 v1, 0x0

    .line 981
    .local v1, unlockView:Landroid/view/View;
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_1

    .line 982
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V

    .line 989
    .local v0, view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableFallback(Z)V

    .line 990
    move-object v1, v0

    .line 1038
    .end local v0           #view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    .restart local v1       #unlockView:Landroid/view/View;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    .line 1039
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeFaceLockAreaView(Landroid/view/View;)V

    .line 1041
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object v3, v1

    .line 1042
    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1043
    .local v9, child:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 1044
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #dimen@status_bar_height#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v9, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    move-object v3, v1

    .line 1048
    .end local v9           #child:Landroid/view/View;
    :goto_1
    return-object v3

    .line 991
    :cond_1
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_2

    .line 992
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 998
    :cond_2
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Sim2Pin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_3

    .line 999
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 1005
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_4

    .line 1007
    :try_start_0
    new-instance v2, Lcom/android/internal/policy/impl/AccountUnlockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #unlockView:Landroid/view/View;
    .local v2, unlockView:Landroid/view/View;
    move-object v1, v2

    .line 1027
    .end local v2           #unlockView:Landroid/view/View;
    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 1013
    :catch_0
    move-exception v10

    .line 1014
    .local v10, e:Ljava/lang/IllegalStateException;
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "Couldn\'t instantiate AccountUnlockScreen (IAccountsService isn\'t available)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 1028
    .end local v10           #e:Ljava/lang/IllegalStateException;
    :cond_4
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_5

    .line 1029
    new-instance v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    .line 1036
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown unlock mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 580
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 581
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 805
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 806
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 809
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 1315
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1327
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Unhandled message"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :goto_0
    return v0

    .line 1317
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1322
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClockVisibilityChanged()V
    .locals 3

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getSystemUiVisibility()I

    move-result v1

    const v2, -0x800001

    and-int v0, v1, v2

    .line 779
    .local v0, visFlags:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isClockVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x80

    :goto_0
    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setSystemUiVisibility(I)V

    .line 781
    return-void

    .line 779
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 757
    .local v0, resources:Landroid/content/res/Resources;
    const v1, #bool@config_enableLockBeforeUnlockScreen#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 758
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 760
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->saveWidgetState()V

    .line 761
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 762
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 763
    return-void
.end method

.method public onDMKeyguardUpdate()V
    .locals 0

    .prologue
    .line 787
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 750
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 752
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onDetachedFromWindow()V

    .line 753
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 784
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    const/4 v0, 0x1

    .line 793
    if-ne p1, v0, :cond_0

    .line 794
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 795
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 796
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    .line 798
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 593
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 594
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 595
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 596
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 602
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->saveWidgetState()V

    .line 605
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 606
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 650
    .local v0, runFaceLock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 651
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 652
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 653
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->show()V

    .line 657
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->restoreWidgetState()V

    .line 659
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    .line 660
    :cond_0
    return-void

    .line 653
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 686
    .local v0, runFaceLock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 687
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    if-nez v1, :cond_0

    move v0, p1

    .line 688
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 689
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    if-nez p1, :cond_2

    .line 691
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 692
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 693
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    .line 697
    :cond_1
    :goto_0
    return-void

    .line 689
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 694
    :cond_2
    if-eqz v0, :cond_1

    .line 695
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 585
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 586
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 588
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 707
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v0, :cond_1

    .line 712
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    .line 716
    :goto_1
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    goto :goto_0

    .line 714
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    goto :goto_1
.end method

.method public startFaceLock(Landroid/os/IBinder;IIII)V
    .locals 8
    .parameter "windowToken"
    .parameter "x"
    .parameter "y"
    .parameter "h"
    .parameter "w"

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1440
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1441
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1444
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1449
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 1453
    :cond_0
    monitor-exit v7

    .line 1455
    :cond_1
    :goto_0
    return-void

    .line 1445
    :catch_0
    move-exception v6

    .line 1446
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting FaceLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    monitor-exit v7

    goto :goto_0

    .line 1453
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stopAndUnbindFromFaceLock()V
    .locals 2

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1379
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 1381
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-eqz v0, :cond_1

    .line 1383
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_0

    .line 1385
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 1400
    :cond_1
    return-void

    .line 1386
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopFaceLock()V
    .locals 5

    .prologue
    .line 1460
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1464
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1465
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1468
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1472
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 1474
    :cond_0
    monitor-exit v2

    .line 1476
    :cond_1
    return-void

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LockPatternKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping FaceLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1474
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public verifyUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 829
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 841
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    .line 835
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 838
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 839
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 815
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 819
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 820
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 825
    :goto_0
    return-void

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_0
.end method
