.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ShutdownThread$QbShutdown;,
        Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_QUICKBOOT_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final IPO_SHUTDOWN_FLOW:I = 0x1

.field private static final MAX_BROADCAST_TIME:I = 0x3a98

.field private static final MAX_MEMORY_DUMP_TIME:I = 0xea60

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x20

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x1388

.field private static final NORMAL_SHUTDOWN_FLOW:I = 0x0

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final QUICKBOOT_DIALOG_ALARM_MAX_NUM:I = 0x2

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

.field private static mIsQuickbootShutdown:Z

.field private static mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

.field private static final mQbManager:Lcom/android/internal/app/QuickbootManager;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mShutdownFlow:I

.field private static mShutdownProgressDialog:Landroid/app/ProgressDialog;

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
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 104
    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 113
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    .line 122
    sput-object v2, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    .line 125
    sput-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    .line 136
    sput-wide v4, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    .line 137
    sput-wide v4, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    .line 138
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->bConfirmForAnimation:Z

    .line 139
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    .line 142
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->mEnableAnimating:Z

    .line 147
    const/16 v0, 0x1388

    sput v0, Lcom/android/internal/app/ShutdownThread;->screen_turn_off_time:I

    .line 149
    new-instance v0, Lcom/mediatek/tvOut/TvOut;

    invoke-direct {v0}, Lcom/mediatek/tvOut/TvOut;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mTvOut:Lcom/mediatek/tvOut/TvOut;

    .line 150
    new-instance v0, Lcom/mediatek/hdmi/HDMINative;

    invoke-direct {v0}, Lcom/mediatek/hdmi/HDMINative;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    .line 154
    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 156
    invoke-static {}, Lcom/android/internal/app/QuickbootManager;->getInstance()Lcom/android/internal/app/QuickbootManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mQbManager:Lcom/android/internal/app/QuickbootManager;

    .line 164
    sput-object v2, Lcom/android/internal/app/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 409
    new-instance v0, Lcom/android/internal/app/ShutdownThread$6;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread$6;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    .line 169
    return-void
.end method

.method public static EnableAnimating(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 176
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mEnableAnimating:Z

    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 178
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
    .line 89
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    return p0
.end method

.method static synthetic access$1200(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->isQuickBootEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Landroid/app/AlarmManager$PoweroffAlarm;)Landroid/app/AlarmManager$PoweroffAlarm;
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    return-object p0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    return p0
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Lcom/android/internal/app/ShutdownThread;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/app/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/app/ShutdownThread;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->isQuickBootSupport(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 442
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 443
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 444
    const-string v3, "ShutdownThread"

    const-string v5, "ShutdownThread is already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    monitor-exit v4

    .line 575
    :goto_0
    return-void

    .line 447
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 448
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object p0, v3, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 452
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 453
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v4, Lcom/android/internal/app/ShutdownThread$7;

    invoke-direct {v4}, Lcom/android/internal/app/ShutdownThread$7;-><init>()V

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 456
    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    .line 457
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->bConfirmForAnimation:Z

    if-nez v3, :cond_1

    .line 458
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 459
    sput-boolean v5, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    .line 465
    :cond_1
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    .line 466
    const/4 v2, 0x1

    .line 467
    .local v2, mShutOffAnimation:Z
    const-string/jumbo v3, "ro.operator.optr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, cust:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 471
    const-string v3, "OP01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    const/4 v2, 0x1

    .line 473
    sget v3, Lcom/android/internal/app/ShutdownThread;->screen_turn_off_time:I

    add-int/lit16 v3, v3, 0x7d0

    sput v3, Lcom/android/internal/app/ShutdownThread;->screen_turn_off_time:I

    .line 477
    :cond_2
    const-string v3, "OP02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 478
    const/4 v2, 0x1

    .line 481
    :cond_3
    const-string v3, "CUST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 482
    const/4 v2, 0x1

    .line 485
    :cond_4
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v4

    .line 487
    :try_start_1
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mEnableAnimating:Z

    if-nez v3, :cond_6

    .line 488
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    .line 539
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 544
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 546
    :try_start_2
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "ShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 548
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 549
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 555
    :goto_2
    const-string v3, "ShutdownThread"

    const-string/jumbo v4, "shutdown acquire partial WakeLock: cpu"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 559
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 561
    :try_start_3
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "ShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 563
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 564
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 573
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->startThread()V

    goto/16 :goto_0

    .line 448
    .end local v0           #cust:Ljava/lang/String;
    .end local v2           #mShutOffAnimation:Z
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 517
    .restart local v0       #cust:Ljava/lang/String;
    .restart local v2       #mShutOffAnimation:Z
    :cond_6
    :try_start_5
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    .line 518
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_7

    const v3, #string@global_action_reboot#t

    :goto_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 522
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_8

    const v3, #string@reboot_progress#t

    :goto_5
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 526
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 527
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 528
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x7d9

    invoke-virtual {v3, v5}, Landroid/view/Window;->setType(I)V

    .line 531
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 533
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_1

    .line 539
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 518
    :cond_7
    const v3, #string@power_off#t

    goto :goto_4

    .line 522
    :cond_8
    const v3, #string@shutdown_progress#t

    goto :goto_5

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2

    .line 565
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 566
    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_3
.end method

.method private static checkQbShutdownFlow()V
    .locals 1

    .prologue
    .line 878
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mQbManager:Lcom/android/internal/app/QuickbootManager;

    invoke-virtual {v0}, Lcom/android/internal/app/QuickbootManager;->isQbAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 879
    return-void

    .line 878
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkShutdownFlow()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 823
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkShutdownFlow: IPO_Support=true mReboot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-ne v4, v2, :cond_0

    .line 825
    sput v3, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 849
    :goto_0
    return-void

    .line 831
    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ipo_setting"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 839
    .local v1, isIPOEnabled:Z
    :goto_1
    if-ne v1, v2, :cond_3

    .line 840
    const-string v4, "1"

    const-string/jumbo v5, "sys.ipo.battlow"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 841
    sput v3, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 848
    :goto_2
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkShutdownFlow: isIPOEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mShutdownFlow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #isIPOEnabled:Z
    :cond_1
    move v1, v3

    .line 831
    goto :goto_1

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "ShutdownThread"

    const-string v4, "checkShutdownFlow: sInstance.mContext object is null when get IPO enable/disable Option"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    sput v3, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    goto :goto_0

    .line 843
    .end local v0           #ex:Ljava/lang/NullPointerException;
    .restart local v1       #isIPOEnabled:Z
    :cond_2
    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    goto :goto_2

    .line 845
    :cond_3
    sput v3, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    goto :goto_2
.end method

.method private static createQbShutdownConfirmDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 7
    .parameter "context"
    .parameter "origin"

    .prologue
    const/4 v6, 0x0

    .line 338
    move-object v3, p1

    .line 340
    .local v3, retAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->isQuickBootSupport(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 342
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v4, #layout@quickboot_dialog_confirm#t

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 346
    .local v1, qbConfirmView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 347
    new-instance v2, Lcom/android/internal/app/ShutdownThread$QbShutdown;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/app/ShutdownThread$QbShutdown;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 349
    .local v2, qbShutdown:Lcom/android/internal/app/ShutdownThread$QbShutdown;
    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread$QbShutdown;->isAvaliable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, #string@power_off#t

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, #string@yes#t

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, #string@no#t

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 359
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 360
    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread$QbShutdown;->setListener()V

    .line 365
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v1           #qbConfirmView:Landroid/view/View;
    .end local v2           #qbShutdown:Lcom/android/internal/app/ShutdownThread$QbShutdown;
    :cond_0
    return-object v3
.end method

.method private static delayForPlayAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 596
    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    .line 607
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 599
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    .line 600
    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 602
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown stop bootanimation Thread.currentThread().sleep exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dismissDialog()V
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    .line 373
    :cond_0
    return-void
.end method

.method public static isPowerOffDialogShowing()Z
    .locals 1

    .prologue
    .line 172
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

.method private static isQuickBootEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 621
    const/4 v0, 0x0

    .line 622
    .local v0, qbEnabled:Z
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->isQuickBootSupport(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "baidu_settings_quickboot"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 626
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 623
    goto :goto_0
.end method

.method private static isQuickBootSupport(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 613
    .local v0, quickbootSupport:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #bool@config_quickbootSupport#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 617
    :goto_0
    return v0

    .line 615
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 429
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 431
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 434
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 437
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 438
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 439
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 6
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    .line 1415
    if-eqz p0, :cond_1

    .line 1416
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

    .line 1417
    if-eqz p1, :cond_0

    const-string/jumbo v2, "recovery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1418
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->delayForPlayAnimation()V

    .line 1421
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    :goto_0
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->delayForPlayAnimation()V

    .line 1444
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mTvOut:Lcom/mediatek/tvOut/TvOut;

    invoke-virtual {v2, v5}, Lcom/mediatek/tvOut/TvOut;->tvoutPowerEnable(Z)Z

    .line 1448
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    invoke-virtual {v2, v5}, Lcom/mediatek/hdmi/HDMINative;->hdmiPowerEnable(Z)Z

    .line 1450
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 1455
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1459
    :goto_1
    return-void

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1427
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 1429
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1437
    :goto_2
    const-wide/16 v2, 0x1f4

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1438
    :catch_1
    move-exception v2

    goto :goto_0

    .line 1430
    :catch_2
    move-exception v0

    .line 1432
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1456
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :catch_3
    move-exception v0

    .line 1457
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutdown rebootOrShutdown Thread.currentThread().sleep exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 196
    if-nez p1, :cond_0

    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-nez v0, :cond_0

    .line 197
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread$QbShutdown;->hasPoweroffAlarm(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 198
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 203
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/app/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 204
    return-void
.end method

.method public static shutdownFromPoweroffAlarm(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 328
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 330
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 332
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/app/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 333
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "confirm"

    .prologue
    const v9, #string@yes#t

    const v8, #string@no#t

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 211
    const-string v3, "ShutdownThread"

    const-string v4, "!!! Request to shutdown !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string/jumbo v3, "ro.monkey"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    const-string v3, "ShutdownThread"

    const-string v4, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 219
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_2

    .line 220
    const-string v3, "ShutdownThread"

    const-string v5, "Request to shutdown already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v4

    goto :goto_0

    .line 223
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

    .line 225
    const-string v3, "ShutdownThread"

    const-string v4, "Notifying thread to start radio shutdown"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sput-boolean p1, Lcom/android/internal/app/ShutdownThread;->bConfirmForAnimation:Z

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #integer@config_longPressOnPowerBehavior#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 229
    .local v1, longPressBehavior:I
    if-ne v1, v7, :cond_3

    const v2, #string@shutdown_confirm_question#t

    .line 233
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

    .line 235
    if-eqz p1, :cond_5

    .line 236
    new-instance v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    const-string v3, "ShutdownThread"

    const-string v4, "PowerOff dialog doesn\'t exist. Create it first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-nez v3, :cond_4

    .line 240
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, #string@power_off#t

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v4}, Lcom/android/internal/app/ShutdownThread$1;-><init>()V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    .line 262
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-static {p0, v3}, Lcom/android/internal/app/ShutdownThread;->createQbShutdownConfirmDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    .line 302
    :goto_2
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 303
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 309
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->addFlags(I)V

    .line 311
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    iput-object v3, v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 312
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 314
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 229
    .end local v0           #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    .end local v2           #resourceId:I
    :cond_3
    const v2, #string@shutdown_confirm#t

    goto/16 :goto_1

    .line 264
    .restart local v0       #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    .restart local v2       #resourceId:I
    :cond_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, #drawable@ic_dialog_alert#t

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, #string@reboot#t

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, #array@shutdown_reboot_options#t

    new-instance v5, Lcom/android/internal/app/ShutdownThread$5;

    invoke-direct {v5, p0}, Lcom/android/internal/app/ShutdownThread$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ShutdownThread$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v4}, Lcom/android/internal/app/ShutdownThread$3;-><init>()V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    goto :goto_2

    .line 318
    .end local v0           #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    :cond_5
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private static startBootAnimation()V
    .locals 2

    .prologue
    .line 578
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    if-eqz v0, :cond_0

    .line 579
    const-string v0, "ctl.start"

    const-string v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v0, "ShutdownThread"

    const-string v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :goto_0
    return-void

    .line 582
    :cond_0
    const-string v0, "ctl.start"

    const-string v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v0, "ShutdownThread"

    const-string v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static startThread()V
    .locals 2

    .prologue
    .line 376
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/internal/app/ShutdownThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/internal/app/ShutdownThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->checkQbShutdownFlow()V

    .line 378
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 380
    monitor-exit v1

    .line 384
    :goto_0
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 382
    :cond_1
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 590
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 591
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 592
    monitor-exit v1

    .line 593
    return-void

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public quickbootShutdown()V
    .locals 31

    .prologue
    .line 886
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mQbManager:Lcom/android/internal/app/QuickbootManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/QuickbootManager;->saveSystemStates(Landroid/content/Context;)V

    .line 890
    new-instance v5, Lcom/android/internal/app/ShutdownThread$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$8;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 903
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

    move-result-object v28

    .line 904
    .local v28, reason:Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 914
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3a98

    add-long v20, v2, v6

    .line 915
    .local v20, endTimeQb:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 916
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_0

    .line 917
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v20, v6

    .line 918
    .local v13, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_f

    .line 919
    const-string v2, "ShutdownThread"

    const-string v4, "Quickboot shutdown broadcast timed out. Enter normal shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 922
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/app/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 931
    .end local v13           #delay:J
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 938
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3a98

    add-long v18, v2, v6

    .line 939
    .local v18, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 940
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v18, v6

    .line 942
    .restart local v13       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_10

    .line 943
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out. Enter normal shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 946
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/app/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 955
    .end local v13           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 957
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    if-nez v2, :cond_2

    .line 958
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 962
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_2

    .line 964
    const/16 v2, 0x3a98

    :try_start_2
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    .line 970
    .end local v10           #am:Landroid/app/IActivityManager;
    :cond_2
    :goto_4
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 972
    .local v26, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    .line 976
    .local v11, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v24

    .line 981
    .local v24, mount:Landroid/os/storage/IMountService;
    if-eqz v11, :cond_3

    :try_start_3
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    :cond_3
    const/4 v12, 0x1

    .line 983
    .local v12, bluetoothOff:Z
    :goto_5
    if-nez v12, :cond_4

    .line 984
    const-string v2, "ShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 993
    :cond_4
    :goto_6
    if-eqz v26, :cond_5

    :try_start_4
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_5
    const/16 v27, 0x1

    .line 994
    .local v27, radioOff:Z
    :goto_7
    if-nez v27, :cond_6

    .line 995
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->setRadioOff()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1003
    :cond_6
    :goto_8
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/16 v23, 0x0

    .local v23, i:I
    :goto_9
    const/16 v2, 0x20

    move/from16 v0, v23

    if-ge v0, v2, :cond_9

    .line 1007
    if-nez v12, :cond_7

    .line 1009
    :try_start_5
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_13

    const/4 v12, 0x1

    .line 1016
    :cond_7
    :goto_a
    if-nez v27, :cond_8

    .line 1018
    :try_start_6
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v2

    if-nez v2, :cond_14

    const/16 v27, 0x1

    .line 1024
    :cond_8
    :goto_b
    if-eqz v27, :cond_15

    if-eqz v12, :cond_15

    .line 1025
    const-string v2, "ShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_9
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1033
    new-instance v25, Lcom/android/internal/app/ShutdownThread$9;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$9;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 1040
    .local v25, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 1043
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v16, v2, v6

    .line 1044
    .local v16, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1046
    if-eqz v24, :cond_16

    .line 1047
    :try_start_7
    invoke-interface/range {v24 .. v25}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1054
    :goto_c
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_a

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v16, v6

    .line 1056
    .restart local v13       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_17

    .line 1057
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    .end local v13           #delay:J
    :cond_a
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1068
    .end local v16           #endShutTime:J
    .end local v25           #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_b
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    if-eqz v2, :cond_1b

    .line 1069
    const-string v2, "ShutdownThread"

    const-string v3, "Entering quickboot poweroff state."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1071
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1072
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1075
    :cond_c
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mQbManager:Lcom/android/internal/app/QuickbootManager;

    if-eqz v2, :cond_1a

    .line 1077
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mQbManager:Lcom/android/internal/app/QuickbootManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/QuickbootManager;->shutdown(Landroid/content/Context;Landroid/app/AlarmManager$PoweroffAlarm;)Z

    move-result v29

    .line 1078
    .local v29, ret:Z
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/app/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 1080
    if-nez v29, :cond_18

    .line 1081
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 1123
    .end local v29           #ret:Z
    :goto_d
    return-void

    .line 903
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v18           #endTime:J
    .end local v20           #endTimeQb:J
    .end local v23           #i:I
    .end local v24           #mount:Landroid/os/storage/IMountService;
    .end local v26           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v27           #radioOff:Z
    .end local v28           #reason:Ljava/lang/String;
    :cond_d
    const-string v2, "0"

    goto/16 :goto_0

    :cond_e
    const-string v2, ""

    goto/16 :goto_1

    .line 927
    .restart local v13       #delay:J
    .restart local v20       #endTimeQb:J
    .restart local v28       #reason:Ljava/lang/String;
    :cond_f
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 928
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 931
    .end local v13           #delay:J
    :catchall_0
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v2

    .line 951
    .restart local v13       #delay:J
    .restart local v18       #endTime:J
    :cond_10
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_3

    .line 952
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 955
    .end local v13           #delay:J
    :catchall_1
    move-exception v2

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v2

    .line 981
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v24       #mount:Landroid/os/storage/IMountService;
    .restart local v26       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 987
    :catch_2
    move-exception v22

    .line 988
    .local v22, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    const/4 v12, 0x1

    .restart local v12       #bluetoothOff:Z
    goto/16 :goto_6

    .line 993
    .end local v22           #ex:Landroid/os/RemoteException;
    :cond_12
    const/16 v27, 0x0

    goto/16 :goto_7

    .line 998
    :catch_3
    move-exception v22

    .line 999
    .restart local v22       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    const/16 v27, 0x1

    .restart local v27       #radioOff:Z
    goto/16 :goto_8

    .line 1009
    .end local v22           #ex:Landroid/os/RemoteException;
    .restart local v23       #i:I
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 1011
    :catch_4
    move-exception v22

    .line 1012
    .restart local v22       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1013
    const/4 v12, 0x1

    goto/16 :goto_a

    .line 1018
    .end local v22           #ex:Landroid/os/RemoteException;
    :cond_14
    const/16 v27, 0x0

    goto/16 :goto_b

    .line 1019
    :catch_5
    move-exception v22

    .line 1020
    .restart local v22       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    const/16 v27, 0x1

    goto/16 :goto_b

    .line 1028
    .end local v22           #ex:Landroid/os/RemoteException;
    :cond_15
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1006
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 1049
    .restart local v16       #endShutTime:J
    .restart local v25       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_16
    :try_start_d
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_c

    .line 1051
    :catch_6
    move-exception v15

    .line 1052
    .local v15, e:Ljava/lang/Exception;
    :try_start_e
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 1065
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v2

    .line 1061
    .restart local v13       #delay:J
    :cond_17
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_c

    .line 1062
    :catch_7
    move-exception v2

    goto/16 :goto_c

    .line 1085
    .end local v13           #delay:J
    .end local v16           #endShutTime:J
    .end local v25           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v29       #ret:Z
    :cond_18
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1086
    :try_start_10
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_19

    .line 1087
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 1089
    :cond_19
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1093
    new-instance v30, Landroid/os/Vibrator;

    invoke-direct/range {v30 .. v30}, Landroid/os/Vibrator;-><init>()V

    .line 1095
    .local v30, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_11
    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1096
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 1103
    :goto_e
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->dismissDialog()V

    .line 1104
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1106
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1108
    :try_start_12
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_a

    .line 1111
    :goto_f
    :try_start_13
    monitor-exit v3

    goto/16 :goto_d

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v2

    .line 1089
    .end local v30           #vibrator:Landroid/os/Vibrator;
    :catchall_4
    move-exception v2

    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    throw v2

    .line 1097
    .restart local v30       #vibrator:Landroid/os/Vibrator;
    :catch_8
    move-exception v15

    .line 1099
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 1113
    .end local v15           #e:Ljava/lang/Exception;
    .end local v29           #ret:Z
    .end local v30           #vibrator:Landroid/os/Vibrator;
    :cond_1a
    const-string v2, "ShutdownThread"

    const-string v3, "Life is so hard!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 1116
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/app/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 1118
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_d

    .line 1121
    :cond_1b
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_d

    .line 965
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v23           #i:I
    .end local v24           #mount:Landroid/os/storage/IMountService;
    .end local v26           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v27           #radioOff:Z
    .restart local v10       #am:Landroid/app/IActivityManager;
    :catch_9
    move-exception v2

    goto/16 :goto_4

    .line 1109
    .end local v10           #am:Landroid/app/IActivityManager;
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v12       #bluetoothOff:Z
    .restart local v23       #i:I
    .restart local v24       #mount:Landroid/os/storage/IMountService;
    .restart local v26       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v27       #radioOff:Z
    .restart local v29       #ret:Z
    .restart local v30       #vibrator:Landroid/os/Vibrator;
    :catch_a
    move-exception v2

    goto :goto_f
.end method

.method public run()V
    .locals 2

    .prologue
    .line 858
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->checkQbShutdownFlow()V

    .line 859
    :goto_0
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    if-eqz v0, :cond_0

    .line 860
    const-string v0, "ShutdownThread"

    const-string v1, "enter quickboot shutdown flow..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownThread;->quickbootShutdown()V

    goto :goto_0

    .line 864
    :cond_0
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mIsQuickbootShutdown:Z

    if-nez v0, :cond_1

    .line 865
    const-string v0, "ShutdownThread"

    const-string v1, "enter normal shutdown flow..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 867
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownThread;->running()V

    .line 870
    :cond_1
    return-void
.end method

.method public running()V
    .locals 32

    .prologue
    .line 1131
    const-string/jumbo v2, "sys.ipo.pwrdncap"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1133
    .local v14, command:Ljava/lang/String;
    new-instance v5, Lcom/android/internal/app/ShutdownThread$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$10;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 1146
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

    .line 1147
    .local v30, reason:Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1157
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

    .line 1159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3a98

    add-long v20, v2, v6

    .line 1160
    .local v20, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1161
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_0

    .line 1162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v20, v6

    .line 1163
    .local v15, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_f

    .line 1164
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast ACTION_SHUTDOWN timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1166
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 1176
    .end local v15           #delay:J
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1180
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 1181
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

    .line 1183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3a98

    add-long v22, v2, v6

    .line 1184
    .local v22, endTimeIPO:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1185
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 1186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v22, v6

    .line 1187
    .restart local v15       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_10

    .line 1188
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast ACTION_SHUTDOWN_IPO timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1190
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN_IPO timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 1200
    .end local v15           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1203
    .end local v22           #endTimeIPO:J
    :cond_2
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 1204
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 1208
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_3

    .line 1210
    const/16 v2, 0x3a98

    :try_start_2
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    .line 1216
    .end local v10           #am:Landroid/app/IActivityManager;
    :cond_3
    :goto_4
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    .line 1218
    .local v28, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    .line 1222
    .local v11, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v26

    .line 1227
    .local v26, mount:Landroid/os/storage/IMountService;
    if-eqz v11, :cond_4

    :try_start_3
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    :cond_4
    const/4 v12, 0x1

    .line 1229
    .local v12, bluetoothOff:Z
    :goto_5
    if-nez v12, :cond_5

    .line 1230
    const-string v2, "ShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1239
    :cond_5
    :goto_6
    if-eqz v28, :cond_6

    :try_start_4
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_6
    const/16 v29, 0x1

    .line 1240
    .local v29, radioOff:Z
    :goto_7
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    .line 1247
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-eqz v28, :cond_7

    .line 1252
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->setRadioOff()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1260
    :cond_7
    :goto_8
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 1262
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

    .line 1263
    :cond_8
    const-string v2, "ShutdownThread"

    const-string v3, "bypass RadioOff!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_9
    :goto_9
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

    .line 1306
    :cond_a
    const-string v2, "ShutdownThread"

    const-string v3, "bypass MountService!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :goto_a
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 1351
    new-instance v31, Landroid/os/Vibrator;

    invoke-direct/range {v31 .. v31}, Landroid/os/Vibrator;-><init>()V

    .line 1353
    .local v31, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_5
    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 1361
    :goto_b
    const-wide/16 v2, 0x1f4

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_a

    .line 1367
    :goto_c
    const-string v2, "ShutdownThread"

    const-string v3, "Performing ipo low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->delayForPlayAnimation()V

    .line 1371
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1372
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1373
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1376
    :cond_b
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->shutdown(Landroid/content/Context;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 1381
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_20

    .line 1382
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1383
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 1388
    :cond_c
    :goto_d
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1389
    const/4 v2, 0x0

    :try_start_7
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 1390
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1392
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setBacklightBrightnessOff(Z)V

    .line 1393
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1395
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1397
    :try_start_8
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_b

    .line 1400
    :goto_e
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1405
    .end local v31           #vibrator:Landroid/os/Vibrator;
    :goto_f
    return-void

    .line 1146
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

    .line 1172
    .restart local v15       #delay:J
    .restart local v20       #endTime:J
    .restart local v30       #reason:Ljava/lang/String;
    :cond_f
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_2

    .line 1173
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 1176
    .end local v15           #delay:J
    :catchall_0
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v2

    .line 1196
    .restart local v15       #delay:J
    .restart local v22       #endTimeIPO:J
    :cond_10
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_3

    .line 1197
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 1200
    .end local v15           #delay:J
    :catchall_1
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v2

    .line 1227
    .end local v22           #endTimeIPO:J
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v26       #mount:Landroid/os/storage/IMountService;
    .restart local v28       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 1233
    :catch_2
    move-exception v24

    .line 1234
    .local v24, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1235
    const/4 v12, 0x1

    .restart local v12       #bluetoothOff:Z
    goto/16 :goto_6

    .line 1239
    .end local v24           #ex:Landroid/os/RemoteException;
    :cond_12
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 1255
    :catch_3
    move-exception v24

    .line 1256
    .restart local v24       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1257
    const/16 v29, 0x1

    .restart local v29       #radioOff:Z
    goto/16 :goto_8

    .line 1266
    .end local v24           #ex:Landroid/os/RemoteException;
    .restart local v13       #cm:Landroid/net/ConnectivityManager;
    :cond_13
    const/16 v25, 0x0

    .local v25, i:I
    :goto_10
    const/16 v2, 0x20

    move/from16 v0, v25

    if-ge v0, v2, :cond_16

    .line 1267
    if-nez v12, :cond_14

    .line 1269
    :try_start_e
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_19

    const/4 v12, 0x1

    .line 1276
    :cond_14
    :goto_11
    if-nez v29, :cond_15

    .line 1278
    :try_start_f
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5

    move-result v2

    if-nez v2, :cond_1a

    const/16 v29, 0x1

    .line 1284
    :cond_15
    :goto_12
    if-eqz v29, :cond_1b

    if-eqz v12, :cond_1b

    .line 1285
    const-string v2, "ShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_16
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    if-eqz v29, :cond_17

    if-nez v12, :cond_18

    .line 1292
    :cond_17
    const-string v2, "ShutdownThread"

    const-string v3, "change shutdown flow from ipo to normal: BT/MD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 1298
    :cond_18
    if-nez v29, :cond_9

    const-string v2, "com.mediatek.mdlogger.Running"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1299
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "radioOff = false and mdlogger is running now, so wait for memory dump"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_9

    .line 1269
    :cond_19
    const/4 v12, 0x0

    goto :goto_11

    .line 1271
    :catch_4
    move-exception v24

    .line 1272
    .restart local v24       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1273
    const/4 v12, 0x1

    goto :goto_11

    .line 1278
    .end local v24           #ex:Landroid/os/RemoteException;
    :cond_1a
    const/16 v29, 0x0

    goto :goto_12

    .line 1279
    :catch_5
    move-exception v24

    .line 1280
    .restart local v24       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    const/16 v29, 0x1

    goto :goto_12

    .line 1288
    .end local v24           #ex:Landroid/os/RemoteException;
    :cond_1b
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1266
    add-int/lit8 v25, v25, 0x1

    goto :goto_10

    .line 1309
    .end local v25           #i:I
    :cond_1c
    new-instance v27, Lcom/android/internal/app/ShutdownThread$11;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$11;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 1316
    .local v27, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 1319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v18, v2, v6

    .line 1320
    .local v18, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1322
    if-eqz v26, :cond_1e

    .line 1323
    :try_start_10
    invoke-interface/range {v26 .. v27}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 1330
    :goto_13
    :try_start_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1d

    .line 1331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v18, v6

    .line 1332
    .restart local v15       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_1f

    .line 1333
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    .line 1335
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 1345
    .end local v15           #delay:J
    :cond_1d
    monitor-exit v3

    goto/16 :goto_a

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    throw v2

    .line 1325
    :cond_1e
    :try_start_12
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto :goto_13

    .line 1327
    :catch_6
    move-exception v17

    .line 1328
    .local v17, e:Ljava/lang/Exception;
    :try_start_13
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_13

    .line 1341
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v15       #delay:J
    :cond_1f
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_13

    .line 1342
    :catch_7
    move-exception v2

    goto :goto_13

    .line 1354
    .end local v15           #delay:J
    .end local v18           #endShutTime:J
    .end local v27           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v31       #vibrator:Landroid/os/Vibrator;
    :catch_8
    move-exception v17

    .line 1356
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 1384
    .end local v17           #e:Ljava/lang/Exception;
    :cond_20
    sget-wide v2, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_c

    .line 1385
    const-string v2, "ctl.stop"

    const-string v3, "bootanim"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1390
    :catchall_3
    move-exception v2

    :try_start_15
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    throw v2

    .line 1400
    :catchall_4
    move-exception v2

    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v2

    .line 1402
    .end local v31           #vibrator:Landroid/os/Vibrator;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 1403
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_f

    .line 1211
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v13           #cm:Landroid/net/ConnectivityManager;
    .end local v26           #mount:Landroid/os/storage/IMountService;
    .end local v28           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v29           #radioOff:Z
    .restart local v10       #am:Landroid/app/IActivityManager;
    :catch_9
    move-exception v2

    goto/16 :goto_4

    .line 1362
    .end local v10           #am:Landroid/app/IActivityManager;
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v12       #bluetoothOff:Z
    .restart local v13       #cm:Landroid/net/ConnectivityManager;
    .restart local v26       #mount:Landroid/os/storage/IMountService;
    .restart local v28       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v29       #radioOff:Z
    .restart local v31       #vibrator:Landroid/os/Vibrator;
    :catch_a
    move-exception v2

    goto/16 :goto_c

    .line 1398
    :catch_b
    move-exception v2

    goto/16 :goto_e
.end method
