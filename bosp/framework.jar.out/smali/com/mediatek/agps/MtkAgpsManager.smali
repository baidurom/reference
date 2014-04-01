.class public Lcom/mediatek/agps/MtkAgpsManager;
.super Ljava/lang/Object;
.source "MtkAgpsManager.java"


# static fields
.field public static final AGPS_CAUSE_BAD_PUSH_CONTENT:I = 0x2

.field public static final AGPS_CAUSE_CNT:I = 0x10

.field public static final AGPS_CAUSE_NETWORK_CREATE_FAIL:I = 0x1

.field public static final AGPS_CAUSE_NETWORK_DISCONN:I = 0x6

.field public static final AGPS_CAUSE_NONE:I = 0x0

.field public static final AGPS_CAUSE_NOT_SUPPORTED:I = 0x3

.field public static final AGPS_CAUSE_NO_POSITION:I = 0xc

.field public static final AGPS_CAUSE_NO_RESOURCE:I = 0x5

.field public static final AGPS_CAUSE_REMOTE_ABORT:I = 0x7

.field public static final AGPS_CAUSE_REMOTE_MSG_ERROR:I = 0x9

.field public static final AGPS_CAUSE_REQ_NOT_ACCEPTED:I = 0x4

.field public static final AGPS_CAUSE_TIMER_EXPIRY:I = 0x8

.field public static final AGPS_CAUSE_TLS_AUTH_FAIL:I = 0xd

.field public static final AGPS_CAUSE_USER_AGREE:I = 0xa

.field public static final AGPS_CAUSE_USER_DENY:I = 0xb

.field public static final AGPS_CP_UP_VERIFY_TIMEOUT:I = 0xe

.field public static final AGPS_DISABLE_UPDATE:Ljava/lang/String; = "com.mediatek.agps.DISABLE_UPDATED"

.field public static final AGPS_EM_CNT:I = 0x3

.field public static final AGPS_EM_NONE:I = 0x0

.field public static final AGPS_EM_POS_FIXED:I = 0x2

.field public static final AGPS_EM_RECV_SI_REQ:I = 0x1

.field public static final AGPS_IND_CLOSEGPS:I = 0x2329

.field public static final AGPS_IND_EM:I = 0x457

.field public static final AGPS_IND_ERROR:I = 0x115c

.field public static final AGPS_IND_INFO:I = 0x8ae

.field public static final AGPS_IND_NOTIFY:I = 0xd05

.field public static final AGPS_IND_OPENGPS:I = 0x2328

.field public static final AGPS_IND_RESETGPS:I = 0x232a

.field public static final AGPS_INFO_CNT:I = 0x1

.field public static final AGPS_INFO_NONE:I = 0x0

.field public static final AGPS_MODEM_RESET_HAPPEN:I = 0xf

.field public static final AGPS_MODE_MA:I = 0x0

.field public static final AGPS_MODE_MB:I = 0x1

.field public static final AGPS_MODE_STANDALONE:I = 0x2

.field public static final AGPS_NOTIFY_ALLOW_NO_ANSWER:I = 0x2

.field public static final AGPS_NOTIFY_CNT:I = 0x5

.field public static final AGPS_NOTIFY_DENY_NO_ANSWER:I = 0x3

.field public static final AGPS_NOTIFY_NONE:I = 0x0

.field public static final AGPS_NOTIFY_ONLY:I = 0x1

.field public static final AGPS_NOTIFY_PRIVACY:I = 0x4

.field public static final AGPS_OMACP_PROFILE_UPDATE:Ljava/lang/String; = "com.mediatek.agps.OMACP_UPDATED"

.field public static final AGPS_PROFILE_UPDATE:Ljava/lang/String; = "com.mediatek.agps.PROFILE_UPDATED"

.field public static final AGPS_STATUS_UPDATE:Ljava/lang/String; = "com.mediatek.agps.STATUS_UPDATED"

.field public static final ERROR_ACTION:Ljava/lang/String; = "com.mediatek.agps.ERROR_ACTION"

.field public static final NATIVE_STATUS_DISABLE:I = 0x0

.field public static final NATIVE_STATUS_ENABLE:I = 0x1

.field public static final NOTIFY_ACTION:Ljava/lang/String; = "com.mediatek.agps.NOTIFY_ACTION"

.field private static final TAG:Ljava/lang/String; = "MtkAgps"

.field public static final VERIFY_ACTION:Ljava/lang/String; = "com.mediatek.agps.VERIFY_ACTION"


# instance fields
.field private mContext:Landroid/content/Context;

.field private sService:Lcom/mediatek/agps/IMtkAgpsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    .line 124
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManager;->mContext:Landroid/content/Context;

    .line 125
    const-string/jumbo v1, "mtk-agps"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 126
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/agps/IMtkAgpsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/agps/IMtkAgpsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    .line 127
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    if-nez v1, :cond_0

    .line 128
    const-string v1, "ERR: getService() sService is still null.."

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 329
    const-string v0, "MtkAgps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MtkAgpsManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 333
    const-string v0, "MtkAgps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MtkAgpsManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    .line 142
    const-string v1, "disable"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/agps/IMtkAgpsManager;->disable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in disable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 134
    const-string v1, "enable"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/agps/IMtkAgpsManager;->enable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3
    .parameter "command"
    .parameter "extra"

    .prologue
    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extraCommand command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/agps/IMtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 291
    :goto_0
    return v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in extraCommand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    .line 291
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfig()Lcom/mediatek/agps/MtkAgpsConfig;
    .locals 3

    .prologue
    .line 168
    const-string v1, "getConfig"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/agps/IMtkAgpsManager;->getConfig()Lcom/mediatek/agps/MtkAgpsConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCpStatus()Z
    .locals 3

    .prologue
    .line 266
    const-string v1, "getCpStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/agps/IMtkAgpsManager;->getCpStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getCpStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    .line 272
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 3

    .prologue
    .line 205
    const-string v1, "getMode"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/agps/IMtkAgpsManager;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNiStatus()Z
    .locals 3

    .prologue
    .line 248
    const-string v1, "getNiStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/agps/IMtkAgpsManager;->getNiStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getNiStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfile()Lcom/mediatek/agps/MtkAgpsProfile;
    .locals 3

    .prologue
    .line 186
    const-string v1, "getProfile"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/agps/IMtkAgpsManager;->getProfile()Lcom/mediatek/agps/MtkAgpsProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRoamingStatus()Z
    .locals 3

    .prologue
    .line 275
    const-string v1, "getRoamingStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/agps/IMtkAgpsManager;->getRoamingStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    :goto_0
    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getRoamingStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    .line 281
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatus()Z
    .locals 3

    .prologue
    .line 150
    const-string v1, "getStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/agps/IMtkAgpsManager;->getStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    :goto_0
    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUpStatus()Z
    .locals 3

    .prologue
    .line 257
    const-string v1, "getUpStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1}, Lcom/mediatek/agps/IMtkAgpsManager;->getUpStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 263
    :goto_0
    return v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in getUpStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    .line 263
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public log2file(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "log2file enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/agps/IMtkAgpsManager;->log2file(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in log2file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public log2uart(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "log2uart enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/agps/IMtkAgpsManager;->log2uart(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in log2uart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public niUserResponse(I)V
    .locals 3
    .parameter "response"

    .prologue
    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "niUserResponse response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/agps/IMtkAgpsManager;->niUserResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in niUserResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConfig(Lcom/mediatek/agps/MtkAgpsConfig;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 160
    const-string/jumbo v1, "setConfig"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/agps/IMtkAgpsManager;->setConfig(Lcom/mediatek/agps/MtkAgpsConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCpEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCpEnable enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/agps/IMtkAgpsManager;->setCpEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setCpEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/agps/IMtkAgpsManager;->setMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNiEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNiEnable enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/agps/IMtkAgpsManager;->setNiEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setNiEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProfile(Lcom/mediatek/agps/MtkAgpsProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 178
    const-string/jumbo v1, "setProfile"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/agps/IMtkAgpsManager;->setProfile(Lcom/mediatek/agps/MtkAgpsProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRoamingEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRoamingEnable enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/agps/IMtkAgpsManager;->setRoamingEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setRoamingEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUpEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUpEnable enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/agps/IMtkAgpsManager;->setUpEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setUpEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public supl2file(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "supl2file enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->log(Ljava/lang/String;)V

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManager;->sService:Lcom/mediatek/agps/IMtkAgpsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/agps/IMtkAgpsManager;->supl2file(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in supl2file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
