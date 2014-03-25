.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlarmManager$PoweroffAlarm;
    }
.end annotation


# static fields
.field public static final ALLOW_POWEROFF_ALARM_FLAG:I = 0x3

.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final POWEROFF_ALARM_ENABLE:I = 0x1

.field public static final POWEROFF_ALARM_FLAG_MAX:I = 0x2

.field public static final POWEROFF_WAKEUP:I = 0xa

.field public static final RTC:I = 0x1

.field public static final RTC_WAKEUP:I = 0x0

.field public static final SCHEDULE_POWER_ON_OFF_ENABLE:I = 0x2


# instance fields
.field private final mService:Landroid/app/IAlarmManager;


# direct methods
.method constructor <init>(Landroid/app/IAlarmManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 133
    return-void
.end method


# virtual methods
.method public bootFromPoweroffAlarm()Z
    .locals 2

    .prologue
    .line 392
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1}, Landroid/app/IAlarmManager;->bootFromPoweroffAlarm()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 394
    :goto_0
    return v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancel(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "operation"

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancelPoweroffAlarm(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->cancelPoweroffAlarm(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPoweroffAlarm(J)[Landroid/app/AlarmManager$PoweroffAlarm;
    .locals 6
    .parameter "nowRtc"

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, pwoffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;
    :try_start_0
    iget-object v3, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v3, p1, p2}, Landroid/app/IAlarmManager;->getPoweroffAlarm(J)[J

    move-result-object v2

    .line 250
    .local v2, pwoffLongArray:[J
    if-eqz v2, :cond_0

    .line 251
    array-length v3, v2

    new-array v1, v3, [Landroid/app/AlarmManager$PoweroffAlarm;

    .line 252
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 253
    new-instance v3, Landroid/app/AlarmManager$PoweroffAlarm;

    invoke-direct {v3, p0}, Landroid/app/AlarmManager$PoweroffAlarm;-><init>(Landroid/app/AlarmManager;)V

    aput-object v3, v1, v0

    .line 254
    aget-object v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    iput v4, v3, Landroid/app/AlarmManager$PoweroffAlarm;->alarmType:I

    .line 255
    aget-object v3, v1, v0

    aget-wide v4, v2, v0

    iput-wide v4, v3, Landroid/app/AlarmManager$PoweroffAlarm;->when:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .end local v0           #idx:I
    .end local v2           #pwoffLongArray:[J
    :catch_0
    move-exception v3

    .line 260
    :cond_0
    return-object v1
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 1
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "operation"

    .prologue
    .line 180
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IAlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 7
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "intervalMillis"
    .parameter "operation"

    .prologue
    .line 325
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/IAlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 7
    .parameter "type"
    .parameter "triggerAtMillis"
    .parameter "intervalMillis"
    .parameter "operation"

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/IAlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTime(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1
    .parameter "timeZone"

    .prologue
    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    goto :goto_0
.end method
