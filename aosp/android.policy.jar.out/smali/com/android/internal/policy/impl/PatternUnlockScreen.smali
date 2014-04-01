.class Lcom/android/internal/policy/impl/PatternUnlockScreen;
.super Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.source "PatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PatternUnlockScreen$4;,
        Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;
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
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationOrientation:I

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mForgotPatternButton:Landroid/widget/Button;

.field private final mForgotPatternClick:Landroid/view/View$OnClickListener;

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mTotalFailedPatternAttempts:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
    .locals 11
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 85
    const-wide/16 v1, -0x1b58

    iput-wide v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    .line 90
    new-instance v1, Lcom/android/internal/policy/impl/PatternUnlockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance v1, Lcom/android/internal/policy/impl/PatternUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternClick:Landroid/view/View$OnClickListener;

    .line 152
    iput-object p3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 153
    iput-object p4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 154
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 155
    move/from16 v0, p6

    iput v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 156
    rem-int/lit8 v1, p6, 0x5

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 165
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    .line 167
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 169
    .local v8, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 170
    .local v10, res:Landroid/content/res/Resources;
    const-string v1, "lockscreen.rot_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, #bool@config_enableLockScreenRotation#t

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 173
    .local v7, enableScreenRotation:Z
    :goto_0
    if-eqz v7, :cond_3

    .line 175
    iget v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 176
    const-string v1, "UnlockScreen"

    const-string v2, "portrait mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v1, "UnlockScreen"

    const-string v2, "we will initialize the pattern portrait layout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const v1, #layout@keyguard_screen_unlock_portrait_gemini#t

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 207
    :goto_1
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 210
    const v1, #id@unlock_widget#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 212
    const v1, #id@forgotPatternButton#t

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const v2, #string@lockscreen_forgot_pattern_button_text#t

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 214
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 221
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 222
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 225
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v9, 0x4

    .line 232
    .local v9, invisible:I
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v9}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 234
    sget-object v1, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    .line 236
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 237
    return-void

    .line 170
    .end local v7           #enableScreenRotation:Z
    .end local v9           #invisible:I
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 185
    .restart local v7       #enableScreenRotation:Z
    :cond_2
    const-string v1, "UnlockScreen"

    const-string v2, "landscape mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v1, "UnlockScreen"

    const-string v2, "we will initialize the pattern gemini land layout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const v1, #layout@keyguard_screen_unlock_landscape_gemini#t

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 197
    :cond_3
    const-string v1, "UnlockScreen"

    const-string v2, "portrait mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v1, "UnlockScreen"

    const-string v2, "we will initialize the pattern portrait layout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const v1, #layout@keyguard_screen_unlock_portrait_gemini#t

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 225
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 231
    :cond_5
    const/4 v9, 0x0

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$608(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/PatternUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PatternUnlockScreen;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    return v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 425
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 451
    return-void
.end method

.method private hideForgotPatternButton()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    return-void
.end method

.method private showForgotPatternButton()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 120
    sget-object v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->$SwitchMap$com$android$internal$policy$impl$PatternUnlockScreen$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 123
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 127
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->showForgotPatternButton()V

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 342
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 343
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 344
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 346
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 250
    .local v0, result:Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    .line 255
    :cond_0
    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onAttachedToWindow()V

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 269
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 281
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 284
    :cond_0
    return-void
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 287
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 301
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 310
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 311
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 314
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->showForgotPatternButton()V

    .line 321
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 322
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 323
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    sget-object v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    .line 336
    :goto_1
    return-void

    .line 317
    .end local v0           #deadline:J
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->hideForgotPatternButton()V

    goto :goto_0

    .line 329
    .restart local v0       #deadline:J
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 331
    sget-object v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    goto :goto_1

    .line 333
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onWindowFocusChanged(Z)V

    .line 351
    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->onResume()V

    .line 355
    :cond_0
    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    .line 242
    return-void
.end method
