.class public Lcom/baidu/security/bm/BroadcastManager;
.super Ljava/lang/Object;
.source "BroadcastManager.java"


# static fields
.field private static final SERVICE_TAG:Ljava/lang/String; = "BroadcastManagerService"

.field private static final TAG:Ljava/lang/String; = "BroadcastManager"

.field private static mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

.field private static mInstance:Lcom/baidu/security/bm/BroadcastManager;


# instance fields
.field private mService:Lcom/baidu/security/bm/IBroadcastManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/baidu/security/bm/BroadcastManager;->mInstance:Lcom/baidu/security/bm/BroadcastManager;

    .line 28
    sput-object v0, Lcom/baidu/security/bm/BroadcastManager;->mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    .line 245
    const/16 v0, 0xa

    .line 247
    .local v0, i:I
    :cond_0
    const-string v1, "BroadcastManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/security/bm/IBroadcastManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    .line 248
    add-int/lit8 v0, v0, -0x1

    .line 250
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-nez v1, :cond_1

    if-gtz v0, :cond_0

    .line 252
    :cond_1
    invoke-static {}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->getInstance()Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    move-result-object v1

    sput-object v1, Lcom/baidu/security/bm/BroadcastManager;->mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    .line 253
    return-void
.end method

.method public static getInstance()Lcom/baidu/security/bm/BroadcastManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/baidu/security/bm/BroadcastManager;->mInstance:Lcom/baidu/security/bm/BroadcastManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/baidu/security/bm/BroadcastManager;

    invoke-direct {v0}, Lcom/baidu/security/bm/BroadcastManager;-><init>()V

    sput-object v0, Lcom/baidu/security/bm/BroadcastManager;->mInstance:Lcom/baidu/security/bm/BroadcastManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/baidu/security/bm/BroadcastManager;->mInstance:Lcom/baidu/security/bm/BroadcastManager;

    return-object v0
.end method


# virtual methods
.method public autolaunchSettingEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 152
    const/4 v1, 0x1

    .line 154
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->packageInBlackList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 163
    :goto_0
    return v1

    .line 155
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 157
    :cond_1
    const-string v2, "BroadcastManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAutoLaunchAppInfo(Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 5
    .parameter "packageName"

    .prologue
    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, retVal:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    const/4 v0, 0x0

    .line 78
    .local v0, detectResult:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :try_start_0
    iget-object v3, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v3, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->getAutoLaunchAppInfo(Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :goto_0
    sget-object v3, Lcom/baidu/security/bm/BroadcastManager;->mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    invoke-virtual {v3, v0, p1}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->checkAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;Ljava/lang/String;)Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-result-object v3

    return-object v3

    .line 81
    :cond_0
    :try_start_1
    const-string v3, "BroadcastManager"

    const-string v4, "BroadcastManagerService has not been started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentAutoLaunchApps()[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    .locals 4

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, retVal:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2}, Lcom/baidu/security/bm/IBroadcastManagerService;->getCurrentAutoLaunchApps()[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_0
    sget-object v2, Lcom/baidu/security/bm/BroadcastManager;->mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    invoke-virtual {v2, v1}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->getAutoLaunchApps([Lcom/baidu/security/bm/AutoLaunchAppInfo;)[Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-result-object v1

    .line 65
    return-object v1

    .line 57
    :cond_0
    :try_start_1
    const-string v2, "BroadcastManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPackageStopped(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->isPackageStopped(Ljava/lang/String;)Z

    move-result v1

    .line 220
    :goto_0
    return v1

    .line 214
    :cond_0
    const-string v2, "BroadcastManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isTrustedApp(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v2, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->isTrustedApp(Ljava/lang/String;)Z

    move-result v1

    .line 241
    :goto_0
    return v1

    .line 235
    :cond_0
    const-string v2, "BroadcastManager"

    const-string v3, "BroadcastManagerService has not been started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public recordCleanedApp(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->addCleanedApp(Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v1, "BroadcastManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public recordCleanedApps([Ljava/lang/String;)V
    .locals 3
    .parameter "packageNameArray"

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->addCleanedApps([Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v1, "BroadcastManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateAutoLaunchAppInfo(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    .locals 3
    .parameter "appInfo"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-eqz v1, :cond_1

    .line 102
    sget-object v1, Lcom/baidu/security/bm/BroadcastManager;->mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    iget-boolean v2, p1, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    invoke-virtual {v1, p1, v2}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->setAutoLaunchEnableSetting(Lcom/baidu/security/bm/AutoLaunchAppInfo;Z)V

    .line 106
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v1, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->updateBlackListItem(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v1, "BroadcastManager"

    const-string v2, "BroadcastManagerService has not been started"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateAutoLaunchAppInfo([Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    .locals 7
    .parameter "newPart"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    array-length v5, p1

    if-gtz v5, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    move-object v1, p1

    .local v1, arr$:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 129
    .local v0, appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    iget-object v5, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->launchers:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    if-eqz v5, :cond_2

    .line 130
    sget-object v5, Lcom/baidu/security/bm/BroadcastManager;->mAutoLaunchAppManager:Lcom/baidu/security/autolaunch/AutoLaunchAppManager;

    iget-boolean v6, v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;->enabled:Z

    invoke-virtual {v5, v0, v6}, Lcom/baidu/security/autolaunch/AutoLaunchAppManager;->setAutoLaunchEnableSetting(Lcom/baidu/security/bm/AutoLaunchAppInfo;Z)V

    .line 128
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    .end local v0           #appInfo:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v5, :cond_4

    .line 136
    iget-object v5, p0, Lcom/baidu/security/bm/BroadcastManager;->mService:Lcom/baidu/security/bm/IBroadcastManagerService;

    invoke-interface {v5, p1}, Lcom/baidu/security/bm/IBroadcastManagerService;->updateBlackList([Lcom/baidu/security/bm/AutoLaunchAppInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    const-string v5, "BroadcastManager"

    const-string v6, "BroadcastManagerService has not been started"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
