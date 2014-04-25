.class public Lcom/android/phone/CallTime;
.super Landroid/os/Handler;
.source "CallTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTime$CallTimeHandler;,
        Lcom/android/phone/CallTime$CallTimeReceiver;,
        Lcom/android/phone/CallTime$PeriodicTimerCallback;,
        Lcom/android/phone/CallTime$OnTickListener;
    }
.end annotation


# static fields
.field public static ACTION_REMINDER:Ljava/lang/String; = null

.field private static final CALL_TIME_UPDATE:I = 0x6f

.field private static final DBG:Z = true

.field private static INTERVAL_TIME:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/CallTime"

.field private static MILLISECOND_TO_SECOND:I = 0x0

.field private static MINUTE_TIME:I = 0x0

.field private static MINUTE_TO_MS:I = 0x0

.field static final PROFILE:Z = true

.field private static final PROFILE_STATE_NONE:I = 0x0

.field private static final PROFILE_STATE_READY:I = 0x1

.field private static final PROFILE_STATE_RUNNING:I = 0x2

.field private static mCallTimeHanderThreadLooper:Landroid/os/Looper;

.field private static mSP:Landroid/content/SharedPreferences;

.field private static sProfileState:I


# instance fields
.field mAlarm:Landroid/app/AlarmManager;

.field mAlarmEnable:Z

.field private mCall:Lcom/android/internal/telephony/Call;

.field mCtx:Landroid/content/Context;

.field private mInterval:J

.field private mLastReportedTime:J

.field private mListener:Lcom/android/phone/CallTime$OnTickListener;

.field mReceiver:Lcom/android/phone/CallTime$CallTimeReceiver;

.field mReminderPendingIntent:Landroid/app/PendingIntent;

.field private mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

.field private mTimerRunning:Z

.field private mTimerThreadHandler:Lcom/android/phone/CallTime$CallTimeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 59
    const/16 v0, 0x32

    sput v0, Lcom/android/phone/CallTime;->INTERVAL_TIME:I

    .line 60
    const/16 v0, 0x3c

    sput v0, Lcom/android/phone/CallTime;->MINUTE_TIME:I

    .line 61
    const/16 v0, 0x3e8

    sput v0, Lcom/android/phone/CallTime;->MILLISECOND_TO_SECOND:I

    .line 62
    sget v0, Lcom/android/phone/CallTime;->MINUTE_TIME:I

    sget v1, Lcom/android/phone/CallTime;->MILLISECOND_TO_SECOND:I

    mul-int/2addr v0, v1

    sput v0, Lcom/android/phone/CallTime;->MINUTE_TO_MS:I

    .line 70
    sput-object v2, Lcom/android/phone/CallTime;->mSP:Landroid/content/SharedPreferences;

    .line 72
    const-string v0, "calltime_minute_reminder"

    sput-object v0, Lcom/android/phone/CallTime;->ACTION_REMINDER:Ljava/lang/String;

    .line 80
    sput-object v2, Lcom/android/phone/CallTime;->mCallTimeHanderThreadLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/CallTime$OnTickListener;)V
    .locals 6
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    iput-object v2, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    .line 74
    iput-object v2, p0, Lcom/android/phone/CallTime;->mCtx:Landroid/content/Context;

    .line 77
    iput-boolean v5, p0, Lcom/android/phone/CallTime;->mAlarmEnable:Z

    .line 90
    iput-object p1, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    .line 91
    new-instance v2, Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-direct {v2, p0}, Lcom/android/phone/CallTime$PeriodicTimerCallback;-><init>(Lcom/android/phone/CallTime;)V

    iput-object v2, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    .line 93
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallTime;->mCtx:Landroid/content/Context;

    .line 94
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCtx:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    .line 95
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCtx:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/phone/CallTime;->ACTION_REMINDER:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallTime;->mReminderPendingIntent:Landroid/app/PendingIntent;

    .line 96
    new-instance v2, Lcom/android/phone/CallTime$CallTimeReceiver;

    invoke-direct {v2, p0}, Lcom/android/phone/CallTime$CallTimeReceiver;-><init>(Lcom/android/phone/CallTime;)V

    iput-object v2, p0, Lcom/android/phone/CallTime;->mReceiver:Lcom/android/phone/CallTime$CallTimeReceiver;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/android/phone/CallTime;->ACTION_REMINDER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallTime;->mReceiver:Lcom/android/phone/CallTime$CallTimeReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    const-class v3, Lcom/android/phone/CallTime;

    monitor-enter v3

    .line 102
    :try_start_0
    sget-object v2, Lcom/android/phone/CallTime;->mCallTimeHanderThreadLooper:Landroid/os/Looper;

    if-nez v2, :cond_0

    .line 103
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CallTimeHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 105
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallTime;->mCallTimeHanderThreadLooper:Landroid/os/Looper;

    .line 107
    .end local v1           #handlerThread:Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    new-instance v2, Lcom/android/phone/CallTime$CallTimeHandler;

    sget-object v3, Lcom/android/phone/CallTime;->mCallTimeHanderThreadLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/CallTime$CallTimeHandler;-><init>(Lcom/android/phone/CallTime;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/phone/CallTime;->mTimerThreadHandler:Lcom/android/phone/CallTime$CallTimeHandler;

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    return-void
.end method

.method static getCallDuration(Lcom/android/internal/telephony/Call;)J
    .locals 13
    .parameter "call"

    .prologue
    const-wide/16 v3, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    iget-object v10, v10, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mConnection:Lcom/android/internal/telephony/Connection;

    if-eq v9, v10, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-wide v3

    .line 210
    :cond_1
    sget-object v9, Lcom/android/phone/VTCallUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/android/phone/VTCallUtils$VTTimingMode;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/VTCallUtils;->checkVTTimingMode(Ljava/lang/String;)Lcom/android/phone/VTCallUtils$VTTimingMode;

    move-result-object v10

    if-eq v9, v10, :cond_0

    .line 212
    sget-object v9, Lcom/android/phone/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/android/phone/VTCallUtils$VTTimingMode;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/VTCallUtils;->checkVTTimingMode(Ljava/lang/String;)Lcom/android/phone/VTCallUtils$VTTimingMode;

    move-result-object v10

    if-ne v9, v10, :cond_0

    .line 213
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v9, v9, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    cmp-long v9, v9, v3

    if-ltz v9, :cond_0

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v11, v11, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    sub-long v3, v9, v11

    goto :goto_0

    .line 224
    :cond_2
    const-wide/16 v3, 0x0

    .line 225
    .local v3, duration:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 226
    .local v1, connections:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 228
    .local v2, count:I
    const/4 v8, 0x0

    .line 229
    .local v8, tReminder:Z
    const/4 v9, 0x1

    if-ne v2, v9, :cond_4

    .line 230
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 231
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    .line 242
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateElapsedTime, count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", duration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_4
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 234
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 235
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 236
    .local v6, t:J
    cmp-long v9, v6, v3

    if-lez v9, :cond_5

    .line 237
    move-wide v3, v6

    .line 233
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 248
    const-string v0, "PHONE/CallTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method static setTraceReady()V
    .locals 2

    .prologue
    .line 263
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 265
    const-string v0, "trace ready..."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current trace state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/CallTime;->sProfileState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateElapsedTime(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter "call"

    .prologue
    .line 194
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    if-eqz v2, :cond_0

    .line 195
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 196
    .local v0, duration:J
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-interface {v2, v3, v4}, Lcom/android/phone/CallTime$OnTickListener;->onTickForCallTimeElapsed(J)V

    .line 198
    .end local v0           #duration:J
    :cond_0
    return-void
.end method


# virtual methods
.method cancelTimer()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "cancelTimer()..."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/phone/CallTime;->mTimerThreadHandler:Lcom/android/phone/CallTime$CallTimeHandler;

    iget-object v1, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime$CallTimeHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    const/16 v0, 0x6f

    invoke-virtual {p0, v0}, Lcom/android/phone/CallTime;->removeMessages(I)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 190
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->stopReminder()V

    .line 191
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 116
    :pswitch_0
    const-string v0, "receive CALL_TIME_UPDATE message"

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->isTraceRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->stopTrace()V

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
    .end packed-switch
.end method

.method isTraceReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 272
    sget v1, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTraceRunning()Z
    .locals 2

    .prologue
    .line 276
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method periodicUpdateTimer()V
    .locals 9

    .prologue
    .line 155
    iget-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    if-nez v5, :cond_3

    .line 156
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 159
    .local v2, now:J
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    iget-wide v7, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long v0, v5, v7

    .line 161
    .local v0, nextReport:J
    :goto_0
    cmp-long v5, v2, v0

    if-ltz v5, :cond_0

    .line 162
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long/2addr v0, v5

    goto :goto_0

    .line 165
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "periodicUpdateTimer() @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 166
    iget-object v5, p0, Lcom/android/phone/CallTime;->mTimerThreadHandler:Lcom/android/phone/CallTime$CallTimeHandler;

    iget-object v6, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/phone/CallTime$CallTimeHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 167
    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 169
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v5, :cond_1

    .line 170
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 172
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 173
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v5}, Lcom/android/phone/CallTime;->updateElapsedTime(Lcom/android/internal/telephony/Call;)V

    .line 177
    .end local v4           #state:Lcom/android/internal/telephony/Call$State;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->isTraceReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->startTrace()V

    .line 183
    .end local v0           #nextReport:J
    .end local v2           #now:J
    :cond_2
    :goto_1
    return-void

    .line 181
    :cond_3
    const-string v5, "periodicUpdateTimer: timer already running, bail"

    invoke-static {v5}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method reset()V
    .locals 4

    .prologue
    .line 150
    const-string v0, "reset()..."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/CallTime;->mInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 152
    return-void
.end method

.method setActiveCallMode(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "call"

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveCallMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    .line 140
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mInterval:J

    .line 141
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.phone_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallTime;->mSP:Landroid/content/SharedPreferences;

    .line 142
    sget-object v0, Lcom/android/phone/CallTime;->mSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 144
    const-string v0, "setActiveCallMode: can not find \'com.android.phone_preferences\'..."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallTime;->startReminder(J)V

    .line 147
    return-void
.end method

.method public setListener(Lcom/android/phone/CallTime$OnTickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    .line 87
    return-void
.end method

.method startReminder(J)V
    .locals 8
    .parameter "duration"

    .prologue
    .line 321
    sget-object v3, Lcom/android/phone/CallTime;->mSP:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/phone/CallTime;->mReminderPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 323
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/CallTime;->mAlarmEnable:Z

    .line 324
    sget v3, Lcom/android/phone/CallTime;->MINUTE_TO_MS:I

    int-to-long v3, v3

    rem-long v0, p1, v3

    .line 325
    .local v0, rem:J
    sget v3, Lcom/android/phone/CallTime;->INTERVAL_TIME:I

    sget v4, Lcom/android/phone/CallTime;->MILLISECOND_TO_SECOND:I

    mul-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 326
    sget v3, Lcom/android/phone/CallTime;->INTERVAL_TIME:I

    sget v4, Lcom/android/phone/CallTime;->MILLISECOND_TO_SECOND:I

    mul-int/2addr v3, v4

    int-to-long v3, v3

    sub-long p1, v3, v0

    .line 331
    :goto_1
    sget-object v3, Lcom/android/phone/CallTime;->mSP:Landroid/content/SharedPreferences;

    const-string v4, "minute_reminder_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 332
    .local v2, tReminder:Z
    if-eqz v2, :cond_0

    .line 333
    iget-object v3, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, p1

    iget-object v7, p0, Lcom/android/phone/CallTime;->mReminderPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 328
    .end local v2           #tReminder:Z
    :cond_2
    sget v3, Lcom/android/phone/CallTime;->MINUTE_TO_MS:I

    int-to-long v3, v3

    sub-long/2addr v3, v0

    sget v5, Lcom/android/phone/CallTime;->INTERVAL_TIME:I

    sget v6, Lcom/android/phone/CallTime;->MILLISECOND_TO_SECOND:I

    mul-int/2addr v5, v6

    int-to-long v5, v5

    add-long p1, v3, v5

    goto :goto_1
.end method

.method startTrace()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 280
    sget v4, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_0
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 284
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const-string v7, "phoneTrace"

    invoke-virtual {v4, v7, v6}, Lcom/android/phone/PhoneApp;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 285
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 288
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "callstate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, baseName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".data"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, dataFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".key"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, keyFile:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 294
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 297
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v5, :cond_2

    .line 299
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 302
    :cond_2
    const/4 v4, 0x2

    sput v4, Lcom/android/phone/CallTime;->sProfileState:I

    .line 303
    const-string v4, "startTrace"

    invoke-static {v4}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 304
    const/high16 v4, 0x80

    invoke-static {v0, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 306
    .end local v0           #baseName:Ljava/lang/String;
    .end local v1           #dataFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #keyFile:Ljava/lang/String;
    :cond_3
    return-void

    :cond_4
    move v4, v6

    .line 280
    goto/16 :goto_0
.end method

.method stopReminder()V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTime;->mAlarmEnable:Z

    .line 340
    iget-object v0, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/phone/CallTime;->mReminderPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 341
    return-void
.end method

.method stopTrace()V
    .locals 2

    .prologue
    .line 310
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 311
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 312
    const-string v0, "stopTrace"

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 316
    :cond_0
    return-void
.end method

.method updateRminder()V
    .locals 8

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 347
    .local v1, state:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 348
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 349
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->onTimeToReminder()V

    .line 350
    iget-object v2, p0, Lcom/android/phone/CallTime;->mAlarm:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget v6, Lcom/android/phone/CallTime;->MILLISECOND_TO_SECOND:I

    mul-int/lit8 v6, v6, 0x3c

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/phone/CallTime;->mReminderPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 353
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    .end local v1           #state:Lcom/android/internal/telephony/Call$State;
    :cond_0
    return-void
.end method
