.class public Lcom/baidu/service/power/SmartPowerService;
.super Lcom/baidu/service/power/ISmartPowerService$Stub;
.source "SmartPowerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/service/power/SmartPowerService$ThreadHandler;
    }
.end annotation


# static fields
.field private static final END_TIME_DEFAULT:I = 0x564

.field public static final MESSAGE_SEND_BROADCAST:I = 0x0

.field private static final RINGTONE_LOCATION:Ljava/lang/String; = "/system/media/audio/ui/Castor.ogg"

.field private static final START_TIME_DEFAULT:I = 0x21c

.field public static final TAG:Ljava/lang/String; = "SmartPowerService"


# instance fields
.field private mAllAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/security/sysop/CleanableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryFull:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mIsPlayed:Z

.field mIsShown:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mManager:Lcom/baidu/service/power/PowerModeManager;

.field private mPlugged:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mTriggerTime:[I

.field mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 73
    invoke-direct {p0}, Lcom/baidu/service/power/ISmartPowerService$Stub;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    .line 41
    iput-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mAllAppsList:Ljava/util/ArrayList;

    .line 43
    iput-boolean v5, p0, Lcom/baidu/service/power/SmartPowerService;->mBatteryFull:Z

    .line 44
    iput-boolean v5, p0, Lcom/baidu/service/power/SmartPowerService;->mIsPlayed:Z

    .line 45
    iput-boolean v5, p0, Lcom/baidu/service/power/SmartPowerService;->mIsShown:Z

    .line 46
    iput v5, p0, Lcom/baidu/service/power/SmartPowerService;->mPlugged:I

    .line 49
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mTriggerTime:[I

    .line 74
    iput-object p1, p0, Lcom/baidu/service/power/SmartPowerService;->mContext:Landroid/content/Context;

    .line 75
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mTriggerTime:[I

    const/16 v3, 0x9

    aput v3, v2, v5

    .line 76
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mTriggerTime:[I

    const/4 v3, 0x1

    aput v5, v2, v3

    .line 77
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mTriggerTime:[I

    const/4 v3, 0x2

    const/16 v4, 0x17

    aput v4, v2, v3

    .line 78
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mTriggerTime:[I

    const/4 v3, 0x3

    aput v5, v2, v3

    .line 80
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SmartPowerService"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 81
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v2, Lcom/baidu/service/power/SmartPowerService$ThreadHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/baidu/service/power/SmartPowerService$ThreadHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mHandler:Landroid/os/Handler;

    .line 84
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v2}, Lcom/baidu/service/power/PowerModeManager;->createInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/baidu/service/power/PowerModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mManager:Lcom/baidu/service/power/PowerModeManager;

    .line 85
    const-string v2, "SmartPowerService"

    const-string v3, "SmartPowerService create!!!"

    invoke-static {v2, v3}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v2, Lcom/baidu/service/power/SmartPowerService$1;

    invoke-direct {v2, p0}, Lcom/baidu/service/power/SmartPowerService$1;-><init>(Lcom/baidu/service/power/SmartPowerService;)V

    iput-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v2, "com.baidu.smartpm.ACTION_AUTO_CLEAN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/baidu/service/power/SmartPowerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 121
    return-void

    .line 49
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/baidu/service/power/SmartPowerService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/baidu/service/power/SmartPowerService;->showToast(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Lcom/baidu/service/power/SmartPowerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/baidu/service/power/SmartPowerService;->mPlugged:I

    return p1
.end method

.method static synthetic access$200(Lcom/baidu/service/power/SmartPowerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/baidu/service/power/SmartPowerService;->playRingtone()V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/service/power/SmartPowerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/baidu/service/power/SmartPowerService;->handleLowBatteryDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/service/power/SmartPowerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/service/power/SmartPowerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/service/power/SmartPowerService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/baidu/service/power/SmartPowerService;->doAutoClean(Landroid/content/Context;)V

    return-void
.end method

.method private compare(II[I)Z
    .locals 7
    .parameter "h"
    .parameter "m"
    .parameter "bt"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    mul-int/lit8 v5, p1, 0x3c

    add-int v1, v5, p2

    .line 150
    .local v1, now:I
    aget v5, p3, v3

    mul-int/lit8 v5, v5, 0x3c

    aget v6, p3, v4

    add-int v2, v5, v6

    .line 151
    .local v2, start:I
    const/4 v5, 0x2

    aget v5, p3, v5

    mul-int/lit8 v5, v5, 0x3c

    const/4 v6, 0x3

    aget v6, p3, v6

    add-int v0, v5, v6

    .line 153
    .local v0, end:I
    if-le v2, v0, :cond_2

    .line 154
    if-ge v1, v2, :cond_0

    if-ge v1, v0, :cond_1

    :cond_0
    move v3, v4

    .line 156
    :cond_1
    :goto_0
    return v3

    :cond_2
    if-lt v1, v2, :cond_3

    if-ge v1, v0, :cond_3

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1
.end method

.method private doAutoClean(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 183
    invoke-static {p1}, Lcom/baidu/security/sysop/YiProcessManager;->getInstance(Landroid/content/Context;)Lcom/baidu/security/sysop/YiProcessManager;

    move-result-object v10

    iput-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    .line 185
    :try_start_0
    iget-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    invoke-virtual {v10}, Lcom/baidu/security/sysop/YiProcessManager;->getCleanableApps()Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mAllAppsList:Ljava/util/ArrayList;

    .line 186
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mAllAppsList="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/baidu/service/power/SmartPowerService;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :goto_0
    iget-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mAllAppsList:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    .line 244
    :cond_0
    :goto_1
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v10, "SmartPowerService"

    const-string/jumbo v11, "mYiProcessManager.getCleanableApps NullPointerException"

    invoke-static {v10, v11}, Lcom/baidu/service/power/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mYiProcessManager.getCleanableApps exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/service/power/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mManager:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v10}, Lcom/baidu/service/power/PowerModeManager;->getForegroundPackage()Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, runningPackageName:Ljava/lang/String;
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "runningPackageName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 198
    .local v0, app:Lcom/baidu/security/sysop/CleanableAppInfo;
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "app package name : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " app lock state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v10, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.baidu.onekeywidget"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 203
    invoke-virtual {p0, v0}, Lcom/baidu/service/power/SmartPowerService;->lockApp(Lcom/baidu/security/sysop/CleanableAppInfo;)V

    goto :goto_2

    .line 209
    .end local v0           #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    :cond_3
    :try_start_1
    iget-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/sysop/CleanableAppInfo;

    .line 210
    .restart local v0       #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    if-eqz v0, :cond_0

    .line 213
    iget-boolean v10, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    if-nez v10, :cond_4

    .line 214
    iget-object v10, v0, Lcom/baidu/security/sysop/CleanableAppInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/security/sysop/YiRunningState$MergedItem;

    .line 215
    .local v5, item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",background="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mBackground:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    if-eqz v6, :cond_6

    iget-object v10, v5, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 219
    :cond_6
    iget-object v10, v5, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    iget-object v10, v5, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_8

    :cond_7
    iget-boolean v10, v5, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mBackground:Z

    if-nez v10, :cond_a

    .line 220
    :cond_8
    iget-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    iget-object v11, v5, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/baidu/security/sysop/YiProcessManager;->appIsLocked(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 221
    iget-object v7, v5, Lcom/baidu/security/sysop/YiRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 223
    .local v7, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 224
    .local v9, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v9, :cond_9

    .line 225
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;

    .line 226
    .local v8, si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "YiProcessManager.cleanApp(), stopService("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    iget-object v11, v8, Lcom/baidu/security/sysop/YiRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Lcom/baidu/security/sysop/YiProcessManager;->stopService(Landroid/content/ComponentName;)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 229
    .end local v8           #si:Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
    :cond_9
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "YiProcessManager.cleanApp(), forceStopPackage("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    iget-object v11, v5, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/baidu/security/sysop/YiProcessManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_3

    .line 241
    .end local v0           #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v2           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    .end local v7           #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/security/sysop/YiRunningState$ServiceItem;>;"
    .end local v9           #size:I
    :catch_2
    move-exception v1

    .line 242
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mYiProcessManager.cleanAllAppsRunnable exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/service/power/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 233
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #app:Lcom/baidu/security/sysop/CleanableAppInfo;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #item:Lcom/baidu/security/sysop/YiRunningState$MergedItem;
    :cond_a
    :try_start_2
    iget-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    iget-object v11, v5, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/baidu/security/sysop/YiProcessManager;->appIsLocked(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 234
    const-string v10, "SmartPowerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "YiProcessManager.cleanApp(), stopBackgroundAppProcess("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/service/power/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v10, p0, Lcom/baidu/service/power/SmartPowerService;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    iget-object v11, v5, Lcom/baidu/security/sysop/YiRunningState$BaseItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/baidu/security/sysop/YiProcessManager;->stopBackgroundAppProcess(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3
.end method

.method private handleLowBatteryDialog(I)V
    .locals 7
    .parameter "batteryLevel"

    .prologue
    .line 125
    iget-object v5, p0, Lcom/baidu/service/power/SmartPowerService;->mManager:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v5}, Lcom/baidu/service/power/PowerModeManager;->getDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 126
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 127
    iget-object v5, p0, Lcom/baidu/service/power/SmartPowerService;->mManager:Lcom/baidu/service/power/PowerModeManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/baidu/service/power/PowerModeManager;->getPolicy(I)Lcom/baidu/service/power/Policy;

    move-result-object v1

    .line 128
    .local v1, policy:Lcom/baidu/service/power/Policy;
    if-eqz v1, :cond_0

    .line 129
    iget-object v3, v1, Lcom/baidu/service/power/Policy;->mTrigger:Lcom/baidu/service/power/Trigger;

    .line 130
    .local v3, trigger:Lcom/baidu/service/power/Trigger;
    iget-object v2, v3, Lcom/baidu/service/power/Trigger;->mCondition:Lcom/baidu/service/power/TriggerCondition;

    .line 131
    .local v2, tc:Lcom/baidu/service/power/TriggerCondition;
    iget v4, v2, Lcom/baidu/service/power/TriggerCondition;->mData1:I

    .line 132
    .local v4, triggerValue:I
    if-lt p1, v4, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 137
    .end local v1           #policy:Lcom/baidu/service/power/Policy;
    .end local v2           #tc:Lcom/baidu/service/power/TriggerCondition;
    .end local v3           #trigger:Lcom/baidu/service/power/Trigger;
    .end local v4           #triggerValue:I
    :cond_0
    return-void
.end method

.method public static main(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 252
    new-instance v0, Lcom/baidu/service/power/SmartPowerService;

    invoke-direct {v0, p0}, Lcom/baidu/service/power/SmartPowerService;-><init>(Landroid/content/Context;)V

    .line 253
    .local v0, service:Lcom/baidu/service/power/SmartPowerService;
    const-string v1, "SmartPowerService"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 254
    return-void
.end method

.method private playRingtone()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 161
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 162
    .local v1, d:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 163
    .local v2, hours:I
    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 164
    .local v4, minutes:I
    iget-object v6, p0, Lcom/baidu/service/power/SmartPowerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_full_prompt"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 166
    .local v5, shouldPlay:I
    if-eqz v5, :cond_1

    iget-boolean v6, p0, Lcom/baidu/service/power/SmartPowerService;->mIsPlayed:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/baidu/service/power/SmartPowerService;->mPlugged:I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/baidu/service/power/SmartPowerService;->mTriggerTime:[I

    invoke-direct {p0, v2, v4, v6}, Lcom/baidu/service/power/SmartPowerService;->compare(II[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 169
    .local v3, mediaPlayer:Landroid/media/MediaPlayer;
    :try_start_0
    iget-object v6, p0, Lcom/baidu/service/power/SmartPowerService;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 170
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    const-string v6, "/system/media/audio/ui/Castor.ogg"

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 172
    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 173
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 174
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 175
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/baidu/service/power/SmartPowerService;->mIsPlayed:Z

    .line 180
    .end local v3           #mediaPlayer:Landroid/media/MediaPlayer;
    :cond_1
    return-void

    .line 177
    .restart local v3       #mediaPlayer:Landroid/media/MediaPlayer;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private showToast(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 140
    iget-boolean v2, p0, Lcom/baidu/service/power/SmartPowerService;->mIsShown:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/baidu/service/power/SmartPowerService;->mBatteryFull:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/baidu/service/power/SmartPowerService;->mPlugged:I

    if-eqz v2, :cond_0

    .line 141
    const v2, #string@charge_complete#t

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, text:Ljava/lang/String;
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 143
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 144
    iput-boolean v3, p0, Lcom/baidu/service/power/SmartPowerService;->mIsShown:Z

    .line 146
    .end local v0           #text:Ljava/lang/String;
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    return-void
.end method


# virtual methods
.method public applyMode(I)V
    .locals 6
    .parameter "modeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 300
    iget-object v4, p0, Lcom/baidu/service/power/SmartPowerService;->mManager:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v4}, Lcom/baidu/service/power/PowerModeManager;->getPowerModeList()Ljava/util/ArrayList;

    move-result-object v2

    .line 301
    .local v2, modes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/PowerMode;>;"
    const/4 v3, 0x0

    .line 302
    .local v3, wantedMode:Lcom/baidu/service/power/PowerMode;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/PowerMode;

    .line 303
    .local v1, mode:Lcom/baidu/service/power/PowerMode;
    iget-boolean v4, v1, Lcom/baidu/service/power/PowerMode;->mIsActive:Z

    if-eqz v4, :cond_3

    .line 304
    iget v4, v1, Lcom/baidu/service/power/PowerMode;->mId:I

    if-ne v4, p1, :cond_2

    .line 317
    .end local v1           #mode:Lcom/baidu/service/power/PowerMode;
    :cond_1
    :goto_1
    return-void

    .line 306
    .restart local v1       #mode:Lcom/baidu/service/power/PowerMode;
    :cond_2
    iget-object v4, p0, Lcom/baidu/service/power/SmartPowerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/baidu/service/power/PowerMode;->unapplyMode(Landroid/content/Context;)V

    .line 308
    :cond_3
    iget v4, v1, Lcom/baidu/service/power/PowerMode;->mId:I

    if-ne v4, p1, :cond_0

    .line 309
    move-object v3, v1

    goto :goto_0

    .line 311
    .end local v1           #mode:Lcom/baidu/service/power/PowerMode;
    :cond_4
    if-eqz v3, :cond_1

    .line 312
    iget-object v4, p0, Lcom/baidu/service/power/SmartPowerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/baidu/service/power/PowerMode;->applyMode(Landroid/content/Context;)V

    .line 313
    iget v4, v3, Lcom/baidu/service/power/PowerMode;->mId:I

    if-ne v4, v5, :cond_1

    .line 314
    iget-object v4, p0, Lcom/baidu/service/power/SmartPowerService;->mManager:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v4, v5}, Lcom/baidu/service/power/PowerModeManager;->setSuperReason(I)V

    goto :goto_1
.end method

.method public applyPolicy(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 321
    iget-object v3, p0, Lcom/baidu/service/power/SmartPowerService;->mManager:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v3}, Lcom/baidu/service/power/PowerModeManager;->getPolicys()Ljava/util/ArrayList;

    move-result-object v2

    .line 322
    .local v2, policys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/Policy;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/Policy;

    .line 323
    .local v1, policy:Lcom/baidu/service/power/Policy;
    iget v3, v1, Lcom/baidu/service/power/Policy;->mId:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v1, Lcom/baidu/service/power/Policy;->mIsActive:Z

    if-eqz v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/baidu/service/power/SmartPowerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/baidu/service/power/Policy;->applyPolicy(Landroid/content/Context;)V

    goto :goto_0

    .line 327
    .end local v1           #policy:Lcom/baidu/service/power/Policy;
    :cond_1
    return-void
.end method

.method public getPolicys(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_0

    .line 273
    const/4 v3, 0x0

    .line 281
    :goto_0
    return v3

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/baidu/service/power/SmartPowerService;->mManager:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v3}, Lcom/baidu/service/power/PowerModeManager;->getPolicys()Ljava/util/ArrayList;

    move-result-object v2

    .line 277
    .local v2, policys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/Policy;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/Policy;

    .line 278
    .local v1, policy:Lcom/baidu/service/power/Policy;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 281
    .end local v1           #policy:Lcom/baidu/service/power/Policy;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0
.end method

.method public getPowerModeList(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_0

    .line 259
    const/4 v3, 0x0

    .line 267
    :goto_0
    return v3

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/baidu/service/power/SmartPowerService;->mManager:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v3}, Lcom/baidu/service/power/PowerModeManager;->getPowerModeList()Ljava/util/ArrayList;

    move-result-object v2

    .line 263
    .local v2, modes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/PowerMode;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/PowerMode;

    .line 264
    .local v1, mode:Lcom/baidu/service/power/PowerMode;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    .end local v1           #mode:Lcom/baidu/service/power/PowerMode;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0
.end method

.method public getProfile(I)Landroid/os/IBinder;
    .locals 5
    .parameter "modeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v3, p0, Lcom/baidu/service/power/SmartPowerService;->mManager:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v3}, Lcom/baidu/service/power/PowerModeManager;->getPowerModeList()Ljava/util/ArrayList;

    move-result-object v2

    .line 287
    .local v2, modes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/PowerMode;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/PowerMode;

    .line 288
    .local v1, mode:Lcom/baidu/service/power/PowerMode;
    invoke-virtual {v1}, Lcom/baidu/service/power/PowerMode;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 289
    invoke-virtual {v1}, Lcom/baidu/service/power/PowerMode;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 290
    check-cast v1, Lcom/baidu/service/power/NormalMode;

    .end local v1           #mode:Lcom/baidu/service/power/PowerMode;
    invoke-virtual {v1}, Lcom/baidu/service/power/NormalMode;->getProfile()Lcom/baidu/service/power/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/service/power/Profile;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 295
    :goto_0
    return-object v3

    .line 291
    .restart local v1       #mode:Lcom/baidu/service/power/PowerMode;
    :cond_1
    invoke-virtual {v1}, Lcom/baidu/service/power/PowerMode;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 292
    check-cast v1, Lcom/baidu/service/power/SuperMode;

    .end local v1           #mode:Lcom/baidu/service/power/PowerMode;
    invoke-virtual {v1}, Lcom/baidu/service/power/SuperMode;->getProfile()Lcom/baidu/service/power/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/service/power/Profile;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    .line 295
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public lockApp(Lcom/baidu/security/sysop/CleanableAppInfo;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/baidu/service/power/SmartPowerService;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    iget-object v1, p1, Lcom/baidu/security/sysop/CleanableAppInfo;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/security/sysop/YiProcessManager;->lockApp(Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    .line 249
    return-void
.end method

.method public unapplyPolicy(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 331
    iget-object v3, p0, Lcom/baidu/service/power/SmartPowerService;->mManager:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v3}, Lcom/baidu/service/power/PowerModeManager;->getPolicys()Ljava/util/ArrayList;

    move-result-object v2

    .line 332
    .local v2, policys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/service/power/Policy;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/Policy;

    .line 334
    .local v1, policy:Lcom/baidu/service/power/Policy;
    iget v3, v1, Lcom/baidu/service/power/Policy;->mId:I

    if-ne v3, p1, :cond_0

    .line 335
    iget-object v3, p0, Lcom/baidu/service/power/SmartPowerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/baidu/service/power/Policy;->unapplyPolicy(Landroid/content/Context;)V

    goto :goto_0

    .line 338
    .end local v1           #policy:Lcom/baidu/service/power/Policy;
    :cond_1
    return-void
.end method
