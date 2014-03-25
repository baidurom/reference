.class Lcom/android/server/AlarmManagerService;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;,
        Lcom/android/server/AlarmManagerService$DMReceiver;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;
    }
.end annotation


# static fields
.field private static final ALARM_EVENT:I = 0x1

.field private static final ALLOW_POWEROFF_ALARM_TYPE:Ljava/lang/String; = "allow_poweroff_alarm"

.field private static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field private static final DISABLE:I = 0x0

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static final ENABLE:I = 0x1

.field private static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final POWEROFF_ALARM_TYPE:Ljava/lang/String; = "poweroff_alarm_type"

.field private static final QUANTUM:J = 0xdbba0L

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final TIME_CHANGED_MASK:I = 0x10000

.field private static localLOGV:Z

.field private static final mBackgroundIntent:Landroid/content/Intent;


# instance fields
.field private final ACTION_QUICKBOOT_BOOT:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_SHUTDOWN:Ljava/lang/String;

.field private final BAIDU_CLOCK_PACKAGE:Ljava/lang/String;

.field private final POWEROFF_ALARM_WAKE_TIME:I

.field private final POWEROFF_ALARM_WAKE_TIME_BUFFER:I

.field private mAlarmIconPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootPackage:Ljava/lang/String;

.field private mBroadcastRefCount:I

.field private final mBroadcastStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;"
        }
    .end annotation
.end field

.field private mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDMEnable:Z

.field private mDMLock:Ljava/lang/Object;

.field private mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

.field private final mDateChangeSender:Landroid/app/PendingIntent;

.field private mDescriptor:I

.field private mDmFreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mDmResendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private mIPOShutdown:Z

.field private mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

.field private mIsQbShutdown:Z

.field private mLock:Ljava/lang/Object;

.field private final mLog:Lcom/android/internal/util/LocalLog;

.field private mPowerOffAlarmLock:Ljava/lang/Object;

.field private final mPoweroffAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mPoweroffWakeAlarm:Landroid/app/PendingIntent;

.field private mReceiver:Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

.field private final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mRtcAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtcWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeTickSender:Landroid/app/PendingIntent;

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private final mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

.field private mWaitThreadlock:Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 212
    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    .line 97
    new-instance v9, Lcom/android/internal/util/LocalLog;

    const-string v10, "AlarmManager"

    invoke-direct {v9, v10}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 99
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 101
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    .line 102
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    .line 103
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    .line 104
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    .line 105
    new-instance v9, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v9}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 108
    iput v8, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 110
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 111
    new-instance v9, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    .line 112
    new-instance v9, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 115
    new-instance v9, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 119
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 120
    iput-boolean v7, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    .line 121
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    .line 122
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 123
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 124
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 128
    const-string v9, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->ACTION_QUICKBOOT_SHUTDOWN:Ljava/lang/String;

    .line 129
    const-string v9, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->ACTION_QUICKBOOT_BOOT:Ljava/lang/String;

    .line 130
    const-string v9, "com.baidu.baiduclock"

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->BAIDU_CLOCK_PACKAGE:Ljava/lang/String;

    .line 132
    const/16 v9, 0x3a98

    iput v9, p0, Lcom/android/server/AlarmManagerService;->POWEROFF_ALARM_WAKE_TIME:I

    .line 133
    const/16 v9, 0x1388

    iput v9, p0, Lcom/android/server/AlarmManagerService;->POWEROFF_ALARM_WAKE_TIME_BUFFER:I

    .line 134
    iput-boolean v8, p0, Lcom/android/server/AlarmManagerService;->mIsQbShutdown:Z

    .line 168
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    .line 169
    iput-boolean v8, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    .line 170
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    .line 171
    iput-object v11, p0, Lcom/android/server/AlarmManagerService;->mReceiver:Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

    .line 172
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    .line 173
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 209
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    .line 213
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    .line 214
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()I

    move-result v9

    iput v9, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    .line 215
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mDescriptor is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v9, "persist.sys.timezone"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, tz:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 220
    invoke-virtual {p0, v6}, Lcom/android/server/AlarmManagerService;->setTimeZone(Ljava/lang/String;)V

    .line 223
    :cond_0
    const-string v9, "power"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 224
    .local v5, pm:Landroid/os/PowerManager;
    const-string v9, "AlarmManager"

    invoke-virtual {v5, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 225
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "power_off_alarm_package_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    .line 227
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.TIME_TICK"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x4000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v8, v9, v8, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 231
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.DATE_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, intent:Landroid/content/Intent;
    const/high16 v9, 0x2000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    const/high16 v9, 0x800

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v8, v3, v9, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 237
    new-instance v9, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 238
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 239
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 240
    new-instance v9, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 241
    new-instance v9, Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mReceiver:Lcom/android/server/AlarmManagerService$PowerOffAlarmReceiver;

    .line 243
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 244
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    const-string v10, "com.android.deskclock"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    const-string v10, "com.baidu.baiduclock"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :try_start_0
    const-string v9, "DMAgent"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 249
    .local v1, binder:Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 250
    invoke-static {v1}, Lcom/mediatek/common/dm/DMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v0

    .line 251
    .local v0, agent:Lcom/mediatek/common/dm/DMAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DMAgent;->isLockFlagSet()Z

    move-result v4

    .line 252
    .local v4, locked:Z
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dm state lock is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/server/AlarmManagerService;->enableDm(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v4           #locked:Z
    :goto_1
    new-instance v7, Lcom/android/server/AlarmManagerService$DMReceiver;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$DMReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 261
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 262
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 267
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->registerQbReceiver()V

    .line 269
    iget v7, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 270
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 311
    :goto_2
    return-void

    .restart local v0       #agent:Lcom/mediatek/common/dm/DMAgent;
    .restart local v1       #binder:Landroid/os/IBinder;
    .restart local v4       #locked:Z
    :cond_1
    move v7, v8

    .line 253
    goto :goto_0

    .line 255
    .end local v0           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v4           #locked:Z
    :cond_2
    :try_start_1
    const-string v7, "AlarmManager"

    const-string v8, "dm binder is null!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 257
    .end local v1           #binder:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 258
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "AlarmManager"

    const-string v8, "remote error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const-string v7, "AlarmManager"

    const-string v8, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 15
    .parameter
    .parameter
    .parameter "nowELAPSED"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1691
    .local p1, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, mDmFreeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, resendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1692
    .local v14, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1693
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1695
    .local v8, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 1696
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1697
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v2, :cond_1

    .line 1698
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending alarm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_1
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.ALARM_COUNT"

    iget v7, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1705
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v2, :cond_2

    .line 1706
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1709
    :cond_2
    new-instance v13, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {v13, p0, v2}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)V

    .line 1711
    .local v13, inflight:Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    iget v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 1713
    iget-object v9, v13, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1714
    .local v9, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 1715
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v2, :cond_5

    .line 1716
    const/4 v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1717
    move-wide/from16 v0, p3

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 1721
    :goto_2
    iget-object v11, v13, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1722
    .local v11, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 1723
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v2, :cond_6

    .line 1724
    const/4 v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1725
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 1729
    :goto_3
    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v2, :cond_4

    .line 1731
    :cond_3
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 1732
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 1733
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V

    .line 1695
    .end local v9           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1719
    .restart local v9       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v13       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_5
    iget v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1742
    .end local v9           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :catch_0
    move-exception v10

    .line 1743
    .local v10, e:Landroid/app/PendingIntent$CanceledException;
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1746
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1727
    .end local v10           #e:Landroid/app/PendingIntent$CanceledException;
    .restart local v9       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v11       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v13       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_6
    :try_start_1
    iget v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1748
    .end local v9           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v10

    .line 1749
    .local v10, e:Ljava/lang/RuntimeException;
    const-string v2, "AlarmManager"

    const-string v3, "Failure sending alarm."

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1737
    .end local v10           #e:Ljava/lang/RuntimeException;
    :cond_7
    :try_start_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 1752
    .end local v8           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12           #i:I
    :cond_8
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AlarmManagerService;->FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->handlerPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2608(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2610(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/AlarmManagerService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIsQbShutdown:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/AlarmManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/AlarmManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mBootPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->clearPoweroffAlarm()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffWakeAlarm:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPoweroffWakeAlarm:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    return-object v0
.end method

.method private addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 10
    .parameter "alarm"

    .prologue
    .line 839
    iget v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 841
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v1, p1, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 842
    .local v3, index:I
    if-gez v3, :cond_0

    .line 843
    rsub-int/lit8 v7, v3, 0x0

    add-int/lit8 v3, v7, -0x1

    .line 845
    :cond_0
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_1

    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding alarm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_1
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 848
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_2

    .line 850
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alarms: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v4, 0x0

    .line 852
    .local v4, position:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 853
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 854
    .local v5, time:Landroid/text/format/Time;
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 855
    const-string v7, "%b %d %I:%M:%S %p"

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 856
    .local v6, timeStr:Ljava/lang/String;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    add-int/lit8 v4, v4, 0x1

    .line 859
    goto :goto_0

    .line 862
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #position:I
    .end local v5           #time:Landroid/text/format/Time;
    .end local v6           #timeStr:Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 10
    .parameter "alarm"

    .prologue
    .line 1858
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 1860
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v1, p1, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 1861
    .local v3, index:I
    if-gez v3, :cond_0

    .line 1862
    rsub-int/lit8 v7, v3, 0x0

    add-int/lit8 v3, v7, -0x1

    .line 1864
    :cond_0
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_1

    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding alarm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_1
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1867
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_2

    .line 1869
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alarms: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    const/4 v4, 0x0

    .line 1871
    .local v4, position:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1872
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 1873
    .local v5, time:Landroid/text/format/Time;
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1874
    const-string v7, "%b %d %I:%M:%S %p"

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1875
    .local v6, timeStr:Ljava/lang/String;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    add-int/lit8 v4, v4, 0x1

    .line 1878
    goto :goto_0

    .line 1881
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #position:I
    .end local v5           #time:Landroid/text/format/Time;
    .end local v6           #timeStr:Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private allowPoweroffAlarm(Landroid/app/PendingIntent;)Z
    .locals 1
    .parameter "operation"

    .prologue
    .line 344
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerService;->allowPoweroffAlarm(Landroid/app/PendingIntent;I)Z

    move-result v0

    return v0
.end method

.method private allowPoweroffAlarm(Landroid/app/PendingIntent;I)Z
    .locals 1
    .parameter "operation"
    .parameter "flag"

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getPoweroffAlarmFlag(Landroid/app/PendingIntent;)I

    move-result v0

    and-int/2addr v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native bootFromAlarm(I)Z
.end method

.method private clearPoweroffAlarm()V
    .locals 4

    .prologue
    .line 363
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 364
    .local v2, rtcAlarmsSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 365
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 366
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->isPoweroffAlarm:Z

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private native close(I)V
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "pw"
    .parameter
    .parameter "prefix"
    .parameter "label"
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1108
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1109
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1110
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1111
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1108
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1114
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private getAlarmList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 828
    packed-switch p1, :pswitch_data_0

    .line 835
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 829
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 830
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 831
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 832
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    goto :goto_0

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getPendingIntentFlag(Landroid/app/PendingIntent;Ljava/lang/String;)I
    .locals 2
    .parameter "operation"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 358
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 359
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1

    .line 358
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPoweroffAlarmFlag(Landroid/app/PendingIntent;)I
    .locals 1
    .parameter "operation"

    .prologue
    .line 353
    const-string v0, "allow_poweroff_alarm"

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerService;->getPendingIntentFlag(Landroid/app/PendingIntent;Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .parameter "pi"

    .prologue
    .line 1561
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 1562
    .local v1, pkg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1563
    .local v0, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_0

    .line 1564
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(Ljava/lang/String;)V

    .line 1565
    .restart local v0       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    :cond_0
    return-object v0
.end method

.method private handlerPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;J)Z
    .locals 11
    .parameter "alarm"
    .parameter "nowELAPSED"

    .prologue
    .line 470
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 538
    :goto_0
    return v0

    .line 475
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsQbShutdown:Z

    if-eqz v0, :cond_2

    .line 476
    iget-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->isPoweroffAlarm:Z

    if-eqz v0, :cond_7

    .line 477
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffWakeAlarm:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 478
    const-string v0, "AlarmManager"

    const-string v1, "life is hard..."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v0, 0x1

    goto :goto_0

    .line 481
    :cond_1
    const-string v0, "AlarmManager"

    const-string v1, "system is not boot complete!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v0, "AlarmManager"

    const-string v1, "begin system boot!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 485
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffWakeAlarm:Landroid/app/PendingIntent;

    iput-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 493
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->isPoweroffAlarm:Z

    if-eqz v0, :cond_b

    .line 496
    :try_start_0
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v0, :cond_3

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending alarm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v10

    .line 498
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "alarmboot"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "android.intent.extra.ALARM_COUNT"

    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 505
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v0, :cond_4

    .line 506
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;)V

    .line 507
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 509
    :cond_4
    new-instance v9, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {v9, p0, v0}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)V

    .line 511
    .local v9, inflight:Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 514
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v7

    .line 515
    .local v7, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v0, :cond_9

    .line 516
    iput-wide p2, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 520
    :goto_1
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v0, :cond_6

    .line 522
    :cond_5
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 523
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 535
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 486
    .end local v7           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->allowPoweroffAlarm(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 487
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 489
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 518
    .restart local v7       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v9       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v10       #intent:Landroid/content/Intent;
    :cond_9
    :try_start_1
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 526
    .end local v7           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    .end local v10           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 527
    .local v8, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 530
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 535
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 532
    .end local v8           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v8

    .line 533
    .local v8, e:Ljava/lang/RuntimeException;
    const-string v0, "AlarmManager"

    const-string v1, "Failure sending alarm."

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v8           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 538
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private native init()I
.end method

.method private isBootFromAlarm(I)Z
    .locals 1
    .parameter "fd"

    .prologue
    .line 1816
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->bootFromAlarm(I)Z

    move-result v0

    return v0
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 819
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 820
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    const/4 v1, 0x1

    .line 824
    :goto_1
    return v1

    .line 819
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 824
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private registerQbReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 315
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 316
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/AlarmManagerService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 319
    return-void
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter
    .parameter "operation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 762
    :cond_0
    return-void

    .line 754
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 756
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 757
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 758
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 759
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 786
    :cond_0
    return-void

    .line 778
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 780
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 782
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private removeNonPoweroffAlarm(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 408
    :cond_0
    return-void

    .line 399
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 400
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 402
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->allowPoweroffAlarm(Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 405
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private removeUserLocked(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "userHandle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 796
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 809
    :cond_0
    return-void

    .line 801
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 803
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 805
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 806
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private resendDmPendingList(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1758
    .local p1, DmResendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1759
    .local v11, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1760
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1762
    .local v6, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v0, :cond_1

    .line 1763
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending alarm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_1
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.ALARM_COUNT"

    iget v5, v6, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1770
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v0, :cond_2

    .line 1771
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1773
    :cond_2
    new-instance v10, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {v10, p0, v0}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)V

    .line 1775
    .local v10, inflight:Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1776
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 1777
    iget-object v7, v10, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1778
    .local v7, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 1779
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v0, :cond_4

    .line 1780
    const/4 v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 1785
    :goto_1
    iget-object v9, v10, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1786
    .local v9, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 1787
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v0, :cond_5

    .line 1788
    const/4 v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1789
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 1793
    :goto_2
    iget v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v0, :cond_0

    .line 1795
    :cond_3
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 1796
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 1797
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1800
    .end local v7           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v10           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :catch_0
    move-exception v8

    .line 1801
    .local v8, e:Landroid/app/PendingIntent$CanceledException;
    iget-wide v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1804
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1783
    .end local v8           #e:Landroid/app/PendingIntent$CanceledException;
    .restart local v7       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v10       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_4
    :try_start_1
    iget v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1806
    .end local v7           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v10           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v8

    .line 1807
    .local v8, e:Ljava/lang/RuntimeException;
    const-string v0, "AlarmManager"

    const-string v1, "Failure sending alarm."

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1791
    .end local v8           #e:Ljava/lang/RuntimeException;
    .restart local v7       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v9       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v10       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_5
    :try_start_2
    iget v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1810
    .end local v6           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v10           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_6
    return-void
.end method

.method private resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 12
    .parameter "alarm"

    .prologue
    const/4 v2, 0x7

    const-wide/16 v10, 0x3e8

    .line 1890
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    .line 1891
    .local v9, setPackageName:Ljava/lang/String;
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1894
    .local v7, latestTime:J
    const-string v0, "com.android.deskclock"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.baidu.baiduclock"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1896
    :cond_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set Prop 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v2, 0x6

    div-long v3, v7, v10

    rem-long v5, v7, v10

    mul-long/2addr v5, v10

    mul-long/2addr v5, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 1916
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset power off alarm is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const-string v0, "sys.power_off_alarm"

    div-long v1, v7, v10

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_off_alarm_package_name"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1920
    return-void

    .line 1900
    :cond_1
    const-string v0, "com.mediatek.schpwronoff"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1901
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootPackage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " set Prop 2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    div-long v3, v7, v10

    rem-long v5, v7, v10

    mul-long/2addr v5, v10

    mul-long/2addr v5, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    goto :goto_0

    .line 1906
    :cond_2
    const-string v0, "com.mediatek.poweronofftest"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1907
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootPackage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " set Prop 2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    const-string v0, "persist.sys.bootpackage"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    div-long v3, v7, v10

    rem-long v5, v7, v10

    mul-long/2addr v5, v10

    mul-long/2addr v5, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    goto/16 :goto_0

    .line 1912
    :cond_3
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to set power off alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private native set(IIJJ)V
.end method

.method private native setKernelTimezone(II)I
.end method

.method private setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 12
    .parameter "alarm"

    .prologue
    const/4 v2, 0x1

    const-wide/16 v10, 0x3e8

    .line 884
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 889
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    .line 890
    const-wide/16 v3, 0x0

    .line 891
    .local v3, alarmSeconds:J
    const-wide/16 v5, 0x0

    .line 896
    .local v5, alarmNanoseconds:J
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native set alarm :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 908
    .end local v3           #alarmSeconds:J
    .end local v5           #alarmNanoseconds:J
    :goto_1
    return-void

    .line 893
    :cond_0
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    div-long v3, v0, v10

    .line 894
    .restart local v3       #alarmSeconds:J
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    rem-long/2addr v0, v10

    mul-long/2addr v0, v10

    mul-long v5, v0, v10

    .restart local v5       #alarmNanoseconds:J
    goto :goto_0

    .line 902
    .end local v3           #alarmSeconds:J
    .end local v5           #alarmNanoseconds:J
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 903
    .local v7, msg:Landroid/os/Message;
    iput v2, v7, Landroid/os/Message;->what:I

    .line 905
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 906
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private setPoweroffAlarm(JLandroid/app/PendingIntent;)V
    .locals 18
    .parameter "poweronTime"
    .parameter "pendingIntent"

    .prologue
    .line 411
    if-nez p3, :cond_0

    .line 465
    :goto_0
    return-void

    .line 413
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 414
    const-wide v13, 0x7fffffffffffffffL

    .line 415
    .local v13, poweroffAlarmWhen:J
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/AlarmManagerService;->mPoweroffWakeAlarm:Landroid/app/PendingIntent;

    .line 416
    const-wide/16 v2, 0x3a98

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 417
    const-wide/16 v2, 0x3a98

    sub-long p1, p1, v2

    .line 420
    :cond_1
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin setPoweroffAlarm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->clearPoweroffAlarm()V

    .line 423
    const/16 v16, 0x0

    .line 424
    .local v16, wakeAlarmIntent:Landroid/app/PendingIntent;
    const-string v2, "poweroff_alarm_type"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->getPendingIntentFlag(Landroid/app/PendingIntent;Ljava/lang/String;)I

    move-result v9

    .line 426
    .local v9, alarmFlag:I
    const/4 v10, 0x0

    .local v10, idx:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerService$Alarm;

    .line 429
    .local v15, wakeAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v2, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v2, v13

    if-lez v2, :cond_4

    .line 441
    .end local v15           #wakeAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v2, v13

    if-eqz v2, :cond_6

    if-eqz v16, :cond_6

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService;->removeNonPoweroffAlarm(Ljava/util/ArrayList;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService;->removeNonPoweroffAlarm(Ljava/util/ArrayList;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService;->removeNonPoweroffAlarm(Ljava/util/ArrayList;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService;->removeNonPoweroffAlarm(Ljava/util/ArrayList;)V

    .line 447
    const-wide/16 v2, 0x3a98

    sub-long v11, v13, v2

    .line 449
    .local v11, newPoweronTime:J
    cmp-long v2, p1, v11

    if-eqz v2, :cond_3

    .line 450
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset power on time from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    move-wide/from16 p1, v11

    .line 454
    :cond_3
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set power on time at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " created by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v4, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 460
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService;->mPoweroffWakeAlarm:Landroid/app/PendingIntent;

    .line 464
    .end local v11           #newPoweronTime:J
    :goto_2
    monitor-exit v17

    goto/16 :goto_0

    .end local v9           #alarmFlag:I
    .end local v10           #idx:I
    .end local v16           #wakeAlarmIntent:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 432
    .restart local v9       #alarmFlag:I
    .restart local v10       #idx:I
    .restart local v15       #wakeAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v16       #wakeAlarmIntent:Landroid/app/PendingIntent;
    :cond_4
    :try_start_1
    iget-object v2, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/server/AlarmManagerService;->allowPoweroffAlarm(Landroid/app/PendingIntent;I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_5

    .line 434
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/server/AlarmManagerService$Alarm;->isPoweroffAlarm:Z

    .line 435
    iget-wide v13, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 436
    iget-object v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    .line 426
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 462
    .end local v15           #wakeAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_6
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set poweroff alarm failed, power on time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private shutdownCheckPoweroffAlarm()V
    .locals 12

    .prologue
    .line 1981
    const-string v7, "AlarmManager"

    const-string v8, "into shutdownCheckPoweroffAlarm()!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const/4 v6, 0x0

    .line 1984
    .local v6, setPackageName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1985
    .local v4, nowTime:J
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1986
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1988
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1989
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1990
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1991
    .local v2, latestTime:J
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    .line 1993
    const-wide/16 v9, 0x7530

    sub-long v9, v2, v9

    cmp-long v7, v9, v4

    if-gtz v7, :cond_0

    .line 1994
    const-string v7, "AlarmManager"

    const-string v9, "get target latestTime < 30S!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const-wide/32 v9, 0xea60

    add-long/2addr v9, v2

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v7, v9, v10, v11}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1998
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v2           #latestTime:J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1999
    const-string v7, "AlarmManager"

    const-string v8, "away shutdownCheckPoweroffAlarm()!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    return-void
.end method

.method private triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 11
    .parameter
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const-wide/16 v9, 0x0

    .line 1130
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1131
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1133
    .local v2, repeats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1137
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v3, :cond_1

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking active alarm when="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_1
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v3, v3, p3

    if-lez v3, :cond_3

    .line 1175
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1176
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1178
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v5, v5

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1179
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    goto :goto_1

    .line 1148
    :cond_3
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v3, :cond_4

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v3, p3, v3

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 1149
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alarm is late! alarm time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delay (in seconds): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v5, p3, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_4
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v3, :cond_5

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alarm triggering: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_5
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1158
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_6

    .line 1161
    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v3, v3

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v5, p3, v5

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1163
    :cond_6
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1169
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_0

    .line 1170
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1182
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 1184
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 1185
    const-string v3, "AlarmManager"

    const-string v4, "IPO Shutdown so drop the repeating alarm"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_8
    :goto_2
    return-void

    .line 1189
    :cond_9
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_2
.end method

.method private updatePoweroffAlarm(J)V
    .locals 6
    .parameter "nowRTC"

    .prologue
    .line 1824
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1826
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1828
    monitor-exit v3

    .line 1855
    :goto_0
    return-void

    .line 1831
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_1

    .line 1833
    monitor-exit v3

    goto :goto_0

    .line 1854
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1836
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1838
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1840
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1842
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_4

    .line 1851
    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1852
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1854
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 1846
    .restart local v0       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    const-string v2, "AlarmManager"

    const-string v4, "power off alarm update deleted"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private native waitForAlarm(I)I
.end method


# virtual methods
.method SearchAlarmListForPackage(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1675
    .local p1, mRtcWakeupAlarms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, mAlarmIconPackageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1676
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1677
    .local v2, tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1678
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1679
    const/4 v3, 0x1

    .line 1683
    .end local v1           #j:I
    .end local v2           #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :goto_2
    return v3

    .line 1677
    .restart local v1       #j:I
    .restart local v2       #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1675
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1683
    .end local v1           #j:I
    .end local v2           #tempAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public bootFromPoweroffAlarm()Z
    .locals 3

    .prologue
    .line 546
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, bootReason:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 548
    .local v1, ret:Z
    :goto_0
    return v1

    .line 547
    .end local v1           #ret:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelPoweroffAlarm(Ljava/lang/String;)V
    .locals 9
    .parameter "name"

    .prologue
    .line 1949
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove power off alarm pacakge name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1952
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1955
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_off_alarm_package_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1957
    .local v7, bootPackage:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 1958
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1959
    const-string v0, "com.android.deskclock"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.baidu.baiduclock"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1961
    :cond_0
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v2, 0x6

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 1968
    :cond_1
    :goto_0
    const-string v0, "sys.power_off_alarm"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1972
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1974
    :cond_3
    monitor-exit v8

    .line 1975
    return-void

    .line 1962
    :cond_4
    const-string v0, "com.mediatek.schpwronoff"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1963
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    goto :goto_0

    .line 1974
    .end local v7           #bootPackage:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1965
    .restart local v7       #bootPackage:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v0, "com.mediatek.poweronofftest"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1966
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2
    .parameter "pw"
    .parameter "args"
    .parameter "opti"

    .prologue
    .line 913
    array-length v0, p2

    if-lt p3, v0, :cond_0

    .line 914
    const-string v0, "  Invalid argument!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    :goto_0
    return-void

    .line 916
    :cond_0
    const-string v0, "on"

    aget-object v1, p2, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    goto :goto_0

    .line 918
    :cond_1
    const-string v0, "off"

    aget-object v1, p2, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 919
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    goto :goto_0

    .line 921
    :cond_2
    const-string v0, "  Invalid argument!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 28
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 928
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    :goto_0
    return-void

    .line 937
    :cond_0
    const/16 v22, 0x0

    .line 938
    .local v22, opti:I
    :goto_1
    move-object/from16 v0, p3

    array-length v4, v0

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    .line 939
    aget-object v21, p3, v22

    .line 940
    .local v21, opt:Ljava/lang/String;
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_2

    .line 956
    .end local v21           #opt:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p3

    array-length v4, v0

    move/from16 v0, v22

    if-ge v0, v4, :cond_4

    .line 957
    aget-object v12, p3, v22

    .line 958
    .local v12, cmd:Ljava/lang/String;
    add-int/lit8 v22, v22, 0x1

    .line 959
    const-string v4, "log"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 960
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_0

    .line 943
    .end local v12           #cmd:Ljava/lang/String;
    .restart local v21       #opt:Ljava/lang/String;
    :cond_2
    add-int/lit8 v22, v22, 0x1

    .line 944
    const-string v4, "-h"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 945
    const-string v4, "alarm manager dump options:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    const-string v4, "  log  [on/off]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    const-string v4, "  Example:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    const-string v4, "  $adb shell dumpsys alarm log on"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    const-string v4, "  $adb shell dumpsys alarm log off"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 952
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; use -h for help"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 965
    .end local v21           #opt:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 966
    :try_start_0
    const-string v4, "Current Alarm Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 968
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 969
    .local v8, now:J
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 970
    .local v24, sdf:Ljava/text/SimpleDateFormat;
    const-string v4, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    const-string v4, "  Realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 972
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 974
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    const-string v6, "  "

    const-string v7, "RTC_WAKEUP"

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 976
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 977
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    const-string v6, "  "

    const-string v7, "RTC"

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 980
    .end local v8           #now:J
    .end local v24           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 981
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 982
    .restart local v8       #now:J
    const-string v4, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    const-string v4, "  Elapsed realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    move-object/from16 v0, p2

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 986
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    const-string v6, "  "

    const-string v7, "ELAPSED_WAKEUP"

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 988
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 989
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    const-string v6, "  "

    const-string v7, "ELAPSED"

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 993
    .end local v8           #now:J
    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 994
    const-string v4, "  Broadcast ref count: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 995
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v5, "  Recent problems"

    const-string v6, "    "

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 998
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1001
    :cond_b
    const/16 v4, 0xa

    new-array v0, v4, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v26, v0

    .line 1002
    .local v26, topFilters:[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v13, Lcom/android/server/AlarmManagerService$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1013
    .local v13, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v20, 0x0

    .line 1014
    .local v20, len:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1015
    .local v10, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1017
    .local v11, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v4, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_d
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1018
    .local v15, fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1019
    .local v16, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v20, :cond_10

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v4, v1, v2, v13}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v23

    .line 1021
    .local v23, pos:I
    :goto_3
    if-gez v23, :cond_e

    .line 1022
    move/from16 v0, v23

    neg-int v4, v0

    add-int/lit8 v23, v4, -0x1

    .line 1024
    :cond_e
    move-object/from16 v0, v26

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_d

    .line 1025
    move-object/from16 v0, v26

    array-length v4, v0

    sub-int v4, v4, v23

    add-int/lit8 v14, v4, -0x1

    .line 1026
    .local v14, copylen:I
    if-lez v14, :cond_f

    .line 1027
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v23

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1029
    :cond_f
    aput-object v16, v26, v23

    .line 1030
    move-object/from16 v0, v26

    array-length v4, v0

    move/from16 v0, v20

    if-ge v0, v4, :cond_d

    .line 1031
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1019
    .end local v14           #copylen:I
    .end local v23           #pos:I
    :cond_10
    const/16 v23, 0x0

    goto :goto_3

    .line 1036
    .end local v10           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v11           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v15           #fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v16           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v19           #i$:Ljava/util/Iterator;
    :cond_11
    if-lez v20, :cond_15

    .line 1037
    const-string v4, "  Top Alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    const/16 v17, 0x0

    .local v17, i:I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    .line 1039
    aget-object v16, v26, v17

    .line 1040
    .restart local v16       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v4, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1041
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v4, :cond_12

    const-string v4, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1042
    :cond_12
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1043
    const-string v4, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1044
    const-string v4, " wakeups, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1045
    const-string v4, " alarms: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1047
    const-string v4, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_13

    .line 1049
    const-string v4, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1051
    :cond_13
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_14

    .line 1052
    const-string v4, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    :cond_14
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1038
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 1058
    .end local v16           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v17           #i:I
    :cond_15
    const-string v4, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    const-string v4, "  Alarm Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    .local v25, tmpFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_16
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1062
    .restart local v10       #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1063
    .restart local v11       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v4, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1064
    iget v4, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v4, :cond_17

    const-string v4, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    :cond_17
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    const-string v4, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1067
    const-string v4, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1068
    const-string v4, " wakeups:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1071
    iget-object v4, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1072
    .restart local v15       #fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1103
    .end local v10           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v11           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v15           #fe:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #len:I
    .end local v25           #tmpFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v26           #topFilters:[Lcom/android/server/AlarmManagerService$FilterStats;
    :catchall_0
    move-exception v4

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1074
    .restart local v10       #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v11       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v13       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v20       #len:I
    .restart local v25       #tmpFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v26       #topFilters:[Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_18
    :try_start_1
    move-object/from16 v0, v25

    invoke-static {v0, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1075
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_6
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_16

    .line 1076
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1077
    .restart local v16       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v4, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v4, :cond_19

    const-string v4, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    :cond_19
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1080
    const-string v4, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1081
    const-string v4, " wakes "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1082
    const-string v4, " alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_1a

    .line 1084
    const-string v4, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1086
    :cond_1a
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_1b

    .line 1087
    const-string v4, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1075
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 1093
    .end local v10           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v11           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v17           #i:I
    .end local v19           #i$:Ljava/util/Iterator;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d

    .line 1094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1095
    .restart local v8       #now:J
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1096
    .restart local v24       #sdf:Ljava/text/SimpleDateFormat;
    const-string v4, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    const-string v4, "  power off alarms dump (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const-string v6, "  "

    const-string v7, "PoweroffAlarms"

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1103
    .end local v8           #now:J
    .end local v24           #sdf:Ljava/text/SimpleDateFormat;
    :cond_1d
    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public enableDm(Z)I
    .locals 3
    .parameter "enable"

    .prologue
    .line 1648
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1649
    if-eqz p1, :cond_0

    .line 1650
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resendDmPendingList(Ljava/util/ArrayList;)V

    .line 1664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 1665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 1668
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    .line 1669
    monitor-exit v1

    .line 1670
    const/4 v0, -0x1

    return v0

    .line 1669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 553
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->close(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    .line 557
    return-void

    .line 555
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    throw v0
.end method

.method public getPoweroffAlarm(J)[J
    .locals 11
    .parameter "nowRtc"

    .prologue
    .line 372
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 373
    const/4 v5, 0x2

    :try_start_0
    new-array v0, v5, [J

    .line 374
    .local v0, alarmArray:[J
    const/4 v2, 0x2

    .line 375
    .local v2, pwAlarmCount:I
    const-wide/16 v7, 0x3a98

    add-long/2addr p1, v7

    .line 376
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 377
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 379
    .local v4, wakeAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v7, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v5, v7, p1

    if-lez v5, :cond_0

    .line 380
    iget-object v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerService;->getPoweroffAlarmFlag(Landroid/app/PendingIntent;)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 381
    .local v3, pwAlarmIdx:I
    if-ltz v3, :cond_0

    aget-wide v7, v0, v3

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-nez v5, :cond_0

    .line 382
    iget-wide v7, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    aput-wide v7, v0, v3

    .line 383
    add-int/lit8 v2, v2, -0x1

    .line 384
    if-nez v2, :cond_0

    .line 385
    monitor-exit v6

    .line 390
    .end local v3           #pwAlarmIdx:I
    .end local v4           #wakeAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return-object v0

    .line 376
    .restart local v4       #wakeAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v4           #wakeAlarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    monitor-exit v6

    goto :goto_1

    .line 391
    .end local v0           #alarmArray:[J
    .end local v1           #idx:I
    .end local v2           #pwAlarmCount:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public lookForPackageFromAms(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 2019
    if-nez p1, :cond_0

    .line 2020
    const/4 v0, 0x0

    .line 2023
    :goto_0
    return v0

    .line 2022
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2023
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 2024
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lookForPackageLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "operation"

    .prologue
    .line 732
    if-nez p1, :cond_0

    .line 738
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 736
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 737
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeFromAms(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 2007
    if-nez p1, :cond_0

    .line 2013
    :goto_0
    return-void

    .line 2010
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2011
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 2012
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLocked(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 742
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 743
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 744
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    .line 745
    return-void
.end method

.method public removeLocked(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method public removeUserLocked(I)V
    .locals 1
    .parameter "userHandle"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 790
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 791
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 792
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    .line 793
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 17
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "operation"

    .prologue
    .line 563
    const/4 v4, 0x7

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const/16 v4, 0x8

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    .line 564
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 565
    const-string v4, "AlarmManager"

    const-string v5, "alarm driver not open ,return!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :goto_0
    return-void

    .line 569
    :cond_1
    if-nez p4, :cond_2

    .line 570
    const-string v4, "AlarmManager"

    const-string v5, "set/setRepeating ignored because there is no intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 573
    :cond_2
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarm set type 7 8, package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual/range {p4 .. p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v15

    .line 576
    .local v15, packageName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 577
    .local v16, setPackageName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 578
    .local v13, nowTime:J
    cmp-long v4, p2, v13

    if-gez v4, :cond_3

    .line 579
    const-string v4, "AlarmManager"

    const-string v5, "power off alarm set time is wrong!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v5

    .line 584
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual/range {p4 .. p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 586
    new-instance v11, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {v11}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    .line 587
    .local v11, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    move/from16 v0, p1

    iput v0, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 588
    move-wide/from16 v0, p2

    iput-wide v0, v11, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 589
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 590
    const-wide/16 v6, 0x0

    iput-wide v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 591
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/AlarmManagerService;->addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v12

    .line 592
    .local v12, index:I
    if-nez v12, :cond_4

    .line 593
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 595
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    const/16 p1, 0x0

    .line 605
    .end local v11           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12           #index:I
    .end local v13           #nowTime:J
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #setPackageName:Ljava/lang/String;
    :cond_5
    const-wide/16 v8, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 595
    .restart local v13       #nowTime:J
    .restart local v15       #packageName:Ljava/lang/String;
    .restart local v16       #setPackageName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 598
    .end local v13           #nowTime:J
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #setPackageName:Ljava/lang/String;
    :cond_6
    const/16 v4, 0xa

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 600
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->setPoweroffAlarm(JLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 14
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 641
    if-nez p6, :cond_0

    .line 642
    const-string v2, "AlarmManager"

    const-string v3, "setInexactRepeating ignored because there is no intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 646
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gtz v2, :cond_1

    .line 647
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInexactRepeating ignored because interval "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is invalid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    :cond_1
    const-wide/32 v2, 0xdbba0

    rem-long v2, p4, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 654
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Interval "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " not a quantum multiple"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 661
    :cond_3
    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v9, 0x1

    .line 662
    .local v9, isRtc:Z
    :goto_1
    if-eqz v9, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v12, v2, v6

    .line 669
    .local v12, skew:J
    :goto_2
    sub-long v2, p2, v12

    const-wide/32 v6, 0xdbba0

    rem-long v10, v2, v6

    .line 670
    .local v10, offset:J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_8

    .line 671
    sub-long v2, p2, v10

    const-wide/32 v6, 0xdbba0

    add-long v4, v2, v6

    .line 677
    .local v4, adjustedTriggerTime:J
    :goto_3
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v2, :cond_5

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInexactRepeating: type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " interval="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " trigger="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " orig="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v2, p0

    move v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    .line 679
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 661
    .end local v4           #adjustedTriggerTime:J
    .end local v9           #isRtc:Z
    .end local v10           #offset:J
    .end local v12           #skew:J
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 662
    .restart local v9       #isRtc:Z
    :cond_7
    const-wide/16 v12, 0x0

    goto :goto_2

    .line 673
    .restart local v10       #offset:J
    .restart local v12       #skew:J
    :cond_8
    move-wide/from16 v4, p2

    .restart local v4       #adjustedTriggerTime:J
    goto :goto_3
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 6
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 610
    if-nez p6, :cond_0

    .line 611
    const-string v2, "AlarmManager"

    const-string v3, "set/setRepeating ignored because there is no intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 616
    const-string v2, "AlarmManager"

    const-string v3, "IPO Shutdown so drop the alarm"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 621
    :try_start_0
    new-instance v0, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    .line 622
    .local v0, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iput p1, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 623
    iput-wide p2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 624
    iput-wide p4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 625
    iput-object p6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 628
    invoke-virtual {p0, p6}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 630
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v1

    .line 633
    .local v1, index:I
    if-nez v1, :cond_3

    .line 634
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 636
    :cond_3
    monitor-exit v3

    goto :goto_0

    .end local v0           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setTime(J)V
    .locals 3
    .parameter "millis"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 688
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 10
    .parameter "tz"

    .prologue
    .line 691
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.SET_TIME_ZONE"

    const-string v9, "setTimeZone"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 697
    .local v3, oldId:J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-eqz v7, :cond_0

    .line 727
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 729
    :goto_0
    return-void

    .line 698
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 701
    .local v6, zone:Ljava/util/TimeZone;
    const/4 v5, 0x0

    .line 702
    .local v5, timeZoneWasChanged:Z
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 703
    :try_start_2
    const-string v7, "persist.sys.timezone"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, current:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 705
    :cond_1
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_2

    .line 706
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timezone changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_2
    const/4 v5, 0x1

    .line 709
    const-string v7, "persist.sys.timezone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 715
    .local v1, gmtOffset:I
    iget v7, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const v8, 0xea60

    div-int v8, v1, v8

    neg-int v8, v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    .line 716
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 718
    const/4 v7, 0x0

    :try_start_3
    invoke-static {v7}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 720
    if-eqz v5, :cond_4

    .line 721
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 723
    const-string v7, "time-zone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 727
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 716
    .end local v0           #current:Ljava/lang/String;
    .end local v1           #gmtOffset:I
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 727
    .end local v5           #timeZoneWasChanged:Z
    .end local v6           #zone:Ljava/util/TimeZone;
    :catchall_1
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pi"

    .prologue
    .line 1385
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 1387
    .local v0, uid:I
    if-ltz v0, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    .end local v0           #uid:I
    :goto_0
    return-void

    .line 1391
    :catch_0
    move-exception v1

    .line 1395
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_0
.end method

.method public timeToNextAlarm()J
    .locals 9

    .prologue
    .line 866
    const-wide v3, 0x7fffffffffffffffL

    .line 867
    .local v3, nextAlarm:J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 868
    const/4 v2, 0x0

    .line 869
    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    .line 870
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 871
    .local v1, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 872
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 873
    .local v0, a:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v5, v7, v3

    if-gez v5, :cond_0

    .line 874
    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 869
    .end local v0           #a:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 878
    .end local v1           #alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    monitor-exit v6

    .line 879
    return-wide v3

    .line 878
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
