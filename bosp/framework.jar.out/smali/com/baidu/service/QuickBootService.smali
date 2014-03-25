.class public Lcom/baidu/service/QuickBootService;
.super Lcom/baidu/service/IQuickBootService$Stub;
.source "QuickBootService.java"


# static fields
.field private static final CHARGER_ANIM_DISPLAY_TIME:I = 0x1770

.field private static final CHARGER_RUNNING_BIT:I = 0x2

.field private static final MSG_CHARGER:I = 0x2

.field private static final MSG_NOTICE:I = 0x3

.field private static final MSG_QB_BOOT:I = 0x1

.field private static final NOTICE_SHOWING_BIT:I = 0x4

.field private static final POWEROFF_ALARM_TYPE:Ljava/lang/String; = "poweroff_alarm_type"

.field private static final QUICKBOOT_VIBRATE_MS:I = 0x1f4

.field private static final QUICK_BOOTING_BIT:I = 0x1

.field private static final STATE_MASK:I = 0x7

.field private static final STOP_BOOT_ANIM_DELAY:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "QuickBootService"


# instance fields
.field private final ACTION_QUICKBOOT_POWEROFF_ALARM:Ljava/lang/String;

.field private final BOOT_POWEROFF_ALARM:I

.field private final NOTICE_CLOSE:I

.field private final NOTICE_SHOW:I

.field private final START_CHARGE:I

.field private final STOP_CHARGE:I

.field private mBatteryLevel:I

.field private mChargerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field private mDeviceCharged:Z

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mLongPressWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNoticeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPauseLock:Ljava/lang/Object;

.field private final mPoweroffAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mQuickBootCompleted:Z

.field private mQuickBootThread:Landroid/os/HandlerThread;

.field private final mStopChargerAnim:Ljava/lang/Runnable;

.field private mWorkState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 114
    invoke-direct {p0}, Lcom/baidu/service/IQuickBootService$Stub;-><init>()V

    .line 43
    iput v4, p0, Lcom/baidu/service/QuickBootService;->START_CHARGE:I

    .line 44
    iput v2, p0, Lcom/baidu/service/QuickBootService;->STOP_CHARGE:I

    .line 45
    iput v4, p0, Lcom/baidu/service/QuickBootService;->NOTICE_SHOW:I

    .line 46
    iput v2, p0, Lcom/baidu/service/QuickBootService;->NOTICE_CLOSE:I

    .line 47
    iput v4, p0, Lcom/baidu/service/QuickBootService;->BOOT_POWEROFF_ALARM:I

    .line 50
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_POWEROFF_ALARM"

    iput-object v1, p0, Lcom/baidu/service/QuickBootService;->ACTION_QUICKBOOT_POWEROFF_ALARM:Ljava/lang/String;

    .line 71
    iput-boolean v2, p0, Lcom/baidu/service/QuickBootService;->mEnabled:Z

    .line 74
    iput-boolean v2, p0, Lcom/baidu/service/QuickBootService;->mDeviceCharged:Z

    .line 76
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/service/QuickBootService;->mBatteryLevel:I

    .line 78
    iput-boolean v2, p0, Lcom/baidu/service/QuickBootService;->mQuickBootCompleted:Z

    .line 91
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/service/QuickBootService;->mLock:Ljava/lang/Object;

    .line 94
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/service/QuickBootService;->mPauseLock:Ljava/lang/Object;

    .line 96
    new-instance v1, Lcom/baidu/service/QuickBootService$1;

    invoke-direct {v1, p0}, Lcom/baidu/service/QuickBootService$1;-><init>(Lcom/baidu/service/QuickBootService;)V

    iput-object v1, p0, Lcom/baidu/service/QuickBootService;->mPoweroffAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 498
    new-instance v1, Lcom/baidu/service/QuickBootService$3;

    invoke-direct {v1, p0}, Lcom/baidu/service/QuickBootService$3;-><init>(Lcom/baidu/service/QuickBootService;)V

    iput-object v1, p0, Lcom/baidu/service/QuickBootService;->mStopChargerAnim:Ljava/lang/Runnable;

    .line 115
    const-string v1, "QuickBootService"

    const-string v2, "QuickBootService created!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-object p1, p0, Lcom/baidu/service/QuickBootService;->mContext:Landroid/content/Context;

    .line 118
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "QuickBootService"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/baidu/service/QuickBootService;->mQuickBootThread:Landroid/os/HandlerThread;

    .line 120
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 121
    .local v0, powerManager:Landroid/os/PowerManager;
    const-string v1, "QuickBootService.mChargerWakeLock"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/service/QuickBootService;->mChargerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 123
    const-string v1, "QuickBootService.mLongPressWakeLock"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/service/QuickBootService;->mLongPressWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    const-string v1, "QuickBootService.mNoticeWakeLock"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/service/QuickBootService;->mNoticeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 127
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mPoweroffAlarmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_QUICKBOOT_POWEROFF_ALARM"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/service/QuickBootService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/service/QuickBootService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/service/QuickBootService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/service/QuickBootService;->mLongPressWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/service/QuickBootService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/service/QuickBootService;->handleStartQuickBoot(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/service/QuickBootService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/service/QuickBootService;->handleCharger(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/service/QuickBootService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/service/QuickBootService;->handleShowNotice(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/service/QuickBootService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->stopCharger()V

    return-void
.end method

.method private closeNotice()V
    .locals 2

    .prologue
    .line 536
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_0
    iget v0, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    .line 538
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    iget-object v0, p0, Lcom/baidu/service/QuickBootService;->mNoticeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 540
    return-void

    .line 538
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleCharger(Z)V
    .locals 0
    .parameter "charger"

    .prologue
    .line 442
    if-eqz p1, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->startCharger()V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->stopCharger()V

    goto :goto_0
.end method

.method private handleShowNotice(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 506
    if-eqz p1, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->showNotice()V

    .line 514
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->closeNotice()V

    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/service/QuickBootService;->setScreenOn(Z)V

    goto :goto_0
.end method

.method private handleStartQuickBoot(Z)V
    .locals 5
    .parameter "isAlarmBoot"

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/baidu/service/QuickBootService;->startQuickBoot(Z)V

    .line 331
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mLongPressWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 333
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mQuickBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mPauseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 342
    :cond_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "QuickBootService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mQuickBootThread can not blocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static main(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 556
    const-string v1, "QuickBootService"

    const-string v2, "Start the QuickBootService!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v0, Lcom/baidu/service/QuickBootService;

    invoke-direct {v0, p0}, Lcom/baidu/service/QuickBootService;-><init>(Landroid/content/Context;)V

    .line 558
    .local v0, service:Lcom/baidu/service/QuickBootService;
    const-string v1, "QuickBootService"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 559
    return-void
.end method

.method private setPoweroffAlarm(IJ)V
    .locals 8
    .parameter "alarmType"
    .parameter "when"

    .prologue
    .line 183
    const-string v5, "QuickBootService"

    const-string/jumbo v6, "setPoweroffAlarm!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_QUICKBOOT_POWEROFF_ALARM"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, intent:Landroid/content/Intent;
    const-wide/16 v3, 0x0

    .line 188
    .local v3, poweronTime:J
    if-ltz p1, :cond_0

    const/4 v5, 0x2

    if-gt p1, v5, :cond_0

    .line 190
    const-string/jumbo v5, "poweroff_alarm_type"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    move-wide v3, p2

    .line 196
    :goto_0
    iget-object v5, p0, Lcom/baidu/service/QuickBootService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 198
    .local v2, operation:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/baidu/service/QuickBootService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 200
    .local v0, am:Landroid/app/AlarmManager;
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 201
    return-void

    .line 193
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v2           #operation:Landroid/app/PendingIntent;
    :cond_0
    const-string/jumbo v5, "poweroff_alarm_type"

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setScreenOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/high16 v3, 0x4000

    .line 543
    if-eqz p1, :cond_0

    .line 544
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_QUICKBOOT_SCREENON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v1, screenOnIntent:Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 546
    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 552
    .end local v1           #screenOnIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 548
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_QUICKBOOT_SCREENOFF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, screenOffIntent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 550
    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showNotice()V
    .locals 4

    .prologue
    .line 517
    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 518
    :try_start_0
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    .line 520
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "QuickBootService"

    const-string v3, "Now the charging animation is displaying, we should turn it off first!"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->stopChargerLocked()V

    .line 526
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT_NOTICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, showIntent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 528
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 531
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/baidu/service/QuickBootService;->setScreenOn(Z)V

    .line 532
    monitor-exit v2

    .line 533
    return-void

    .line 532
    .end local v0           #showIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startBootAnim()V
    .locals 2

    .prologue
    .line 419
    const-string v0, "QuickBootService"

    const-string v1, "Start the boot animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string/jumbo v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method private startCharger()V
    .locals 6

    .prologue
    .line 453
    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 455
    :try_start_0
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    .line 457
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->closeNotice()V

    .line 463
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_QUICKBOOT_START_CHARGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, ChargerIntent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 465
    const-string/jumbo v1, "level"

    iget v3, p0, Lcom/baidu/service/QuickBootService;->mBatteryLevel:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/baidu/service/QuickBootService;->setScreenOn(Z)V

    .line 472
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/service/QuickBootService;->mStopChargerAnim:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 473
    monitor-exit v2

    .line 474
    return-void

    .line 473
    .end local v0           #ChargerIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startQuickBoot(Z)V
    .locals 8
    .parameter "isAlarmBoot"

    .prologue
    .line 347
    iget-object v5, p0, Lcom/baidu/service/QuickBootService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 349
    :try_start_0
    iget v4, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    .line 351
    iget v4, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 352
    const-string v4, "QuickBootService"

    const-string v6, "Now the Notice is showing, we should close it first!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->closeNotice()V

    .line 354
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/baidu/service/QuickBootService;->setScreenOn(Z)V

    .line 357
    :cond_0
    iget v4, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 358
    const-string v4, "QuickBootService"

    const-string v6, "Now the charging animation is displaying, we should turn it off first!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->stopCharger()V

    .line 363
    :cond_1
    new-instance v3, Landroid/os/SystemVibrator;

    invoke-direct {v3}, Landroid/os/SystemVibrator;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .local v3, vibrator:Landroid/os/SystemVibrator;
    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-virtual {v3, v6, v7}, Landroid/os/SystemVibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    :goto_0
    :try_start_2
    const-string v4, "QuickBootService"

    const-string v6, "Delay 1s to wait the Screen off"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 379
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->startBootAnim()V

    .line 382
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/baidu/service/QuickBootService;->mQuickBootCompleted:Z

    .line 383
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v2, quickbootIntent:Landroid/content/Intent;
    const/high16 v4, 0x4000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    const-string v4, "alarmboot"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    iget-object v4, p0, Lcom/baidu/service/QuickBootService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 389
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/baidu/service/QuickBootService;->setScreenOn(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    :cond_2
    const-wide/16 v6, 0x1388

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 398
    :goto_2
    :try_start_5
    iget-boolean v4, p0, Lcom/baidu/service/QuickBootService;->mQuickBootCompleted:Z

    if-eqz v4, :cond_2

    .line 404
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->stopBootAnim()V

    .line 407
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/baidu/service/QuickBootService;->mEnabled:Z

    .line 410
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/baidu/service/QuickBootService;->mQuickBootCompleted:Z

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_QUICKBOOT_BOOT_COMPLETE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v0, QbCompleteIntent:Landroid/content/Intent;
    const/high16 v4, 0x4000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 413
    iget-object v4, p0, Lcom/baidu/service/QuickBootService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    monitor-exit v5

    .line 415
    return-void

    .line 366
    .end local v0           #QbCompleteIntent:Landroid/content/Intent;
    .end local v2           #quickbootIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 368
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "QuickBootService"

    const-string v6, "Failed to vibrate to befor turn on system!!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #vibrator:Landroid/os/SystemVibrator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 374
    .restart local v3       #vibrator:Landroid/os/SystemVibrator;
    :catch_1
    move-exception v1

    .line 375
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v4, "QuickBootService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thread can not sleep: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 395
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #quickbootIntent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 396
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "QuickBootService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thread can not sleep: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method private stopBootAnim()V
    .locals 6

    .prologue
    .line 427
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 428
    .local v2, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 430
    const-string v3, "QuickBootService"

    const-string v4, "Stop the boot animation"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 432
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 433
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v0           #data:Landroid/os/Parcel;
    .end local v2           #surfaceFlinger:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v1

    .line 437
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "QuickBootService"

    const-string v4, "Boot complete: SurfaceFlinger is dead!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopCharger()V
    .locals 2

    .prologue
    .line 478
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 479
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/service/QuickBootService;->stopChargerLocked()V

    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/service/QuickBootService;->setScreenOn(Z)V

    .line 482
    monitor-exit v1

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopChargerLocked()V
    .locals 3

    .prologue
    .line 486
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    .line 487
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mChargerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 489
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mStopChargerAnim:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_QUICKBOOT_STOP_CHARGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v0, unChargerIntent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 495
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 496
    return-void
.end method


# virtual methods
.method public enableQuickBootService(IJ)V
    .locals 6
    .parameter "alarmType"
    .parameter "when"

    .prologue
    .line 131
    const-string v1, "QuickBootService"

    const-string v2, "enable QuickBootService"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    iget-boolean v1, p0, Lcom/baidu/service/QuickBootService;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "QuickBootService"

    const-string v3, "QuickBootService already enabled!"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    monitor-exit v2

    .line 180
    :goto_0
    return-void

    .line 139
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/service/QuickBootService;->mEnabled:Z

    .line 140
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    .line 142
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mQuickBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v3, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v1, v3, :cond_3

    .line 143
    iget-object v3, p0, Lcom/baidu/service/QuickBootService;->mPauseLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :try_start_1
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mPauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 145
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    :cond_1
    :goto_1
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/service/QuickBootService;->setPoweroffAlarm(IJ)V

    .line 169
    iget-boolean v1, p0, Lcom/baidu/service/QuickBootService;->mDeviceCharged:Z

    if-eqz v1, :cond_2

    .line 170
    iget-object v3, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mChargerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 172
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 174
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 175
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 177
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 179
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 145
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mQuickBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 148
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Lcom/baidu/service/QuickBootService$2;

    iget-object v3, p0, Lcom/baidu/service/QuickBootService;->mQuickBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/baidu/service/QuickBootService$2;-><init>(Lcom/baidu/service/QuickBootService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 177
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public notifyBatteryStatus(IZ)V
    .locals 4
    .parameter "batteryLevel"
    .parameter "charged"

    .prologue
    .line 286
    if-ltz p1, :cond_0

    const/16 v1, 0x64

    if-gt p1, v1, :cond_0

    .line 287
    iput p1, p0, Lcom/baidu/service/QuickBootService;->mBatteryLevel:I

    .line 289
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/service/QuickBootService;->mDeviceCharged:Z

    if-eq v1, p2, :cond_1

    .line 290
    iput-boolean p2, p0, Lcom/baidu/service/QuickBootService;->mDeviceCharged:Z

    .line 291
    iget-boolean v1, p0, Lcom/baidu/service/QuickBootService;->mEnabled:Z

    if-nez v1, :cond_2

    .line 292
    const-string v1, "QuickBootService"

    const-string v2, "QuickBootService haven\'t enabled! We will do nothing!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 295
    :cond_2
    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 296
    if-eqz p2, :cond_4

    .line 298
    :try_start_0
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    .line 300
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mChargerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 301
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 302
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 303
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 304
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 317
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 309
    :cond_4
    :try_start_1
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 310
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 311
    .restart local v0       #msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 312
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 313
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public notifyPowerLongPress()V
    .locals 4

    .prologue
    .line 205
    const-string v1, "QuickBootService"

    const-string v2, "Power Key Long Press hanppened!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-boolean v1, p0, Lcom/baidu/service/QuickBootService;->mEnabled:Z

    if-nez v1, :cond_0

    .line 207
    const-string v1, "QuickBootService"

    const-string v2, "QuickBootService haven\'t enabled! We will do nothing!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 212
    :try_start_0
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mLongPressWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 214
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 217
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyPowerPressOnce()V
    .locals 4

    .prologue
    .line 263
    const-string v1, "QuickBootService"

    const-string v2, "Power key is pressed once!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-boolean v1, p0, Lcom/baidu/service/QuickBootService;->mEnabled:Z

    if-nez v1, :cond_0

    .line 265
    const-string v1, "QuickBootService"

    const-string v2, "QuickBootService haven\'t enabled! We will do nothing!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 271
    :try_start_0
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mNoticeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 274
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 275
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 276
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 277
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyPowerShortPress()V
    .locals 4

    .prologue
    .line 226
    const-string v1, "QuickBootService"

    const-string v2, "Power key Short Press happened!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-boolean v1, p0, Lcom/baidu/service/QuickBootService;->mEnabled:Z

    if-nez v1, :cond_0

    .line 228
    const-string v1, "QuickBootService"

    const-string v2, "QuickBootService haven\'t enabled! We will do nothing!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/service/QuickBootService;->mDeviceCharged:Z

    if-nez v1, :cond_2

    .line 232
    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 234
    :try_start_0
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 235
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 236
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 237
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 238
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 247
    :try_start_1
    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    iget v1, p0, Lcom/baidu/service/QuickBootService;->mWorkState:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mChargerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 250
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 251
    .restart local v0       #msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 252
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 253
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v1, p0, Lcom/baidu/service/QuickBootService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public notifyQuickBootComplete()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/service/QuickBootService;->mQuickBootCompleted:Z

    .line 325
    return-void
.end method
