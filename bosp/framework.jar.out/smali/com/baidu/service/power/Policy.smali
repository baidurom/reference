.class public Lcom/baidu/service/power/Policy;
.super Lcom/baidu/service/power/IPolicy$Stub;
.source "Policy.java"


# static fields
.field static final ACTION_TYPE_APPLY_PROFILE:I = 0x0

.field private static final AUTO_CLEAN_DELAY_MS:I = 0xea60

.field public static final CANCEL_AND_CHECK:I = 0x2

.field public static final CANCEL_NOT_CHECK:I = 0x3

.field public static final DO_NOT_ENTER_LOW_BATTERY:I = 0x2

.field public static final ENTER_LOW_BATTERY_AUTO:I = 0x0

.field public static final ENTER_LOW_BATTERY_PROMPT:I = 0x1

.field public static final OK_AND_CHECK:I = 0x0

.field public static final OK_NOT_CHECK:I = 0x1

.field static final TASK_ACTION:Ljava/lang/String; = "actions"

.field static final TASK_TRIGGER:Ljava/lang/String; = "trigger"


# instance fields
.field isApplied:Z

.field mActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/service/power/Action;",
            ">;"
        }
    .end annotation
.end field

.field mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/service/power/Action;",
            ">;"
        }
    .end annotation
.end field

.field mAutoClean:Z

.field mDisableData:Z

.field private mHandler:Landroid/os/Handler;

.field mId:I

.field mIsActive:Z

.field mName:Ljava/lang/String;

.field mProfile:Lcom/baidu/service/power/Profile;

.field mRecoveryId:I

.field mRecoveryProfile:Lcom/baidu/service/power/Profile;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:I

.field mTrigger:Lcom/baidu/service/power/Trigger;

.field mVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/baidu/service/power/IPolicy$Stub;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/service/power/Policy;->mActionMap:Ljava/util/HashMap;

    .line 83
    iput-boolean v1, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    .line 84
    iput v1, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    .line 86
    iput-boolean v1, p0, Lcom/baidu/service/power/Policy;->mDisableData:Z

    .line 87
    iput-boolean v1, p0, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/service/power/Policy;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/service/power/Policy;->playLowBatterySound(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/service/power/Policy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/baidu/service/power/Policy;->mSoundPoolId:I

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/service/power/Policy;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method private cancelAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 458
    const-string v3, "SmartPowerService"

    const-string v4, "cancelAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v2

    .line 460
    .local v2, pm:Lcom/baidu/service/power/PowerModeManager;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 461
    .local v0, manager:Landroid/app/AlarmManager;
    invoke-virtual {v2}, Lcom/baidu/service/power/PowerModeManager;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 462
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 464
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/service/power/PowerModeManager;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 466
    :cond_0
    return-void
.end method

.method private generateIftttTask()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 126
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .local v2, json:Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v4}, Lcom/baidu/service/power/Trigger;->generateJson()Lorg/json/JSONObject;

    move-result-object v3

    .line 129
    .local v3, triggerJson:Lorg/json/JSONObject;
    const-string/jumbo v4, "trigger"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 131
    .local v0, actionJson:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/service/power/Action;

    invoke-virtual {v4}, Lcom/baidu/service/power/Action;->generateJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 132
    iget-object v4, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 133
    iget-object v4, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/service/power/Action;

    invoke-virtual {v4}, Lcom/baidu/service/power/Action;->generateJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 135
    :cond_0
    const-string v4, "actions"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0           #actionJson:Lorg/json/JSONArray;
    .end local v3           #triggerJson:Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 469
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 470
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 471
    .local v1, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 472
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 474
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private playLowBatterySound(Landroid/content/Context;)V
    .locals 7
    .parameter "ctx"

    .prologue
    const/4 v4, 0x1

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 419
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v3, "power_sounds_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 420
    const-string v3, "low_battery_sound"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, soundPath:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 424
    :try_start_0
    iget-object v3, p0, Lcom/baidu/service/power/Policy;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_0

    .line 425
    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/baidu/service/power/Policy;->mSoundPool:Landroid/media/SoundPool;

    .line 427
    :cond_0
    iget-object v3, p0, Lcom/baidu/service/power/Policy;->mSoundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/baidu/service/power/Policy;->mSoundPoolId:I

    .line 428
    iget-object v3, p0, Lcom/baidu/service/power/Policy;->mSoundPool:Landroid/media/SoundPool;

    new-instance v4, Lcom/baidu/service/power/Policy$7;

    invoke-direct {v4, p0}, Lcom/baidu/service/power/Policy$7;-><init>(Lcom/baidu/service/power/Policy;)V

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v2           #soundPath:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 434
    .restart local v2       #soundPath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 435
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SmartPowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Play low battery sound error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerIftttTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "task"

    .prologue
    .line 143
    const-string v3, "SmartPowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "register ifttt task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v3, "Ifttt"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 145
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/baidu/ifttt/IIftttService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/ifttt/IIftttService;

    move-result-object v2

    .line 147
    .local v2, service:Lcom/baidu/ifttt/IIftttService;
    :try_start_0
    invoke-interface {v2, p2}, Lcom/baidu/ifttt/IIftttService;->registerTask4Str(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 442
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 443
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 444
    return-void
.end method

.method private startAlarm(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 447
    const-string v4, "SmartPowerService"

    const-string/jumbo v5, "startAlarm"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v3

    .line 449
    .local v3, pm:Lcom/baidu/service/power/PowerModeManager;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 450
    .local v1, manager:Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.baidu.smartpm.ACTION_AUTO_CLEAN"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 451
    .local v0, alarmIntent:Landroid/content/Intent;
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 452
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    add-long/2addr v5, v7

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 454
    invoke-virtual {v3, v2}, Lcom/baidu/service/power/PowerModeManager;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 455
    return-void
.end method

.method private unregisterIftttTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "task"

    .prologue
    .line 154
    const-string v3, "Ifttt"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 155
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/baidu/ifttt/IIftttService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/ifttt/IIftttService;

    move-result-object v2

    .line 157
    .local v2, service:Lcom/baidu/ifttt/IIftttService;
    :try_start_0
    invoke-interface {v2, p2}, Lcom/baidu/ifttt/IIftttService;->unregisterTask4Str(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method addAction(Lcom/baidu/service/power/Action;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mActionMap:Ljava/util/HashMap;

    iget v1, p1, Lcom/baidu/service/power/Action;->mType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget v0, p1, Lcom/baidu/service/power/Action;->mRecoveryId:I

    if-lez v0, :cond_0

    .line 172
    iget v0, p1, Lcom/baidu/service/power/Action;->mRecoveryId:I

    iput v0, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    .line 174
    :cond_0
    return-void
.end method

.method public applyPolicy(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 93
    const-string v3, "SmartPowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyPolicy.mTrigger = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mAction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", applied = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v3, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    if-nez v3, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/baidu/service/power/Policy;->generateIftttTask()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, task:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/baidu/service/power/Policy;->registerIftttTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/service/power/Action;

    .line 98
    .local v0, a:Lcom/baidu/service/power/Action;
    invoke-virtual {v0, p1, p0}, Lcom/baidu/service/power/Action;->prepare(Landroid/content/Context;Lcom/baidu/service/power/Policy;)V

    goto :goto_0

    .line 100
    .end local v0           #a:Lcom/baidu/service/power/Action;
    :cond_0
    iget-object v3, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v3, p1}, Lcom/baidu/service/power/Trigger;->prepare(Landroid/content/Context;)V

    .line 101
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    .line 103
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #task:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method doAction(Landroid/content/Context;I)V
    .locals 13
    .parameter "context"
    .parameter "type"

    .prologue
    .line 189
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doAction! policy id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/baidu/service/power/Policy;->mId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doAction(). type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v4

    .line 192
    .local v4, pm:Lcom/baidu/service/power/PowerModeManager;
    invoke-virtual {v4}, Lcom/baidu/service/power/PowerModeManager;->getPowerModeList()Ljava/util/ArrayList;

    move-result-object v2

    .line 193
    .local v2, modes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/PowerMode;>;"
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/service/power/PowerMode;

    .line 194
    .local v3, normalMode:Lcom/baidu/service/power/PowerMode;
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/service/power/PowerMode;

    .line 196
    .local v7, superMode:Lcom/baidu/service/power/PowerMode;
    packed-switch p2, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget v10, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    if-lez v10, :cond_4

    .line 199
    iget v10, p0, Lcom/baidu/service/power/Policy;->mId:I

    if-nez v10, :cond_2

    .line 200
    iget v10, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    invoke-virtual {v4, p1, v10}, Lcom/baidu/service/power/PowerModeManager;->applyRecoveryPolicy(Landroid/content/Context;I)V

    .line 201
    iget-boolean v10, p0, Lcom/baidu/service/power/Policy;->mDisableData:Z

    if-eqz v10, :cond_1

    .line 202
    invoke-static {p1}, Lcom/baidu/service/power/ProfileUtil;->getMobileData(Landroid/content/Context;)Z

    move-result v1

    .line 203
    .local v1, isMobileDataEnabled:Z
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "shutdown mobile data: isMobileDataEnabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v4, v1}, Lcom/baidu/service/power/PowerModeManager;->setPreDataStatus(Z)V

    .line 205
    if-eqz v1, :cond_1

    .line 206
    const/4 v10, 0x0

    invoke-static {p1, v10}, Lcom/baidu/service/power/ProfileUtil;->setMobileData(Landroid/content/Context;Z)V

    .line 209
    .end local v1           #isMobileDataEnabled:Z
    :cond_1
    iget-boolean v10, p0, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    if-eqz v10, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/baidu/service/power/Policy;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, foregroundPackage:Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/baidu/service/power/PowerModeManager;->setForegroundPackage(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/baidu/service/power/Policy;->startAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 217
    .end local v0           #foregroundPackage:Ljava/lang/String;
    :cond_2
    iget v10, p0, Lcom/baidu/service/power/Policy;->mId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 218
    const-string v10, "SmartPowerService"

    const-string v11, "low battery policy trigger!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "battery_low_prompt"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 221
    .local v6, prompt:I
    if-nez v6, :cond_3

    .line 222
    invoke-virtual {p0, p1}, Lcom/baidu/service/power/Policy;->enterBatteryLow(Landroid/content/Context;)V

    goto :goto_0

    .line 223
    :cond_3
    const/4 v10, 0x1

    if-ne v6, v10, :cond_0

    iget-boolean v10, v7, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    if-nez v10, :cond_0

    .line 224
    iget-object v10, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    iget-object v8, v10, Lcom/baidu/service/power/Trigger;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    .line 225
    .local v8, tc:Lcom/baidu/service/power/TriggerCondition;
    iget v9, v8, Lcom/baidu/service/power/TriggerCondition;->mData1:I

    .line 227
    .local v9, value:I
    new-instance v10, Lcom/baidu/service/power/Policy$1;

    invoke-direct {v10, p0, p1, v9}, Lcom/baidu/service/power/Policy$1;-><init>(Lcom/baidu/service/power/Policy;Landroid/content/Context;I)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v10, v11}, Lcom/baidu/service/power/Policy$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 244
    .end local v6           #prompt:I
    .end local v8           #tc:Lcom/baidu/service/power/TriggerCondition;
    .end local v9           #value:I
    :cond_4
    iget v10, p0, Lcom/baidu/service/power/Policy;->mId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 245
    iget-boolean v10, p0, Lcom/baidu/service/power/Policy;->mDisableData:Z

    if-eqz v10, :cond_6

    .line 246
    invoke-virtual {v4}, Lcom/baidu/service/power/PowerModeManager;->getPreDataStatus()Z

    move-result v5

    .line 247
    .local v5, preDataStatus:Z
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "open mobile data: preDataStatus="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz v5, :cond_5

    iget-boolean v10, v7, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    if-nez v10, :cond_5

    .line 249
    const/4 v10, 0x1

    invoke-static {p1, v10}, Lcom/baidu/service/power/ProfileUtil;->setMobileData(Landroid/content/Context;Z)V

    .line 251
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/baidu/service/power/PowerModeManager;->setPreDataStatus(Z)V

    .line 256
    .end local v5           #preDataStatus:Z
    :cond_6
    iget-boolean v10, p0, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    if-eqz v10, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/baidu/service/power/Policy;->cancelAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 259
    :cond_7
    iget v10, p0, Lcom/baidu/service/power/Policy;->mId:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    .line 260
    invoke-virtual {v7, p1}, Lcom/baidu/service/power/PowerMode;->unapplyMode(Landroid/content/Context;)V

    .line 261
    invoke-virtual {v3, p1}, Lcom/baidu/service/power/PowerMode;->applyMode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method enterBatteryLow(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 285
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v2

    .line 286
    .local v2, pm:Lcom/baidu/service/power/PowerModeManager;
    invoke-virtual {v2}, Lcom/baidu/service/power/PowerModeManager;->getPowerModeList()Ljava/util/ArrayList;

    move-result-object v0

    .line 287
    .local v0, modes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/PowerMode;>;"
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/PowerMode;

    .line 288
    .local v1, normalMode:Lcom/baidu/service/power/PowerMode;
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/service/power/PowerMode;

    .line 290
    .local v4, superMode:Lcom/baidu/service/power/PowerMode;
    invoke-virtual {v1}, Lcom/baidu/service/power/PowerMode;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 291
    iget v6, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    invoke-virtual {v2, p1, v6}, Lcom/baidu/service/power/PowerModeManager;->applyRecoveryPolicy(Landroid/content/Context;I)V

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_in_recovery"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    invoke-virtual {v1, p1}, Lcom/baidu/service/power/PowerMode;->unapplyMode(Landroid/content/Context;)V

    .line 295
    invoke-virtual {v4, p1}, Lcom/baidu/service/power/PowerMode;->applyMode(Landroid/content/Context;)V

    .line 296
    const v6, #string@low_battery_toast#t

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, string:Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/baidu/service/power/Policy;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2, v9}, Lcom/baidu/service/power/PowerModeManager;->setSuperReason(I)V

    .line 307
    .end local v3           #string:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {v2}, Lcom/baidu/service/power/PowerModeManager;->getSuperReason()I

    move-result v5

    .line 301
    .local v5, superReason:I
    if-nez v5, :cond_0

    .line 302
    iget v6, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    invoke-virtual {v2, p1, v6}, Lcom/baidu/service/power/PowerModeManager;->applyRecoveryPolicy(Landroid/content/Context;I)V

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_in_recovery"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 504
    iget v0, p0, Lcom/baidu/service/power/Policy;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mProfile:Lcom/baidu/service/power/Profile;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mProfile:Lcom/baidu/service/power/Profile;

    invoke-virtual {v0}, Lcom/baidu/service/power/Profile;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrigger()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v0}, Lcom/baidu/service/power/Trigger;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/baidu/service/power/Policy;->mIsActive:Z

    return v0
.end method

.method public isAutoClean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    return v0
.end method

.method public isDisableData()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/baidu/service/power/Policy;->mDisableData:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/baidu/service/power/Policy;->mVisibility:Z

    return v0
.end method

.method onPolicyChanged(Lcom/baidu/service/power/Trigger;)V
    .locals 3
    .parameter "trigger"

    .prologue
    .line 278
    const-string v0, "SmartPowerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPolicyChanged policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/service/power/Policy;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",trigger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v0, p1}, Lcom/baidu/service/power/Trigger;->notifyChanged(Lcom/baidu/service/power/Trigger;)V

    .line 282
    :cond_0
    return-void
.end method

.method onTriggerChanged()V
    .locals 4

    .prologue
    .line 268
    const-string v2, "SmartPowerService"

    const-string/jumbo v3, "onTriggerChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 270
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    iget v2, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    if-lez v2, :cond_0

    .line 271
    iget v2, p0, Lcom/baidu/service/power/Policy;->mRecoveryId:I

    invoke-virtual {v0, v2}, Lcom/baidu/service/power/PowerModeManager;->getPolicy(I)Lcom/baidu/service/power/Policy;

    move-result-object v1

    .line 272
    .local v1, recoveryPolicy:Lcom/baidu/service/power/Policy;
    if-eqz v1, :cond_0

    .line 273
    iget-object v2, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v1, v2}, Lcom/baidu/service/power/Policy;->onPolicyChanged(Lcom/baidu/service/power/Trigger;)V

    .line 275
    .end local v1           #recoveryPolicy:Lcom/baidu/service/power/Policy;
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 1
    .parameter "active"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 514
    iput-boolean p1, p0, Lcom/baidu/service/power/Policy;->mIsActive:Z

    .line 515
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 516
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storePolicys()V

    .line 518
    :cond_0
    return-void
.end method

.method public setAutoClean(Z)V
    .locals 1
    .parameter "active"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 543
    iput-boolean p1, p0, Lcom/baidu/service/power/Policy;->mAutoClean:Z

    .line 544
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 545
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storePolicys()V

    .line 547
    :cond_0
    return-void
.end method

.method public setDisableData(Z)V
    .locals 1
    .parameter "active"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/baidu/service/power/Policy;->mDisableData:Z

    .line 536
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v0

    .line 537
    .local v0, pm:Lcom/baidu/service/power/PowerModeManager;
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/baidu/service/power/PowerModeManager;->storePolicys()V

    .line 539
    :cond_0
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/baidu/service/power/Policy;->mHandler:Landroid/os/Handler;

    .line 182
    iget-object v2, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/service/power/Action;

    .line 183
    .local v0, a:Lcom/baidu/service/power/Action;
    invoke-virtual {v0, p1}, Lcom/baidu/service/power/Action;->setHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 185
    .end local v0           #a:Lcom/baidu/service/power/Action;
    :cond_0
    iget-object v2, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v2, p1}, Lcom/baidu/service/power/Trigger;->setHandler(Landroid/os/Handler;)V

    .line 186
    return-void
.end method

.method setProfile(Lcom/baidu/service/power/Profile;)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/baidu/service/power/Policy;->mProfile:Lcom/baidu/service/power/Profile;

    .line 178
    return-void
.end method

.method setTrigger(Lcom/baidu/service/power/Trigger;)V
    .locals 1
    .parameter "trigger"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    .line 165
    iget-object v0, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v0, p0}, Lcom/baidu/service/power/Trigger;->setPolicy(Lcom/baidu/service/power/Policy;)V

    .line 166
    return-void
.end method

.method showAlertDialog(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 23
    .parameter "ctx"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "SmartPowerService"

    const-string/jumbo v3, "show low battery alert dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    move-object/from16 v5, p1

    .line 312
    .local v5, context:Landroid/content/Context;
    invoke-static {}, Lcom/baidu/service/power/PowerModeManager;->getInstance()Lcom/baidu/service/power/PowerModeManager;

    move-result-object v6

    .line 313
    .local v6, pm:Lcom/baidu/service/power/PowerModeManager;
    const/4 v2, 0x3

    invoke-virtual {v6, v2}, Lcom/baidu/service/power/PowerModeManager;->getPolicy(I)Lcom/baidu/service/power/Policy;

    move-result-object v7

    .line 314
    .local v7, policyOk:Lcom/baidu/service/power/Policy;
    const v2, #layout@super_mode_dialog#t

    const/4 v3, 0x0

    invoke-static {v5, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 315
    .local v21, v:Landroid/view/View;
    const v2, #id@message#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 316
    .local v14, descView:Landroid/widget/TextView;
    const v2, #id@tips#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 317
    .local v19, tipsView:Landroid/widget/TextView;
    const v2, #id@battery_info#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 318
    .local v11, batteryInfo:Landroid/widget/RelativeLayout;
    const v2, #id@battery_apps_button#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 319
    .local v10, batteryButton:Landroid/widget/TextView;
    const v2, #id@battery_apps#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 320
    .local v9, batteryApps:Landroid/widget/TextView;
    const v2, #id@remember_or_not#t

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 321
    .local v4, box:Landroid/widget/CheckBox;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 322
    .local v18, string:Ljava/lang/String;
    const v2, #string@low_battery_dialog_title#t

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v18, v3, v22

    invoke-virtual {v5, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 323
    .local v20, title:Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    .local v8, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 325
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 326
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 327
    const v2, #attr@alertDialogIcon#t

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 328
    const/high16 v22, 0x104

    new-instance v2, Lcom/baidu/service/power/Policy$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/service/power/Policy$2;-><init>(Lcom/baidu/service/power/Policy;Landroid/widget/CheckBox;Landroid/content/Context;Lcom/baidu/service/power/PowerModeManager;Lcom/baidu/service/power/Policy;)V

    move/from16 v0, v22

    invoke-virtual {v8, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    const v2, #string@ok#t

    new-instance v3, Lcom/baidu/service/power/Policy$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lcom/baidu/service/power/Policy$3;-><init>(Lcom/baidu/service/power/Policy;Landroid/widget/CheckBox;Landroid/content/Context;)V

    invoke-virtual {v8, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 365
    const/4 v15, 0x1

    .line 366
    .local v15, hasResult:Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v12, builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 368
    .local v17, str:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v2, " "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 371
    .end local v17           #str:Ljava/lang/String;
    :cond_0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 378
    .end local v12           #builder:Ljava/lang/StringBuilder;
    .end local v16           #i$:Ljava/util/Iterator;
    :goto_1
    new-instance v2, Lcom/baidu/service/power/Policy$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1, v15, v11}, Lcom/baidu/service/power/Policy$4;-><init>(Lcom/baidu/service/power/Policy;Landroid/widget/TextView;ZLandroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 394
    const v2, #string@low_battery_dialog_desc#t

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(I)V

    .line 396
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 397
    .local v13, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/baidu/service/power/Policy$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5, v13}, Lcom/baidu/service/power/Policy$5;-><init>(Lcom/baidu/service/power/Policy;Landroid/content/Context;Landroid/app/AlertDialog;)V

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    new-instance v2, Lcom/baidu/service/power/Policy$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6}, Lcom/baidu/service/power/Policy$6;-><init>(Lcom/baidu/service/power/Policy;Lcom/baidu/service/power/PowerModeManager;)V

    invoke-virtual {v13, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 412
    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 413
    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 414
    invoke-virtual {v6, v13}, Lcom/baidu/service/power/PowerModeManager;->setDialog(Landroid/app/AlertDialog;)V

    .line 415
    return-void

    .line 374
    .end local v13           #d:Landroid/app/AlertDialog;
    .end local v15           #hasResult:Z
    :cond_1
    const/4 v15, 0x0

    .line 375
    .restart local v15       #hasResult:Z
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public unapplyPolicy(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 106
    const-string v3, "SmartPowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unapplyPolicy.mTrigger = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mAction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", applied = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/baidu/service/power/Policy;->generateIftttTask()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, task:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/baidu/service/power/Policy;->unregisterIftttTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/baidu/service/power/Policy;->mActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/service/power/Action;

    .line 110
    .local v0, a:Lcom/baidu/service/power/Action;
    invoke-virtual {v0, p1}, Lcom/baidu/service/power/Action;->stop(Landroid/content/Context;)V

    goto :goto_0

    .line 112
    .end local v0           #a:Lcom/baidu/service/power/Action;
    :cond_0
    iget-object v3, p0, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    invoke-virtual {v3, p1}, Lcom/baidu/service/power/Trigger;->stop(Landroid/content/Context;)V

    .line 113
    iput-boolean v6, p0, Lcom/baidu/service/power/Policy;->isApplied:Z

    .line 115
    iget v3, p0, Lcom/baidu/service/power/Policy;->mId:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_in_recovery"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    :cond_1
    return-void
.end method
