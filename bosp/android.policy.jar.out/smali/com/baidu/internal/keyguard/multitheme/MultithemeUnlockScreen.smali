.class public Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "MultithemeUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


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

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCategory:I

.field private mContext:Landroid/content/Context;

.field public mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

.field private mHandlerCallback:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;

.field private mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

.field private mIsInitSuccess:Ljava/lang/Boolean;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

.field private mLockScreenView:Landroid/view/View;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I

    .line 68
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mIsInitSuccess:Ljava/lang/Boolean;

    .line 72
    new-instance v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;-><init>(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$1;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandlerCallback:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;

    .line 259
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isBackKeyDown:Ljava/lang/Boolean;

    .line 260
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isTouchLeftTop:Ljava/lang/Boolean;

    .line 83
    const-string v0, "MultithemeUnlockScreen"

    const-string v1, "MultithemeUnlockScreen onCreate"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-object p3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 86
    iput-object p4, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 87
    iput-object p5, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 88
    iput-object p1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/baidu/themeanimation/util/LockScreenHandler;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandlerCallback:Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen$HandlerCallBack;

    invoke-direct {v0, v1, v2}, Lcom/baidu/themeanimation/util/LockScreenHandler;-><init>(Landroid/content/Context;Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    .line 91
    new-instance v0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-direct {v0, v1, v2}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;-><init>(Landroid/content/Context;Lcom/baidu/themeanimation/util/LockScreenHandler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    .line 92
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->initlayout()V

    .line 94
    invoke-virtual {p0, v4}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setFocusable(Z)V

    .line 95
    invoke-virtual {p0, v4}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 96
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setDescendantFocusability(I)V

    .line 98
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mIsInitSuccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const-string v0, "MultithemeUnlockScreen"

    const-string v1, "initlayout failed!"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleMultithemLockscreenEnalbe(Ljava/lang/Integer;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->addView(Landroid/view/View;)V

    .line 107
    const-string v0, "MultithemeUnlockScreen"

    const-string v1, "create multi-lockscreen ok"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->setGlobalVariable()V

    .line 109
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->register_Receiver_create()V

    .line 110
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->stopAnimations()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I

    return p1
.end method

.method public static setWallpaperChange()V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/util/FileUtil;->setWallpaperChanged(Z)V

    .line 178
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    const-string v0, "MultithemeUnlockScreen"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->unregister_Receiver_destory()V

    .line 308
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->releaseView()V

    .line 312
    :cond_0
    iput-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    .line 313
    iput-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 314
    return-void
.end method

.method public dealPause()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "MultithemeUnlockScreen"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->stopAnimations()V

    .line 172
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->unregister_Receiver_pause()V

    .line 174
    :cond_0
    return-void
.end method

.method public dealResume()V
    .locals 3

    .prologue
    .line 181
    const-string v0, "MultithemeUnlockScreen"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
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

    .line 184
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->register_Receiver_resume()V

    .line 185
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/themeanimation/element/LockScreenElement;->updateContent(Landroid/content/Context;Landroid/os/Handler;)V

    .line 186
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->startAnimations()V

    .line 189
    :cond_0
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/util/FileUtil;->setTactileFeedbackEnabled(Z)V

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCategory:I

    .line 191
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 266
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

    .line 268
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isBackKeyDown:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    const-string v3, "MultithemeUnlockScreen"

    const-string v4, "unlock directly, using back key and volumn down"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isBackKeyDown:Ljava/lang/Boolean;

    .line 274
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isTouchLeftTop:Ljava/lang/Boolean;

    .line 275
    iget-object v2, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 282
    :goto_1
    return v1

    .line 271
    :cond_1
    const-string v3, "MultithemeUnlockScreen"

    const-string v4, "unlock directly, using top left and volumn down"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 280
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isBackKeyDown:Ljava/lang/Boolean;

    .line 282
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 280
    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x42c8

    .line 207
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

    .line 209
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isTouchLeftTop:Ljava/lang/Boolean;

    .line 215
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->dispatchTouch(FF)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 219
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 210
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

    .line 212
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->isTouchLeftTop:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public initlayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 118
    const-string v3, "MultithemeUnlockScreen"

    const-string v4, "initlayout "

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mIsInitSuccess:Ljava/lang/Boolean;

    .line 120
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 121
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-nez v3, :cond_0

    .line 122
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mContext:Landroid/content/Context;

    const-string v5, "/data/data/com.baidu.thememanager.ui/files/"

    const-string v6, "lockscreen"

    const-string v7, "wallpaper"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/baidu/themeanimation/util/FileUtil;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v3, "MultithemeUnlockScreen"

    const-string v4, "create LockScreenElement"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, manifestStream:Ljava/io/InputStream;
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {v3, v4}, Lcom/baidu/themeanimation/util/FileUtil;->openFile(Landroid/os/Handler;)Ljava/io/InputStream;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/baidu/themeanimation/util/LockScreenParser;->getInstance()Lcom/baidu/themeanimation/util/LockScreenParser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflate(Ljava/io/InputStream;)Lcom/baidu/themeanimation/element/LockScreenElement;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 130
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->holdPersistData(Lcom/baidu/themeanimation/element/LockScreenElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 139
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .end local v2           #manifestStream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v3, :cond_1

    .line 148
    const-string v3, "MultithemeUnlockScreen"

    const-string v4, "generate LockScreenView"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
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

    .line 161
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 162
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mIsInitSuccess:Ljava/lang/Boolean;

    .line 166
    :goto_2
    return-void

    .line 140
    .restart local v2       #manifestStream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 132
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 140
    :catch_2
    move-exception v0

    .line 141
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 134
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 140
    :catch_4
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 139
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 140
    :catch_6
    move-exception v0

    .line 141
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 139
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 142
    :goto_3
    throw v3

    .line 140
    :catch_7
    move-exception v0

    .line 141
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #manifestStream:Ljava/io/InputStream;
    :catch_8
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/IllegalStateException;
    iput-object v9, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    .line 155
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 156
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_9
    move-exception v1

    .line 157
    .local v1, e1:Ljava/lang/Exception;
    iput-object v9, p0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->mLockScreenView:Landroid/view/View;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 164
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
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->dealPause()V

    .line 295
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->dealResume()V

    .line 301
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method
