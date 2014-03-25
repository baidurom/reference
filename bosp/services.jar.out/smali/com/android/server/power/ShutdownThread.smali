.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$QbShutdown;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_QUICKBOOT_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final IPO_SHUTDOWN_FLOW:I = 0x1

.field private static ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative; = null

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_MEMORY_DUMP_TIME:I = 0xea60

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x1388

.field private static final NORMAL_SHUTDOWN_FLOW:I = 0x0

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final QUICKBOOT_DIALOG_ALARM_MAX_NUM:I = 0x2

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static bConfirmForAnimation:Z = false

.field private static bPlayaudio:Z = false

.field private static beginAnimationTime:J = 0x0L

.field private static command:Ljava/lang/String; = null

.field private static endAnimationTime:J = 0x0L

.field private static mDelayDim:Ljava/lang/Runnable; = null

.field private static mEnableAnimating:Z = false

.field private static final mEnableAnimatingSync:Ljava/lang/Object; = null

.field private static mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt; = null

.field private static mIsQuickbootShutdown:Z = false

.field private static mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm; = null

.field private static final mQbManager:Lcom/android/server/power/QuickbootManager; = null

.field private static mReboot:Z = false

.field private static mRebootReason:Ljava/lang/String; = null

.field private static mRebootSafeMode:Z = false

.field private static mShutdownFlow:I = 0x0

.field private static mShutdownProgressDialog:Landroid/app/ProgressDialog; = null

.field private static mShutdownThreadSync:Ljava/lang/Object; = null

.field private static final mSpew:Z = true

.field private static pd:Landroid/app/ProgressDialog;

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static sPreShutdownApi:Lcom/android/server/power/IPreShutdown;

.field protected static sPreShutdownConnection:Landroid/content/ServiceConnection;

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

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 113
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 126
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 136
    sput-object v1, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 139
    sput-object v1, Lcom/android/server/power/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 141
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    .line 153
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 154
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 155
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    .line 156
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    .line 159
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    .line 165
    const/16 v0, 0x1388

    sput v0, Lcom/android/server/power/ShutdownThread;->screen_turn_off_time:I

    .line 167
    sput-object v1, Lcom/android/server/power/ShutdownThread;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    .line 171
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 174
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 176
    invoke-static {}, Lcom/android/server/power/QuickbootManager;->getInstance()Lcom/android/server/power/QuickbootManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mQbManager:Lcom/android/server/power/QuickbootManager;

    .line 183
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 455
    new-instance v0, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$6;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    .line 1619
    sput-object v1, Lcom/android/server/power/ShutdownThread;->sPreShutdownApi:Lcom/android/server/power/IPreShutdown;

    .line 1634
    new-instance v0, Lcom/android/server/power/ShutdownThread$13;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$13;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sPreShutdownConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 144
    new-instance v0, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    .line 187
    return-void
.end method

.method public static EnableAnimating(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 194
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
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
    .line 99
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    return p0
.end method

.method static synthetic access$1200(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isQuickBootEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Landroid/app/AlarmManager$PoweroffAlarm;)Landroid/app/AlarmManager$PoweroffAlarm;
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Lcom/android/server/power/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    return-object p0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    return p0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput p0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return p0
.end method

.method static synthetic access$1602(Lcom/android/server/power/IPreShutdown;)Lcom/android/server/power/IPreShutdown;
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Lcom/android/server/power/ShutdownThread;->sPreShutdownApi:Lcom/android/server/power/IPreShutdown;

    return-object p0
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    sput-object p0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Lcom/android/server/power/ShutdownThread;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isQuickBootSupport(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 511
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 512
    :try_start_0
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 513
    const-string v4, "ShutdownThread"

    const-string v6, "ShutdownThread is already running, returning."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    monitor-exit v5

    .line 630
    :goto_0
    return-void

    .line 516
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 517
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 520
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 521
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 522
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v5, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v5}, Lcom/android/server/power/ShutdownThread$7;-><init>()V

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 525
    sput-boolean v7, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 526
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    if-nez v4, :cond_1

    .line 527
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 528
    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 534
    :cond_1
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 535
    const/4 v2, 0x0

    .line 538
    .local v2, mShutOffAnimation:Z
    :try_start_1
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    if-nez v4, :cond_2

    .line 539
    const-class v4, Lcom/mediatek/common/bootanim/IBootAnimExt;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/bootanim/IBootAnimExt;

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 545
    :cond_2
    :goto_1
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-interface {v4}, Lcom/mediatek/common/bootanim/IBootAnimExt;->getScreenTurnOffTime()I

    move-result v3

    .line 548
    .local v3, screenTurnOffTime:I
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIBootAnim get screenTurnOffTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, cust:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 553
    const-string v4, "CUST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 554
    const/4 v2, 0x1

    .line 559
    :cond_3
    const/4 v2, 0x0

    .line 561
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v5

    .line 563
    :try_start_2
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    if-nez v4, :cond_6

    .line 590
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 593
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 595
    :try_start_3
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x1

    const-string v7, "ShutdownThread-cpu"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 597
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 598
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 603
    :goto_3
    const-string v4, "ShutdownThread"

    const-string v5, "shutdown acquire partial WakeLock: cpu"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 607
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 609
    :try_start_4
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v6, 0x1a

    const-string v7, "ShutdownThread-screen"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 611
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 612
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 621
    :cond_4
    :goto_4
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/server/power/ShutdownThread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v4, v5, :cond_5

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/server/power/ShutdownThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 622
    :cond_5
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkQbShutdownFlow()V

    .line 623
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v5

    .line 624
    :try_start_5
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 625
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 517
    .end local v0           #cust:Ljava/lang/String;
    .end local v2           #mShutOffAnimation:Z
    .end local v3           #screenTurnOffTime:I
    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    .line 541
    .restart local v2       #mShutOffAnimation:Z
    :catch_0
    move-exception v1

    .line 542
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 566
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #cust:Ljava/lang/String;
    .restart local v3       #screenTurnOffTime:I
    :cond_6
    if-eqz v2, :cond_7

    .line 567
    :try_start_7
    const-string v4, "ShutdownThread"

    const-string v6, "mIBootAnim.isCustBootAnim() is true"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->bootanimCust()V

    goto/16 :goto_2

    .line 590
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    .line 571
    :cond_7
    :try_start_8
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    .line 572
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_8

    const v4, #string@global_action_reboot#t

    :goto_5
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 576
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_9

    const v4, #string@reboot_progress#t

    :goto_6
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 580
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 581
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 582
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x7d9

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 584
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/view/Window;->addFlags(I)V

    .line 585
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_2

    .line 572
    :cond_8
    const v4, #string@power_off#t

    goto :goto_5

    .line 576
    :cond_9
    const v4, #string@shutdown_progress#t

    goto :goto_6

    .line 599
    :catch_1
    move-exception v1

    .line 600
    .local v1, e:Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v5, "No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 613
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 614
    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v5, "No permission to acquire wake lock"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v8, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4

    .line 628
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_a
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/server/power/ShutdownThread;->start()V

    goto/16 :goto_0
.end method

.method private static bootanimCust()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 635
    const-string v5, "service.shutanim.running"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v5, "ShutdownThread"

    const-string v6, "set service.shutanim.running to 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v1, 0x0

    .line 640
    .local v1, isRotaionEnabled:Z
    :try_start_0
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accelerometer_rotation"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 642
    :goto_0
    if-eqz v1, :cond_0

    .line 643
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 645
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation_restore"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    sput-wide v3, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 654
    :try_start_1
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 656
    .local v2, wm:Landroid/view/IWindowManager;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 659
    .end local v2           #wm:Landroid/view/IWindowManager;
    :goto_2
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startBootAnimation()V

    .line 660
    return-void

    :cond_1
    move v1, v4

    .line 640
    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "ShutdownThread"

    const-string v4, "check Rotation: sInstance.mContext object is null when get Rotation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 657
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private static checkQbShutdownFlow()V
    .locals 1

    .prologue
    .line 959
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mQbManager:Lcom/android/server/power/QuickbootManager;

    invoke-virtual {v0}, Lcom/android/server/power/QuickbootManager;->isQbAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 960
    return-void

    .line 959
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkShutdownFlow()V
    .locals 3

    .prologue
    .line 923
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkShutdownFlow: IPO_Support=false mReboot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 926
    return-void
.end method

.method public static createPreShutdownApi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1622
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPreShutdownApi(), context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1624
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.IPreShutdown"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    if-eqz p0, :cond_0

    .line 1626
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindservice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sPreShutdownConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1632
    :goto_0
    return-void

    .line 1629
    :cond_0
    const-string v1, "ShutdownThread"

    const-string v2, "context is null, cannot bindservice"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static createQbShutdownConfirmDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 7
    .parameter "context"
    .parameter "origin"

    .prologue
    const/4 v6, 0x0

    .line 260
    move-object v3, p1

    .line 262
    .local v3, retAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isQuickBootSupport(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 264
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v4, #layout@quickboot_dialog_confirm#t

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 268
    .local v1, qbConfirmView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 269
    new-instance v2, Lcom/android/server/power/ShutdownThread$QbShutdown;

    invoke-direct {v2, p0, v1}, Lcom/android/server/power/ShutdownThread$QbShutdown;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 271
    .local v2, qbShutdown:Lcom/android/server/power/ShutdownThread$QbShutdown;
    invoke-virtual {v2}, Lcom/android/server/power/ShutdownThread$QbShutdown;->isAvaliable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
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

    .line 281
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 282
    invoke-virtual {v2}, Lcom/android/server/power/ShutdownThread$QbShutdown;->setListener()V

    .line 287
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v1           #qbConfirmView:Landroid/view/View;
    .end local v2           #qbShutdown:Lcom/android/server/power/ShutdownThread$QbShutdown;
    :cond_0
    return-object v3
.end method

.method private static delayForPlayAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 905
    sget-wide v1, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    .line 916
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 908
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-wide v1, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 909
    sget-wide v1, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 911
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sget-wide v1, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown stop bootanimation Thread.currentThread().sleep exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dismissDialog()V
    .locals 3

    .prologue
    .line 896
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissDialog(): mShutdownProgressDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 898
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 899
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    .line 902
    :cond_0
    return-void
.end method

.method public static isPowerOffDialogShowing()Z
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

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

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, qbEnabled:Z
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->isQuickBootSupport(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 700
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "baidu_settings_quickboot"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 703
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 700
    goto :goto_0
.end method

.method private static isQuickBootSupport(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 690
    .local v0, quickbootSupport:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #bool@config_quickbootSupport#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 694
    :goto_0
    return v0

    .line 692
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private normalShutdown()V
    .locals 26

    .prologue
    .line 1180
    new-instance v6, Lcom/android/server/power/ShutdownThread$10;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 1193
    .local v6, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_8

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1194
    .local v24, reason:Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 1202
    const-string v2, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :cond_0
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "_mode"

    sget v5, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v17, v2, v4

    .line 1216
    .local v17, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1217
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 1218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v17, v4

    .line 1219
    .local v12, delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_a

    .line 1220
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast ACTION_SHUTDOWN timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1222
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1232
    .end local v12           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1236
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v19, v2, v4

    .line 1240
    .local v19, endTimeIPO:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1241
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_2

    .line 1242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v19, v4

    .line 1243
    .restart local v12       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_b

    .line 1244
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast ACTION_SHUTDOWN_IPO timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1246
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN_IPO timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1256
    .end local v12           #delay:J
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1259
    .end local v19           #endTimeIPO:J
    :cond_3
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 1261
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 1265
    .local v11, am:Landroid/app/IActivityManager;
    if-eqz v11, :cond_4

    .line 1267
    const/16 v2, 0x2710

    :try_start_2
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1275
    .end local v11           #am:Landroid/app/IActivityManager;
    :cond_4
    :goto_4
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down radios..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 1279
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1281
    :cond_5
    const-string v2, "ShutdownThread"

    const-string v3, "bypass MountService!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :goto_5
    const-string v2, "ShutdownThread"

    const-string v3, "MountService shut done..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :try_start_3
    const-string v2, "service.shutanim.running"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string v2, "ShutdownThread"

    const-string v3, "set service.shutanim.running to 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1343
    :goto_6
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 1346
    new-instance v25, Landroid/os/SystemVibrator;

    invoke-direct/range {v25 .. v25}, Landroid/os/SystemVibrator;-><init>()V

    .line 1348
    .local v25, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_4
    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1356
    :goto_7
    const-wide/16 v2, 0x1f4

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_8

    .line 1363
    :goto_8
    const-string v2, "ShutdownThread"

    const-string v3, "Performing ipo low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1367
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1368
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1369
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1372
    :cond_6
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->shutdown(Landroid/content/Context;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 1375
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->stopFtraceCapture()V

    .line 1379
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_10

    .line 1380
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1381
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mShutdownProgressDialog:Landroid/app/ProgressDialog;

    .line 1393
    :cond_7
    :goto_9
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1394
    const/4 v2, 0x0

    :try_start_6
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 1395
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1397
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setBacklightBrightnessOff(Z)V

    .line 1398
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1400
    sget-object v3, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1402
    :try_start_7
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_9

    .line 1405
    :goto_a
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1410
    .end local v25           #vibrator:Landroid/os/Vibrator;
    :goto_b
    return-void

    .line 1193
    .end local v17           #endTime:J
    .end local v24           #reason:Ljava/lang/String;
    :cond_8
    const-string v2, "0"

    goto/16 :goto_0

    :cond_9
    const-string v2, ""

    goto/16 :goto_1

    .line 1228
    .restart local v12       #delay:J
    .restart local v17       #endTime:J
    .restart local v24       #reason:Ljava/lang/String;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 1229
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 1232
    .end local v12           #delay:J
    :catchall_0
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v2

    .line 1252
    .restart local v12       #delay:J
    .restart local v19       #endTimeIPO:J
    :cond_b
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_3

    .line 1253
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 1256
    .end local v12           #delay:J
    :catchall_1
    move-exception v2

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v2

    .line 1284
    .end local v19           #endTimeIPO:J
    :cond_c
    new-instance v23, Lcom/android/server/power/ShutdownThread$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$11;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 1297
    .local v23, observer:Landroid/os/storage/IMountShutdownObserver;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    add-long v15, v2, v4

    .line 1299
    .local v15, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1301
    :try_start_d
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v22

    .line 1303
    .local v22, mount:Landroid/os/storage/IMountService;
    if-eqz v22, :cond_e

    .line 1304
    invoke-interface/range {v22 .. v23}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 1311
    .end local v22           #mount:Landroid/os/storage/IMountService;
    :goto_c
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_d

    .line 1312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v15, v4

    .line 1313
    .restart local v12       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_f

    .line 1314
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 1316
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1326
    .end local v12           #delay:J
    :cond_d
    monitor-exit v3

    goto/16 :goto_5

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v2

    .line 1306
    .restart local v22       #mount:Landroid/os/storage/IMountService;
    :cond_e
    :try_start_f
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_c

    .line 1308
    .end local v22           #mount:Landroid/os/storage/IMountService;
    :catch_2
    move-exception v14

    .line 1309
    .local v14, e:Ljava/lang/Exception;
    :try_start_10
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_c

    .line 1322
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v12       #delay:J
    :cond_f
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_3

    goto :goto_c

    .line 1323
    :catch_3
    move-exception v2

    goto :goto_c

    .line 1338
    .end local v12           #delay:J
    .end local v15           #endShutTime:J
    .end local v23           #observer:Landroid/os/storage/IMountShutdownObserver;
    :catch_4
    move-exception v21

    .line 1339
    .local v21, ex:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to set \'service.shutanim.running\' = 1)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1349
    .end local v21           #ex:Ljava/lang/Exception;
    .restart local v25       #vibrator:Landroid/os/Vibrator;
    :catch_5
    move-exception v14

    .line 1351
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1383
    .end local v14           #e:Ljava/lang/Exception;
    :cond_10
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 1385
    :try_start_12
    const-string v2, "service.bootanim.exit"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v2, "ShutdownThread"

    const-string v3, "set \'service.bootanim.exit\' = 1)."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_9

    .line 1387
    :catch_6
    move-exception v21

    .line 1388
    .restart local v21       #ex:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to set \'service.bootanim.exit\' = 1)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1395
    .end local v21           #ex:Ljava/lang/Exception;
    :catchall_3
    move-exception v2

    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v2

    .line 1405
    :catchall_4
    move-exception v2

    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    throw v2

    .line 1407
    .end local v25           #vibrator:Landroid/os/Vibrator;
    :cond_11
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->stopFtraceCapture()V

    .line 1408
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_b

    .line 1268
    .restart local v11       #am:Landroid/app/IActivityManager;
    :catch_7
    move-exception v2

    goto/16 :goto_4

    .line 1357
    .end local v11           #am:Landroid/app/IActivityManager;
    .restart local v25       #vibrator:Landroid/os/Vibrator;
    :catch_8
    move-exception v2

    goto/16 :goto_8

    .line 1403
    :catch_9
    move-exception v2

    goto/16 :goto_a
.end method

.method private quickbootShutdown()V
    .locals 26

    .prologue
    .line 980
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mQbManager:Lcom/android/server/power/QuickbootManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/power/QuickbootManager;->saveSystemStates(Landroid/content/Context;)V

    .line 982
    new-instance v6, Lcom/android/server/power/ShutdownThread$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 995
    .local v6, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_7

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 996
    .local v23, reason:Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 1004
    const-string v2, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_0
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1014
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v19, v2, v4

    .line 1015
    .local v19, endTimeQb:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1016
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 1017
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v19, v4

    .line 1018
    .local v12, delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_9

    .line 1019
    const-string v2, "ShutdownThread"

    const-string v4, "Quickboot shutdown broadcast timed out. Enter normal shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 1022
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 1031
    .end local v12           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1038
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v17, v2, v4

    .line 1039
    .local v17, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1040
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_2

    .line 1041
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v17, v4

    .line 1042
    .restart local v12       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_a

    .line 1043
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out. Enter normal shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 1046
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 1055
    .end local v12           #delay:J
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1057
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    if-nez v2, :cond_3

    .line 1058
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 1062
    .local v11, am:Landroid/app/IActivityManager;
    if-eqz v11, :cond_3

    .line 1064
    const/16 v2, 0x2710

    :try_start_2
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1071
    .end local v11           #am:Landroid/app/IActivityManager;
    :cond_3
    :goto_4
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 1073
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1075
    new-instance v22, Lcom/android/server/power/ShutdownThread$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 1082
    .local v22, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 1086
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    add-long v15, v2, v4

    .line 1087
    .local v15, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1089
    :try_start_3
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v21

    .line 1091
    .local v21, mount:Landroid/os/storage/IMountService;
    if-eqz v21, :cond_b

    .line 1092
    invoke-interface/range {v21 .. v22}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1099
    .end local v21           #mount:Landroid/os/storage/IMountService;
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_4

    .line 1100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v15, v4

    .line 1101
    .restart local v12       #delay:J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_c

    .line 1102
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    .end local v12           #delay:J
    :cond_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1113
    .end local v15           #endShutTime:J
    .end local v22           #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    if-eqz v2, :cond_10

    .line 1114
    const-string v2, "ShutdownThread"

    const-string v3, "Entering quickboot poweroff state."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1116
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1117
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1120
    :cond_6
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mQbManager:Lcom/android/server/power/QuickbootManager;

    if-eqz v2, :cond_f

    .line 1122
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mQbManager:Lcom/android/server/power/QuickbootManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/QuickbootManager;->shutdown(Landroid/content/Context;Landroid/app/AlarmManager$PoweroffAlarm;)Z

    move-result v24

    .line 1123
    .local v24, ret:Z
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 1125
    if-nez v24, :cond_d

    .line 1126
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 1169
    .end local v24           #ret:Z
    :goto_6
    return-void

    .line 995
    .end local v17           #endTime:J
    .end local v19           #endTimeQb:J
    .end local v23           #reason:Ljava/lang/String;
    :cond_7
    const-string v2, "0"

    goto/16 :goto_0

    :cond_8
    const-string v2, ""

    goto/16 :goto_1

    .line 1027
    .restart local v12       #delay:J
    .restart local v19       #endTimeQb:J
    .restart local v23       #reason:Ljava/lang/String;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 1028
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 1031
    .end local v12           #delay:J
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 1051
    .restart local v12       #delay:J
    .restart local v17       #endTime:J
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 1052
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 1055
    .end local v12           #delay:J
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 1094
    .restart local v15       #endShutTime:J
    .restart local v21       #mount:Landroid/os/storage/IMountService;
    .restart local v22       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_b
    :try_start_9
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_5

    .line 1096
    .end local v21           #mount:Landroid/os/storage/IMountService;
    :catch_2
    move-exception v14

    .line 1097
    .local v14, e:Ljava/lang/Exception;
    :try_start_a
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1110
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v2

    .line 1106
    .restart local v12       #delay:J
    :cond_c
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_5

    .line 1107
    :catch_3
    move-exception v2

    goto/16 :goto_5

    .line 1130
    .end local v12           #delay:J
    .end local v15           #endShutTime:J
    .end local v22           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v24       #ret:Z
    :cond_d
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 1131
    :try_start_c
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_e

    .line 1132
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 1134
    :cond_e
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1138
    new-instance v25, Landroid/os/SystemVibrator;

    invoke-direct/range {v25 .. v25}, Landroid/os/SystemVibrator;-><init>()V

    .line 1140
    .local v25, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_d
    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1141
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 1148
    :goto_7
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->dismissDialog()V

    .line 1149
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1151
    sget-object v3, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1153
    :try_start_e
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_6

    .line 1156
    :goto_8
    :try_start_f
    monitor-exit v3

    goto :goto_6

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v2

    .line 1134
    .end local v25           #vibrator:Landroid/os/Vibrator;
    :catchall_4
    move-exception v2

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v2

    .line 1142
    .restart local v25       #vibrator:Landroid/os/Vibrator;
    :catch_4
    move-exception v14

    .line 1144
    .restart local v14       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1158
    .end local v14           #e:Ljava/lang/Exception;
    .end local v24           #ret:Z
    .end local v25           #vibrator:Landroid/os/Vibrator;
    :cond_f
    const-string v2, "ShutdownThread"

    const-string v3, "Life is so hard!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 1161
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 1163
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_6

    .line 1166
    :cond_10
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_6

    .line 1065
    .restart local v11       #am:Landroid/app/IActivityManager;
    :catch_5
    move-exception v2

    goto/16 :goto_4

    .line 1154
    .end local v11           #am:Landroid/app/IActivityManager;
    .restart local v24       #ret:Z
    .restart local v25       #vibrator:Landroid/os/Vibrator;
    :catch_6
    move-exception v2

    goto :goto_8
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    const/4 v1, 0x0

    .line 476
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 477
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 479
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 482
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 484
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 485
    const-string v0, "ShutdownThread"

    const-string v1, "reboot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 487
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 6
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    .line 1565
    if-eqz p0, :cond_2

    .line 1566
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

    .line 1567
    if-eqz p1, :cond_0

    const-string v2, "recovery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1568
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1571
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    :goto_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1595
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :try_start_1
    sget-object v2, Lcom/android/server/power/ShutdownThread;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    if-nez v2, :cond_1

    .line 1601
    const-class v2, Lcom/mediatek/common/hdmi/IHDMINative;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/hdmi/IHDMINative;

    sput-object v2, Lcom/android/server/power/ShutdownThread;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1605
    :cond_1
    :goto_1
    sget-object v2, Lcom/android/server/power/ShutdownThread;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;

    invoke-interface {v2, v5}, Lcom/mediatek/common/hdmi/IHDMINative;->hdmiPowerEnable(Z)Z

    .line 1609
    const-string v2, "ctl.start"

    const-string v3, "shutdown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1617
    :goto_2
    return-void

    .line 1572
    :catch_0
    move-exception v0

    .line 1573
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1577
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 1579
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_3
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1587
    :goto_3
    const-wide/16 v2, 0x1f4

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1588
    :catch_1
    move-exception v2

    goto :goto_0

    .line 1580
    :catch_2
    move-exception v0

    .line 1582
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1602
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :catch_3
    move-exception v0

    .line 1603
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1614
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 1615
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutdown rebootOrShutdown Thread.currentThread().sleep exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 497
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 498
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 500
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 503
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 505
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 506
    const-string v0, "ShutdownThread"

    const-string v1, "rebootSafeMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 508
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 9
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v8, 0x0

    .line 208
    sput-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 209
    sput-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 216
    if-nez p1, :cond_0

    .line 217
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread$QbShutdown;->hasPoweroffAlarm(Landroid/content/Context;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 218
    const/4 v5, 0x0

    sput-object v5, Lcom/android/server/power/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 222
    :cond_0
    const-string v5, "ShutdownThread"

    const-string v6, "!!! Request to shutdown !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->startFtraceCapture()V

    .line 226
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 227
    .local v4, stack:[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 229
    .local v1, element:Ljava/lang/StackTraceElement;
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \t|----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v1           #element:Ljava/lang/StackTraceElement;
    :cond_1
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->createPreShutdownApi(Landroid/content/Context;)V

    .line 235
    const-string v5, "ro.monkey"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    const-string v5, "ShutdownThread"

    const-string v6, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_1
    return-void

    .line 240
    :cond_2
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method public static shutdownFromPoweroffAlarm(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 249
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 250
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 251
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    .line 253
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mPoweroffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;

    .line 255
    invoke-static {p0, v1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 256
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 14
    .parameter "context"
    .parameter "confirm"

    .prologue
    const v13, #string@yes#t

    const v12, #string@no#t

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 295
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 296
    :try_start_0
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_1

    .line 297
    const-string v7, "ShutdownThread"

    const-string v9, "Request to shutdown already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    monitor-exit v8

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    const-string v7, "ShutdownThread"

    const-string v8, "Notifying thread to start radio shutdown"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sput-boolean p1, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #integer@config_longPressOnPowerBehavior#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 314
    .local v1, longPressBehavior:I
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v7, :cond_3

    const v3, #string@reboot_safemode_confirm#t

    .line 319
    .local v3, resourceId1:I
    :goto_1
    if-ne v1, v10, :cond_5

    const v4, #string@reboot_confirm_question#t

    .line 322
    .local v4, resourceId2:I
    :goto_2
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v7, :cond_6

    move v2, v4

    .line 323
    .local v2, resourceId:I
    :goto_3
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v7, :cond_7

    const v6, #string@reboot_safemode_title#t

    .line 326
    .local v6, titleId1:I
    :goto_4
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v7, :cond_8

    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v7, :cond_8

    const v5, #string@global_action_reboot#t

    .line 329
    .local v5, titleId:I
    :goto_5
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-eqz p1, :cond_a

    .line 332
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 333
    .local v0, closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_2

    .line 334
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 336
    :cond_2
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v7, :cond_9

    .line 338
    const-string v7, "ShutdownThread"

    const-string v8, "PowerOff dialog doesn\'t exist. Create it first"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v8, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v8}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    invoke-virtual {v7, v12, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    sput-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 373
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-static {p0, v7}, Lcom/android/server/power/ShutdownThread;->createQbShutdownConfirmDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object v7

    sput-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 413
    :goto_6
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 414
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 420
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/Window;->addFlags(I)V

    .line 422
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v7, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 423
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 425
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 426
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 300
    .end local v0           #closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v1           #longPressBehavior:I
    .end local v2           #resourceId:I
    .end local v3           #resourceId1:I
    .end local v4           #resourceId2:I
    .end local v5           #titleId:I
    .end local v6           #titleId1:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 314
    .restart local v1       #longPressBehavior:I
    :cond_3
    if-ne v1, v10, :cond_4

    const v3, #string@shutdown_confirm_question#t

    goto/16 :goto_1

    :cond_4
    const v3, #string@shutdown_confirm#t

    goto/16 :goto_1

    .line 319
    .restart local v3       #resourceId1:I
    :cond_5
    const v4, #string@reboot_confirm#t

    goto/16 :goto_2

    .restart local v4       #resourceId2:I
    :cond_6
    move v2, v3

    .line 322
    goto/16 :goto_3

    .line 323
    .restart local v2       #resourceId:I
    :cond_7
    const v6, #string@power_off#t

    goto/16 :goto_4

    .restart local v6       #titleId1:I
    :cond_8
    move v5, v6

    .line 326
    goto/16 :goto_5

    .line 376
    .restart local v0       #closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v5       #titleId:I
    :cond_9
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, #array@shutdown_reboot_options#t

    new-instance v9, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v9, p0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8, v11, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v8, p0}, Lcom/android/server/power/ShutdownThread$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v8}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    invoke-virtual {v7, v12, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    sput-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    goto :goto_6

    .line 429
    .end local v0           #closer:Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_a
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 13
    .parameter "timeout"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1413
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 1414
    .local v6, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v1, v8, :cond_3

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v9, "2"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string v9, "3"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v2, v8

    .line 1419
    .local v2, bypassRadioOff:Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    int-to-long v11, p1

    add-long v4, v9, v11

    .line 1420
    .local v4, endTime:J
    new-array v3, v8, [Z

    .line 1421
    .local v3, done:[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$12;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$12;-><init>(Lcom/android/server/power/ShutdownThread;Z[ZJ)V

    .line 1538
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1540
    int-to-long v9, p1

    :try_start_0
    invoke-virtual {v0, v9, v10}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    :goto_1
    aget-boolean v1, v3, v7

    if-nez v1, :cond_2

    .line 1544
    const-string v1, "ShutdownThread"

    const-string v9, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v1, v8, :cond_1

    .line 1546
    const-string v1, "ShutdownThread"

    const-string v8, "change shutdown flow from ipo to normal: BT/MD"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    sput v7, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1549
    :cond_1
    const-string v1, "debug.mdlogger.Running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1550
    const-string v1, "ShutdownThread"

    const-string v7, "radioOff = false and mdlogger is running now, so wait for memory dump"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const-wide/32 v7, 0xea60

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 1555
    :cond_2
    return-void

    .end local v0           #t:Ljava/lang/Thread;
    .end local v2           #bypassRadioOff:Z
    .end local v3           #done:[Z
    .end local v4           #endTime:J
    :cond_3
    move v2, v7

    .line 1414
    goto :goto_0

    .line 1541
    .restart local v0       #t:Ljava/lang/Thread;
    .restart local v2       #bypassRadioOff:Z
    .restart local v3       #done:[Z
    .restart local v4       #endTime:J
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static startBootAnimation()V
    .locals 3

    .prologue
    .line 665
    :try_start_0
    const-string v1, "service.bootanim.exit"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v1, "ShutdownThread"

    const-string v2, "Set \'service.bootanim.exit\' = 0)."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    if-eqz v1, :cond_0

    .line 672
    const-string v1, "ctl.start"

    const-string v2, "bootanim:shut mp3"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v1, "ShutdownThread"

    const-string v2, "bootanim:shut mp3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_1
    return-void

    .line 667
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 668
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "ShutdownThread"

    const-string v2, "Failed to set \'service.bootanim.exit\' = 0)."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_0
    const-string v1, "ctl.start"

    const-string v2, "bootanim:shut nomp3"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v1, "ShutdownThread"

    const-string v2, "bootanim:shut nomp3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 680
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 681
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 682
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 683
    monitor-exit v1

    .line 684
    return-void

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 967
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkQbShutdownFlow()V

    .line 968
    :goto_0
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    if-eqz v0, :cond_0

    .line 969
    const-string v0, "ShutdownThread"

    const-string v1, "enter quickboot shutdown flow..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->quickbootShutdown()V

    goto :goto_0

    .line 973
    :cond_0
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mIsQuickbootShutdown:Z

    if-nez v0, :cond_1

    .line 974
    const-string v0, "ShutdownThread"

    const-string v1, "enter normal shutdown flow..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->normalShutdown()V

    .line 977
    :cond_1
    return-void
.end method
