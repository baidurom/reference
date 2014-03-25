.class Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;
.super Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.source "PatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$4;,
        Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "UnlockScreen"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationOrientation:I

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mForgotPatternButton:Landroid/widget/Button;

.field private final mForgotPatternClick:Landroid/view/View$OnClickListener;

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mTotalFailedPatternAttempts:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;I)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 82
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLastPokeTime:J

    .line 87
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mForgotPatternClick:Landroid/view/View$OnClickListener;

    .line 149
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 150
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 151
    iput-object p5, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 152
    iput p6, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 153
    rem-int/lit8 v0, p6, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 162
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCreationOrientation:I

    .line 164
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mContext:Landroid/content/Context;

    const v1, #style@Theme.DeviceDefault#t

    invoke-direct {v6, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 165
    .local v6, contexttheme:Landroid/view/ContextThemeWrapper;
    const v0, #style@Theme.DeviceDefault#t

    invoke-virtual {v6, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 166
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 168
    .local v7, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 169
    const-string v0, "UnlockScreen"

    const-string v1, "portrait mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const v0, #layout@keyguard_screen_unlock_portrait#t

    const/4 v1, 0x1

    invoke-virtual {v7, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 176
    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    .line 179
    const v0, #id@lockPattern#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 181
    const v0, #id@forgotPatternButton#t

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const v1, #string@lockscreen_forgot_pattern_button_text#t

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mForgotPatternClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 200
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;)V

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 203
    return-void

    .line 172
    :cond_0
    const-string v0, "UnlockScreen"

    const-string v1, "landscape mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const v0, #layout@keyguard_screen_unlock_landscape#t

    const/4 v1, 0x1

    invoke-virtual {v7, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$608(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mEnableFallback:Z

    return v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 392
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 418
    return-void
.end method

.method private hideForgotPatternButton()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    return-void
.end method

.method private showForgotPatternButton()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 117
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$4;->$SwitchMap$com$android$internal$policy$impl$keyguard$PatternUnlockScreen$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->showForgotPatternButton()V

    goto :goto_0

    .line 128
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 216
    .local v0, result:Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLastPokeTime:J

    .line 221
    :cond_0
    return v0
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 449
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onAttachedToWindow()V

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 235
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 250
    :cond_0
    return-void
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 253
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->onPause()V

    .line 267
    return-void
.end method

.method public onResume(I)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusViewManager;->onResume()V

    .line 275
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 276
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 277
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 280
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mEnableFallback:Z

    if-eqz v2, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->showForgotPatternButton()V

    .line 287
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 288
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->handleAttemptLockout(J)V

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;)V

    .line 302
    :goto_1
    return-void

    .line 283
    .end local v0           #deadline:J
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 295
    .restart local v0       #deadline:J
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mEnableFallback:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 297
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;)V

    goto :goto_1

    .line 299
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen$FooterMode;)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onWindowFocusChanged(Z)V

    .line 317
    if-eqz p1, :cond_0

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->onResume(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 309
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 310
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 312
    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mEnableFallback:Z

    .line 208
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 424
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 429
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 444
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method
