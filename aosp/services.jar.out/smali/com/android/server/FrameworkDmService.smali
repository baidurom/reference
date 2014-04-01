.class public Lcom/android/server/FrameworkDmService;
.super Ljava/lang/Object;
.source "FrameworkDmService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DMFramework"


# instance fields
.field dmReceiver:Landroid/content/BroadcastReceiver;

.field mAMS:Lcom/android/server/AlarmManagerService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mEnable:Z

.field mNMS:Lcom/android/server/NotificationManagerService;

.field mSBS:Lcom/android/server/StatusBarManagerService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/NotificationManagerService;)V
    .locals 4
    .parameter "context"
    .parameter "ams"
    .parameter "sbs"
    .parameter "nms"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/FrameworkDmService;->mEnable:Z

    .line 59
    iput-object v3, p0, Lcom/android/server/FrameworkDmService;->dmReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/FrameworkDmService;->mToken:Landroid/os/IBinder;

    .line 61
    iput-object v3, p0, Lcom/android/server/FrameworkDmService;->mAMS:Lcom/android/server/AlarmManagerService;

    .line 62
    iput-object v3, p0, Lcom/android/server/FrameworkDmService;->mSBS:Lcom/android/server/StatusBarManagerService;

    .line 63
    iput-object v3, p0, Lcom/android/server/FrameworkDmService;->mNMS:Lcom/android/server/NotificationManagerService;

    .line 64
    iput-object v3, p0, Lcom/android/server/FrameworkDmService;->mContext:Landroid/content/Context;

    .line 66
    new-instance v1, Lcom/android/server/FrameworkDmService$1;

    invoke-direct {v1, p0}, Lcom/android/server/FrameworkDmService$1;-><init>(Lcom/android/server/FrameworkDmService;)V

    iput-object v1, p0, Lcom/android/server/FrameworkDmService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iput-object p2, p0, Lcom/android/server/FrameworkDmService;->mAMS:Lcom/android/server/AlarmManagerService;

    .line 80
    iput-object p3, p0, Lcom/android/server/FrameworkDmService;->mSBS:Lcom/android/server/StatusBarManagerService;

    .line 81
    iput-object p4, p0, Lcom/android/server/FrameworkDmService;->mNMS:Lcom/android/server/NotificationManagerService;

    .line 82
    iput-object p1, p0, Lcom/android/server/FrameworkDmService;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/server/FrameworkDmService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FrameworkDmService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 89
    return-void
.end method


# virtual methods
.method public dmEnable(Z)I
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v2, p0, Lcom/android/server/FrameworkDmService;->mAMS:Lcom/android/server/AlarmManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/FrameworkDmService;->mNMS:Lcom/android/server/NotificationManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/FrameworkDmService;->mSBS:Lcom/android/server/StatusBarManagerService;

    if-nez v2, :cond_1

    .line 93
    :cond_0
    const-string v1, "DMFramework"

    const-string v2, "ams nms sbs is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, -0x1

    .line 106
    :goto_0
    return v1

    .line 96
    :cond_1
    const-string v2, "FrameworkDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " enable state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/android/server/FrameworkDmService;->mAMS:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->enableDm(Z)I

    .line 98
    iget-object v2, p0, Lcom/android/server/FrameworkDmService;->mNMS:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/NotificationManagerService;->disableLed(Z)V

    .line 99
    if-nez p1, :cond_2

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, net:I
    const/high16 v0, 0xf

    .line 102
    iget-object v2, p0, Lcom/android/server/FrameworkDmService;->mSBS:Lcom/android/server/StatusBarManagerService;

    iget-object v3, p0, Lcom/android/server/FrameworkDmService;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/FrameworkDmService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v0           #net:I
    :cond_2
    iget-object v2, p0, Lcom/android/server/FrameworkDmService;->mSBS:Lcom/android/server/StatusBarManagerService;

    iget-object v3, p0, Lcom/android/server/FrameworkDmService;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/FrameworkDmService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0
.end method
