.class public Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "MultithemeUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$1;,
        Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultithemeUnlockScreen"


# instance fields
.field private isBackKeyDown:Ljava/lang/Boolean;

.field private isTouchLeftTop:Ljava/lang/Boolean;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCategory:I

.field private mContext:Landroid/content/Context;

.field public mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

.field private mHandlerCallback:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;

.field private mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

.field private mIsInitSuccess:Ljava/lang/Boolean;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

.field private mLockScreenView:Landroid/view/View;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput v5, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I

    .line 69
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mIsInitSuccess:Ljava/lang/Boolean;

    .line 73
    new-instance v1, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;-><init>(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$1;)V

    iput-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandlerCallback:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;

    .line 262
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isBackKeyDown:Ljava/lang/Boolean;

    .line 263
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isTouchLeftTop:Ljava/lang/Boolean;

    .line 84
    const-string v1, "MultithemeUnlockScreen"

    const-string v2, "MultithemeUnlockScreen onCreate"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-object p3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    iput-object p4, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 88
    iput-object p5, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 89
    iput-object p1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    .line 90
    new-instance v1, Lcom/baidu/themeanimation/util/LockScreenHandler;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandlerCallback:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;

    invoke-direct {v1, v2, v3}, Lcom/baidu/themeanimation/util/LockScreenHandler;-><init>(Landroid/content/Context;Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;)V

    iput-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    .line 92
    new-instance v1, Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v1, v2, v3}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;-><init>(Landroid/content/Context;Lcom/baidu/themeanimation/util/LockScreenHandler;)V

    iput-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    .line 93
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->initlayout()V

    .line 95
    invoke-virtual {p0, v6}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setFocusable(Z)V

    .line 96
    invoke-virtual {p0, v6}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 97
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setDescendantFocusability(I)V

    .line 99
    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mIsInitSuccess:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    const-string v1, "MultithemeUnlockScreen"

    const-string v2, "initlayout failed!"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleMultithemLockscreenEnalbe(Ljava/lang/Integer;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->addView(Landroid/view/View;)V

    .line 110
    const-string v1, "MultithemeUnlockScreen"

    const-string v2, "create multi-lockscreen ok"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->setGlobalVariable()V

    .line 112
    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->register_Receiver_create()V

    .line 113
    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/LockScreenElement;->stopAnimations()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I

    return p1
.end method

.method public static setWallpaperChange()V
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/util/FileUtil;->setWallpaperChanged(Z)V

    .line 181
    return-void
.end method


# virtual methods
.method public dealPause()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "MultithemeUnlockScreen"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->stopAnimations()V

    .line 175
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->unregister_Receiver_pause()V

    .line 177
    :cond_0
    return-void
.end method

.method public dealResume()V
    .locals 3

    .prologue
    .line 184
    const-string v0, "MultithemeUnlockScreen"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->register_Receiver_resume()V

    .line 188
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/themeanimation/element/LockScreenElement;->updateContent(Landroid/content/Context;Landroid/os/Handler;)V

    .line 189
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->startAnimations()V

    .line 191
    :cond_0
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/util/FileUtil;->setTactileFeedbackEnabled(Z)V

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I

    .line 193
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 267
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 269
    .local v0, code:I
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isBackKeyDown:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isTouchLeftTop:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_2

    const/16 v3, 0x19

    if-ne v0, v3, :cond_2

    .line 271
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isBackKeyDown:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    const-string v3, "MultithemeUnlockScreen"

    const-string v4, "unlock directly, using back key and volumn down"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isBackKeyDown:Ljava/lang/Boolean;

    .line 277
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isTouchLeftTop:Ljava/lang/Boolean;

    .line 278
    iget-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 285
    :goto_1
    return v1

    .line 274
    :cond_1
    const-string v3, "MultithemeUnlockScreen"

    const-string v4, "unlock directly, using top left and volumn down"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 283
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isBackKeyDown:Ljava/lang/Boolean;

    .line 285
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 283
    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x42c8

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 211
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isTouchLeftTop:Ljava/lang/Boolean;

    .line 217
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->dispatchTouch(FF)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 221
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 212
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 214
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isTouchLeftTop:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 350
    return-void
.end method

.method public initlayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 121
    const-string v3, "MultithemeUnlockScreen"

    const-string v4, "initlayout "

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mIsInitSuccess:Ljava/lang/Boolean;

    .line 123
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 124
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-nez v3, :cond_0

    .line 125
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    const-string v5, "/data/data/com.baidu.thememanager.ui/files/"

    const-string v6, "lockscreen"

    const-string v7, "wallpaper"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/baidu/themeanimation/util/FileUtil;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v3, "MultithemeUnlockScreen"

    const-string v4, "create LockScreenElement"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, manifestStream:Ljava/io/InputStream;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {v3, v4}, Lcom/baidu/themeanimation/util/FileUtil;->openFile(Landroid/os/Handler;)Ljava/io/InputStream;

    move-result-object v2

    .line 130
    if-eqz v2, :cond_0

    .line 132
    :try_start_0
    invoke-static {}, Lcom/baidu/themeanimation/util/LockScreenParser;->getInstance()Lcom/baidu/themeanimation/util/LockScreenParser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflate(Ljava/io/InputStream;)Lcom/baidu/themeanimation/element/LockScreenElement;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 133
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->holdPersistData(Lcom/baidu/themeanimation/element/LockScreenElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 142
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    .end local v2           #manifestStream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v3, :cond_1

    .line 151
    const-string v3, "MultithemeUnlockScreen"

    const-string v4, "generate LockScreenView"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :try_start_2
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    sget v5, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    sget v6, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    iget-object v7, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->generateView(Landroid/content/Context;IILandroid/os/Handler;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 164
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 165
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mIsInitSuccess:Ljava/lang/Boolean;

    .line 169
    :goto_2
    return-void

    .line 143
    .restart local v2       #manifestStream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 143
    :catch_2
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 137
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 143
    :catch_4
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 142
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 143
    :catch_6
    move-exception v0

    .line 144
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 142
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 145
    :goto_3
    throw v3

    .line 143
    :catch_7
    move-exception v0

    .line 144
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 156
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #manifestStream:Ljava/io/InputStream;
    :catch_8
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/IllegalStateException;
    iput-object v9, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    .line 158
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 159
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_9
    move-exception v1

    .line 160
    .local v1, e1:Ljava/lang/Exception;
    iput-object v9, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    .line 161
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 167
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mIsInitSuccess:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->dealPause()V

    .line 303
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->dealResume()V

    .line 309
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    const-string v0, "MultithemeUnlockScreen"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->unregister_Receiver_destory()V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->releaseView()V

    .line 333
    :cond_1
    iput-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    .line 334
    iput-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 335
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 314
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 319
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 345
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method
