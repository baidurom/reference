.class public Lcom/baidu/notificationdefense/NotificationDefenseManager;
.super Ljava/lang/Object;
.source "NotificationDefenseManager.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "NotificationDefenseService"

.field private static final TAG:Ljava/lang/String; = "NotificationDefenseManager"

.field private static sInstance:Lcom/baidu/notificationdefense/NotificationDefenseManager;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mService:Lcom/baidu/notificationdefense/INotificationDefenseService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/notificationdefense/NotificationDefenseManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    .local v0, counter:I
    move v1, v0

    .line 21
    .end local v0           #counter:I
    .local v1, counter:I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #counter:I
    .restart local v0       #counter:I
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/baidu/notificationdefense/NotificationDefenseManager;->mService:Lcom/baidu/notificationdefense/INotificationDefenseService;

    if-nez v2, :cond_0

    .line 22
    const-string v2, "NotificationDefenseService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/notificationdefense/INotificationDefenseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/notificationdefense/INotificationDefenseService;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/notificationdefense/NotificationDefenseManager;->mService:Lcom/baidu/notificationdefense/INotificationDefenseService;

    move v1, v0

    .end local v0           #counter:I
    .restart local v1       #counter:I
    goto :goto_0

    .line 26
    .end local v1           #counter:I
    .restart local v0       #counter:I
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/baidu/notificationdefense/NotificationDefenseManager;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/notificationdefense/NotificationDefenseManager;->getInstance(Landroid/content/Context;)Lcom/baidu/notificationdefense/NotificationDefenseManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/notificationdefense/NotificationDefenseManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    sget-object v1, Lcom/baidu/notificationdefense/NotificationDefenseManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/baidu/notificationdefense/NotificationDefenseManager;->sInstance:Lcom/baidu/notificationdefense/NotificationDefenseManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/notificationdefense/NotificationDefenseManager;->sInstance:Lcom/baidu/notificationdefense/NotificationDefenseManager;

    iget-object v0, v0, Lcom/baidu/notificationdefense/NotificationDefenseManager;->mService:Lcom/baidu/notificationdefense/INotificationDefenseService;

    if-nez v0, :cond_1

    .line 31
    :cond_0
    new-instance v0, Lcom/baidu/notificationdefense/NotificationDefenseManager;

    invoke-direct {v0, p0}, Lcom/baidu/notificationdefense/NotificationDefenseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/notificationdefense/NotificationDefenseManager;->sInstance:Lcom/baidu/notificationdefense/NotificationDefenseManager;

    .line 33
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sget-object v0, Lcom/baidu/notificationdefense/NotificationDefenseManager;->sInstance:Lcom/baidu/notificationdefense/NotificationDefenseManager;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkg"

    .prologue
    .line 59
    const/4 v1, 0x1

    .line 61
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/notificationdefense/NotificationDefenseManager;->mService:Lcom/baidu/notificationdefense/INotificationDefenseService;

    invoke-interface {v2, p1}, Lcom/baidu/notificationdefense/INotificationDefenseService;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 65
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NotificationDefenseManager"

    const-string v3, "Service may dead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public defense(Ljava/lang/String;ILandroid/app/Notification;)Z
    .locals 4
    .parameter "pkg"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/notificationdefense/NotificationDefenseManager;->mService:Lcom/baidu/notificationdefense/INotificationDefenseService;

    invoke-interface {v2, p1, p2, p3}, Lcom/baidu/notificationdefense/INotificationDefenseService;->defense(Ljava/lang/String;ILandroid/app/Notification;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 47
    :goto_0
    return v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NotificationDefenseManager"

    const-string v3, "Service may dead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    .locals 3
    .parameter "pkg"
    .parameter "enabled"

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/baidu/notificationdefense/NotificationDefenseManager;->mService:Lcom/baidu/notificationdefense/INotificationDefenseService;

    invoke-interface {v1, p1, p2}, Lcom/baidu/notificationdefense/INotificationDefenseService;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NotificationDefenseManager"

    const-string v2, "Service may dead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
