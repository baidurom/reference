.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final IPO_SHUTDOWN_FLOW:I = 0x1

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_MEMORY_DUMP_TIME:I = 0xea60

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x20

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x1388

.field private static final NORMAL_SHUTDOWN_FLOW:I = 0x0

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static bConfirmForAnimation:Z

.field private static bPlayaudio:Z

.field private static beginAnimationTime:J

.field private static endAnimationTime:J

.field private static mDelayDim:Ljava/lang/Runnable;

.field private static mDialog:Landroid/app/AlertDialog;

.field private static mEnableAnimating:Z

.field private static final mEnableAnimatingSync:Ljava/lang/Object;

.field private static mHDMI:Lcom/mediatek/hdmi/HDMINative;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mShutdownFlow:I

.field private static mShutdownThreadSync:Ljava/lang/Object;

.field private static mTvOut:Lcom/mediatek/tvOut/TvOut;

.field private static pd:Landroid/app/ProgressDialog;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static screen_turn_off_time:I


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private stMgr:Lcom/android/internal/app/ShutdownManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 93
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    .line 102
    sput-object v2, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    .line 105
    sput-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    .line 116
    sput-wide v3, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    .line 117
    sput-wide v3, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    .line 118
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->bConfirmForAnimation:Z

    .line 119
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    .line 122
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->mEnableAnimating:Z

    .line 127
    const/16 v0, 0x1f40

    sput v0, Lcom/android/internal/app/ShutdownThread;->screen_turn_off_time:I

    .line 129
    new-instance v0, Lcom/mediatek/tvOut/TvOut;

    invoke-direct {v0}, Lcom/mediatek/tvOut/TvOut;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mTvOut:Lcom/mediatek/tvOut/TvOut;

    .line 130
    new-instance v0, Lcom/mediatek/hdmi/HDMINative;

    invoke-direct {v0}, Lcom/mediatek/hdmi/HDMINative;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    .line 251
    new-instance v0, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread$3;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    .line 134
    return-void
.end method

.method public static EnableAnimating(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 141
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mEnableAnimating:Z

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    return p0
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Lcom/android/internal/app/ShutdownThread;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/app/ShutdownThread;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 277
    sget-object v9, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v9

    .line 278
    :try_start_0
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_0

    .line 279
    const-string v6, "ShutdownThread"

    const-string v7, "ShutdownThread is already running, returning."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    monitor-exit v9

    .line 398
    :goto_0
    return-void

    .line 282
    :cond_0
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 283
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object p0, v6, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 287
    sget-object v9, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, v9, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 288
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v9, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v9}, Lcom/android/internal/app/ShutdownThread$4;-><init>()V

    iput-object v9, v6, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 291
    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    .line 292
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->bConfirmForAnimation:Z

    if-nez v6, :cond_1

    .line 293
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_1

    .line 294
    sput-boolean v8, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    .line 300
    :cond_1
    const-wide/16 v9, 0x0

    sput-wide v9, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    .line 301
    const/4 v4, 0x0

    .line 302
    .local v4, mShutOffAnimation:Z
    const-string/jumbo v6, "ro.operator.optr"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, cust:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 306
    const-string v6, "OP01"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 307
    const/4 v4, 0x1

    .line 308
    sget v6, Lcom/android/internal/app/ShutdownThread;->screen_turn_off_time:I

    add-int/lit16 v6, v6, 0x7d0

    sput v6, Lcom/android/internal/app/ShutdownThread;->screen_turn_off_time:I

    .line 312
    :cond_2
    const-string v6, "OP02"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 313
    const/4 v4, 0x1

    .line 316
    :cond_3
    const-string v6, "CUST"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 317
    const/4 v4, 0x1

    .line 320
    :cond_4
    sget-object v9, Lcom/android/internal/app/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v9

    .line 322
    :try_start_1
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mEnableAnimating:Z

    if-nez v6, :cond_7

    .line 323
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v8, 0x14

    invoke-virtual {v6, v8}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    .line 365
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 367
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v14, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 368
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 370
    :try_start_2
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v8, v8, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v9, 0x1a

    const-string v10, "ShutdownThread-screen"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 372
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 373
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 381
    :cond_5
    :goto_2
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/internal/app/ShutdownThread;->getState()Ljava/lang/Thread$State;

    move-result-object v6

    sget-object v8, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v6, v8, :cond_6

    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/internal/app/ShutdownThread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 382
    :cond_6
    sget v6, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    if-ne v6, v7, :cond_b

    .line 383
    const-string v6, "ShutdownThread"

    const-string v7, "ShutdownThread exists already"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->checkShutdownFlow()V

    .line 385
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v7

    .line 386
    :try_start_3
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 387
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 283
    .end local v0           #cust:Ljava/lang/String;
    .end local v4           #mShutOffAnimation:Z
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 325
    .restart local v0       #cust:Ljava/lang/String;
    .restart local v4       #mShutOffAnimation:Z
    :cond_7
    if-eqz v4, :cond_a

    .line 326
    const/4 v3, 0x0

    .line 328
    .local v3, isRotaionEnabled:Z
    :try_start_5
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "accelerometer_rotation"

    const/4 v11, 0x1

    invoke-static {v6, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9

    move v3, v7

    .line 330
    :goto_3
    if-eqz v3, :cond_8

    .line 331
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "accelerometer_rotation"

    const/4 v10, 0x0

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "accelerometer_rotation_restore"

    const/4 v10, 0x1

    invoke-static {v6, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    .line 340
    :cond_8
    :goto_4
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x1388

    add-long/2addr v10, v12

    sput-wide v10, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 343
    :try_start_7
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 345
    .local v5, wm:Landroid/view/IWindowManager;
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 348
    .end local v5           #wm:Landroid/view/IWindowManager;
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->startBootAnimation()V

    .line 363
    .end local v3           #isRotaionEnabled:Z
    :goto_6
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    sget v10, Lcom/android/internal/app/ShutdownThread;->screen_turn_off_time:I

    int-to-long v10, v10

    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 365
    :catchall_2
    move-exception v6

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6

    .restart local v3       #isRotaionEnabled:Z
    :cond_9
    move v3, v8

    .line 328
    goto :goto_3

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, ex:Ljava/lang/NullPointerException;
    :try_start_9
    const-string v6, "ShutdownThread"

    const-string v8, "check Rotation: sInstance.mContext object is null when get Rotation"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 350
    .end local v2           #ex:Ljava/lang/NullPointerException;
    .end local v3           #isRotaionEnabled:Z
    :cond_a
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 351
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, #string@power_off#t

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 352
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v8, #string@shutdown_progress#t

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 353
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 354
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 355
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x7d9

    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    .line 358
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/view/Window;->addFlags(I)V

    .line 360
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    .line 374
    :catch_1
    move-exception v1

    .line 375
    .local v1, e:Ljava/lang/SecurityException;
    const-string v6, "ShutdownThread"

    const-string v8, "No permission to acquire wake lock"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v14, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2

    .line 389
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_b
    const-string v6, "ShutdownThread"

    const-string v7, "Thread state is not normal! froce to shutdown!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->delayForPlayAnimation()V

    .line 393
    const-string v6, "ctl.start"

    const-string/jumbo v7, "shutdown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 396
    :cond_c
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 346
    .restart local v3       #isRotaionEnabled:Z
    :catch_2
    move-exception v6

    goto/16 :goto_5
.end method

.method private static checkShutdownFlow()V
    .locals 3

    .prologue
    .line 445
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkShutdownFlow: IPO_Support=false mReboot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 448
    return-void
.end method

.method private static delayForPlayAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 427
    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    .line 438
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 430
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    .line 431
    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 433
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown stop bootanimation Thread.currentThread().sleep exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dismissDialog()V
    .locals 3

    .prologue
    .line 419
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissDialog(): pd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 422
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 424
    :cond_0
    return-void
.end method

.method public static isPowerOffDialogShowing()Z
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 271
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 272
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 273
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 274
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 6
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    .line 795
    if-eqz p0, :cond_1

    .line 796
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    if-eqz p1, :cond_0

    const-string/jumbo v2, "recovery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->delayForPlayAnimation()V

    .line 801
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->delayForPlayAnimation()V

    .line 824
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mTvOut:Lcom/mediatek/tvOut/TvOut;

    invoke-virtual {v2, v5}, Lcom/mediatek/tvOut/TvOut;->tvoutPowerEnable(Z)Z

    .line 828
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    invoke-virtual {v2, v5}, Lcom/mediatek/hdmi/HDMINative;->hdmiPowerEnable(Z)Z

    .line 831
    const-string v2, "ctl.start"

    const-string/jumbo v3, "shutdown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 839
    :goto_1
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 807
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 809
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 817
    :goto_2
    const-wide/16 v2, 0x1f4

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 818
    :catch_1
    move-exception v2

    goto :goto_0

    .line 810
    :catch_2
    move-exception v0

    .line 812
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 836
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :catch_3
    move-exception v0

    .line 837
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutdown rebootOrShutdown Thread.currentThread().sleep exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 158
    const-string v3, "ShutdownThread"

    const-string v4, "!!! Request to shutdown !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string/jumbo v3, "ro.monkey"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    const-string v3, "ShutdownThread"

    const-string v4, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 166
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_2

    .line 167
    const-string v3, "ShutdownThread"

    const-string v5, "Request to shutdown already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    monitor-exit v4

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    const-string v3, "ShutdownThread"

    const-string v4, "Notifying thread to start radio shutdown"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sput-boolean p1, Lcom/android/internal/app/ShutdownThread;->bConfirmForAnimation:Z

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #integer@config_longPressOnPowerBehavior#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 176
    .local v1, longPressBehavior:I
    if-ne v1, v7, :cond_4

    const v2, #string@shutdown_confirm_question#t

    .line 180
    .local v2, resourceId:I
    :goto_1
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p1, :cond_5

    .line 183
    new-instance v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_3

    .line 185
    const-string v3, "ShutdownThread"

    const-string v4, "PowerOff dialog doesn\'t exist. Create it first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, #string@power_off#t

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, #string@yes#t

    new-instance v5, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v5, p0}, Lcom/android/internal/app/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, #string@no#t

    new-instance v5, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v5}, Lcom/android/internal/app/ShutdownThread$1;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    .line 208
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 209
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 215
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->addFlags(I)V

    .line 218
    :cond_3
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    iput-object v3, v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 219
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 221
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 176
    .end local v0           #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    .end local v2           #resourceId:I
    :cond_4
    const v2, #string@shutdown_confirm#t

    goto/16 :goto_1

    .line 225
    .restart local v2       #resourceId:I
    :cond_5
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private static startBootAnimation()V
    .locals 2

    .prologue
    .line 401
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "ctl.start"

    const-string v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v0, "ShutdownThread"

    const-string v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    const-string v0, "ctl.start"

    const-string v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "ShutdownThread"

    const-string v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 414
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 479
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->checkShutdownFlow()V

    .line 480
    :goto_0
    sget v0, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    if-ne v0, v2, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->saveStates(Landroid/content/Context;)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownThread;->running()V

    goto :goto_0

    .line 485
    :cond_0
    sget v0, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    if-eq v0, v2, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownThread;->running()V

    .line 489
    :cond_1
    return-void
.end method

.method public running()V
    .locals 32

    .prologue
    .line 496
    const-string/jumbo v2, "sys.ipo.pwrdncap"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 498
    .local v14, command:Ljava/lang/String;
    new-instance v5, Lcom/android/internal/app/ShutdownThread$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$5;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 511
    .local v5, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_d

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 512
    .local v30, reason:Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 520
    :try_start_0
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v6, "ShutdownThread-cpu"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 522
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 523
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_2
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "shutdown acquire partial WakeLock: cpu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "_mode"

    sget v6, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v20, v2, v6

    .line 540
    .local v20, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 541
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_0

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v20, v6

    .line 543
    .local v15, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_f

    .line 544
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast ACTION_SHUTDOWN timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 546
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 556
    .end local v15           #delay:J
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 560
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v22, v2, v6

    .line 564
    .local v22, endTimeIPO:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 565
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 566
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v22, v6

    .line 567
    .restart local v15       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_10

    .line 568
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast ACTION_SHUTDOWN_IPO timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 570
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN_IPO timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 580
    .end local v15           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 583
    .end local v22           #endTimeIPO:J
    :cond_2
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 584
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 588
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_3

    .line 590
    const/16 v2, 0x2710

    :try_start_3
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_a

    .line 596
    .end local v10           #am:Landroid/app/IActivityManager;
    :cond_3
    :goto_5
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    .line 598
    .local v28, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    .line 602
    .local v11, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v26

    .line 607
    .local v26, mount:Landroid/os/storage/IMountService;
    if-eqz v11, :cond_4

    :try_start_4
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    :cond_4
    const/4 v12, 0x1

    .line 609
    .local v12, bluetoothOff:Z
    :goto_6
    if-nez v12, :cond_5

    .line 610
    const-string v2, "ShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 619
    :cond_5
    :goto_7
    if-eqz v28, :cond_6

    :try_start_5
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_6
    const/16 v29, 0x1

    .line 620
    .local v29, radioOff:Z
    :goto_8
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    .line 627
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    if-eqz v28, :cond_7

    .line 632
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->setRadioOff()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 640
    :cond_7
    :goto_9
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 642
    .local v13, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    const-string v2, "2"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "3"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 643
    :cond_8
    const-string v2, "ShutdownThread"

    const-string v3, "bypass RadioOff!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_9
    :goto_a
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    const-string v2, "1"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "3"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 686
    :cond_a
    const-string v2, "ShutdownThread"

    const-string v3, "bypass MountService!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :goto_b
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 731
    new-instance v31, Landroid/os/Vibrator;

    invoke-direct/range {v31 .. v31}, Landroid/os/Vibrator;-><init>()V

    .line 733
    .local v31, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_6
    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 741
    :goto_c
    const-wide/16 v2, 0x1f4

    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_b

    .line 747
    :goto_d
    const-string v2, "ShutdownThread"

    const-string v3, "Performing ipo low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->delayForPlayAnimation()V

    .line 751
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 752
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 753
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 756
    :cond_b
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->shutdown(Landroid/content/Context;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 761
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_20

    .line 762
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 763
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 768
    :cond_c
    :goto_e
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 769
    const/4 v2, 0x0

    :try_start_8
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 770
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 772
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setBacklightBrightnessOff(Z)V

    .line 773
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 775
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v3

    .line 777
    :try_start_9
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_c

    .line 780
    :goto_f
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 785
    .end local v31           #vibrator:Landroid/os/Vibrator;
    :goto_10
    return-void

    .line 511
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v13           #cm:Landroid/net/ConnectivityManager;
    .end local v20           #endTime:J
    .end local v26           #mount:Landroid/os/storage/IMountService;
    .end local v28           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v29           #radioOff:Z
    .end local v30           #reason:Ljava/lang/String;
    :cond_d
    const-string v2, "0"

    goto/16 :goto_0

    :cond_e
    const-string v2, ""

    goto/16 :goto_1

    .line 524
    .restart local v30       #reason:Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 525
    .local v17, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2

    .line 552
    .end local v17           #e:Ljava/lang/SecurityException;
    .restart local v15       #delay:J
    .restart local v20       #endTime:J
    :cond_f
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_3

    .line 553
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 556
    .end local v15           #delay:J
    :catchall_0
    move-exception v2

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v2

    .line 576
    .restart local v15       #delay:J
    .restart local v22       #endTimeIPO:J
    :cond_10
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_4

    .line 577
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 580
    .end local v15           #delay:J
    :catchall_1
    move-exception v2

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v2

    .line 607
    .end local v22           #endTimeIPO:J
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v26       #mount:Landroid/os/storage/IMountService;
    .restart local v28       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 613
    :catch_3
    move-exception v24

    .line 614
    .local v24, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    const/4 v12, 0x1

    .restart local v12       #bluetoothOff:Z
    goto/16 :goto_7

    .line 619
    .end local v24           #ex:Landroid/os/RemoteException;
    :cond_12
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 635
    :catch_4
    move-exception v24

    .line 636
    .restart local v24       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    const/16 v29, 0x1

    .restart local v29       #radioOff:Z
    goto/16 :goto_9

    .line 646
    .end local v24           #ex:Landroid/os/RemoteException;
    .restart local v13       #cm:Landroid/net/ConnectivityManager;
    :cond_13
    const/16 v25, 0x0

    .local v25, i:I
    :goto_11
    const/16 v2, 0x20

    move/from16 v0, v25

    if-ge v0, v2, :cond_16

    .line 647
    if-nez v12, :cond_14

    .line 649
    :try_start_f
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_19

    const/4 v12, 0x1

    .line 656
    :cond_14
    :goto_12
    if-nez v29, :cond_15

    .line 658
    :try_start_10
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_6

    move-result v2

    if-nez v2, :cond_1a

    const/16 v29, 0x1

    .line 664
    :cond_15
    :goto_13
    if-eqz v29, :cond_1b

    if-eqz v12, :cond_1b

    .line 665
    const-string v2, "ShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_16
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    if-eqz v29, :cond_17

    if-nez v12, :cond_18

    .line 672
    :cond_17
    const-string v2, "ShutdownThread"

    const-string v3, "change shutdown flow from ipo to normal: BT/MD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 678
    :cond_18
    if-nez v29, :cond_9

    const-string v2, "com.mediatek.mdlogger.Running"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 679
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "radioOff = false and mdlogger is running now, so wait for memory dump"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_a

    .line 649
    :cond_19
    const/4 v12, 0x0

    goto :goto_12

    .line 651
    :catch_5
    move-exception v24

    .line 652
    .restart local v24       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    const/4 v12, 0x1

    goto :goto_12

    .line 658
    .end local v24           #ex:Landroid/os/RemoteException;
    :cond_1a
    const/16 v29, 0x0

    goto :goto_13

    .line 659
    :catch_6
    move-exception v24

    .line 660
    .restart local v24       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    const/16 v29, 0x1

    goto :goto_13

    .line 668
    .end local v24           #ex:Landroid/os/RemoteException;
    :cond_1b
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 646
    add-int/lit8 v25, v25, 0x1

    goto :goto_11

    .line 689
    .end local v25           #i:I
    :cond_1c
    new-instance v27, Lcom/android/internal/app/ShutdownThread$6;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$6;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 696
    .local v27, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 699
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v18, v2, v6

    .line 700
    .local v18, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 702
    if-eqz v26, :cond_1e

    .line 703
    :try_start_11
    invoke-interface/range {v26 .. v27}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 710
    :goto_14
    :try_start_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1d

    .line 711
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v18, v6

    .line 712
    .restart local v15       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_1f

    .line 713
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    .line 715
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 725
    .end local v15           #delay:J
    :cond_1d
    monitor-exit v3

    goto/16 :goto_b

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    throw v2

    .line 705
    :cond_1e
    :try_start_13
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_14

    .line 707
    :catch_7
    move-exception v17

    .line 708
    .local v17, e:Ljava/lang/Exception;
    :try_start_14
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_14

    .line 721
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v15       #delay:J
    :cond_1f
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_8

    goto :goto_14

    .line 722
    :catch_8
    move-exception v2

    goto :goto_14

    .line 734
    .end local v15           #delay:J
    .end local v18           #endShutTime:J
    .end local v27           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v31       #vibrator:Landroid/os/Vibrator;
    :catch_9
    move-exception v17

    .line 736
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 764
    .end local v17           #e:Ljava/lang/Exception;
    :cond_20
    sget-wide v2, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_c

    .line 765
    const-string v2, "ctl.stop"

    const-string v3, "bootanim"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 770
    :catchall_3
    move-exception v2

    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    throw v2

    .line 780
    :catchall_4
    move-exception v2

    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    throw v2

    .line 782
    .end local v31           #vibrator:Landroid/os/Vibrator;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 783
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_10

    .line 591
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v13           #cm:Landroid/net/ConnectivityManager;
    .end local v26           #mount:Landroid/os/storage/IMountService;
    .end local v28           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v29           #radioOff:Z
    .restart local v10       #am:Landroid/app/IActivityManager;
    :catch_a
    move-exception v2

    goto/16 :goto_5

    .line 742
    .end local v10           #am:Landroid/app/IActivityManager;
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v12       #bluetoothOff:Z
    .restart local v13       #cm:Landroid/net/ConnectivityManager;
    .restart local v26       #mount:Landroid/os/storage/IMountService;
    .restart local v28       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v29       #radioOff:Z
    .restart local v31       #vibrator:Landroid/os/Vibrator;
    :catch_b
    move-exception v2

    goto/16 :goto_d

    .line 778
    :catch_c
    move-exception v2

    goto/16 :goto_f
.end method
