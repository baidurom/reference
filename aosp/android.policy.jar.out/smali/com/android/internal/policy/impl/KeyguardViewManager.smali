.class public Lcom/android/internal/policy/impl/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardWindowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;,
        Lcom/android/internal/policy/impl/KeyguardViewManager$H;,
        Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static mScreenOn:Z


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private final mContext:Landroid/content/Context;

.field mH:Lcom/android/internal/policy/impl/KeyguardViewManager$H;

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field private mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

.field private final mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

.field private mNeedsInput:Z

.field private mScrnOrientationModeBeforeShutdown:I

.field private mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mViewManager:Landroid/view/ViewManager;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    .line 56
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewProperties;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter "context"
    .parameter "viewManager"
    .parameter "callback"
    .parameter "keyguardViewProperties"
    .parameter "updateMonitor"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    .line 75
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewManager$H;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewManager$H;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mH:Lcom/android/internal/policy/impl/KeyguardViewManager$H;

    .line 130
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewManager$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 92
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 93
    iput-object p4, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    .line 95
    iput-object p5, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 98
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mSystemStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;

    invoke-virtual {p5, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSystemStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;)V

    .line 101
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/view/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScrnOrientationModeBeforeShutdown:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/KeyguardViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScrnOrientationModeBeforeShutdown:I

    return p1
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized hide()V
    .locals 3

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "hide()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 392
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v1, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 394
    .local v0, lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/internal/policy/impl/KeyguardViewManager$3;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$3;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .end local v0           #lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    :cond_1
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_1
    monitor-exit p0

    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 2
    .parameter "showListener"

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOn()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOn()V

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager$2;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 351
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public reLayoutScreen(Z)V
    .locals 3
    .parameter "dmLock"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reLayoutScreen, dmLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz p1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    :cond_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 3

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v0

    .line 289
    .local v0, flag:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :goto_0
    monitor-exit p0

    return-void

    .line 292
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "Oh, Timing issue, actually, we needn\'t skip to here"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->doKeyguardLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    .end local v0           #flag:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDebugFilterStatus(Z)V
    .locals 0
    .parameter "debugFlag"

    .prologue
    .line 419
    sput-boolean p1, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    .line 420
    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 3
    .parameter "needsInput"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 271
    if-eqz p1, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    :cond_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public setScreenStatus(Z)V
    .locals 0
    .parameter "screenOn"

    .prologue
    .line 415
    sput-boolean p1, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 416
    return-void
.end method

.method public declared-synchronized show()V
    .locals 11

    .prologue
    const/high16 v10, 0x100

    const/4 v6, 0x0

    .line 176
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show(); mKeyguardView=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 179
    .local v7, res:Landroid/content/res/Resources;
    const-string v1, "lockscreen.rot_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, #bool@config_enableLockScreenRotation#t

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v6, 0x1

    .line 182
    .local v6, enableScreenRotation:Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v1, :cond_7

    .line 183
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "keyguard host is null, creating it..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_3
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewManager$1;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    .line 187
    const/4 v8, -0x1

    .line 188
    .local v8, stretch:I
    const v4, 0x10110900

    .line 193
    .local v4, flags:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 194
    and-int/lit16 v4, v4, -0x801

    .line 195
    or-int/lit16 v4, v4, 0x100

    .line 196
    const/high16 v1, 0x1

    or-int/2addr v4, v1

    .line 202
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    if-nez v1, :cond_4

    .line 203
    const/high16 v1, 0x2

    or-int/2addr v4, v1

    .line 205
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    or-int/2addr v4, v10

    .line 209
    :cond_5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d4

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 212
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 213
    const v1, #style@Animation.LockScreen#t

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 214
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 216
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 217
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 221
    :cond_6
    const-string v1, "Keyguard"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 224
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #flags:I
    .end local v8           #stretch:I
    :cond_7
    if-nez v6, :cond_c

    .line 231
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "Rotation sensor for lock screen Off!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 235
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-nez v1, :cond_a

    .line 238
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "keyguard view is null, creating it..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-interface {v1, v2, v3, p0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    const v2, #id@lock_screen#t

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setId(I)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V

    .line 243
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    if-eqz v1, :cond_a

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->show()V

    .line 258
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    const/high16 v9, 0x60

    .line 261
    .local v9, visFlags:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->requestFocus()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 198
    .end local v9           #visFlags:I
    .restart local v4       #flags:I
    .restart local v8       #stretch:I
    :cond_b
    and-int/lit16 v4, v4, -0x101

    .line 199
    const v1, -0x10001

    and-int/2addr v4, v1

    .line 200
    or-int/lit16 v4, v4, 0x800

    goto/16 :goto_0

    .line 228
    .end local v4           #flags:I
    .end local v8           #stretch:I
    :cond_c
    :try_start_1
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "Rotation sensor for lock screen On!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 176
    .end local v6           #enableScreenRotation:Z
    .end local v7           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized verifyUnlock()V
    .locals 2

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "verifyUnlock()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->show()V

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->verifyUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeWhenReadyTq(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 372
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeWhenReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->wakeWhenReadyTq(I)V

    .line 375
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    .line 377
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "mKeyguardView is null in wakeWhenReadyTq"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v0, 0x0

    goto :goto_0
.end method
