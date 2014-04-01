.class public Lcom/mediatek/epo/MtkEpoClientManager;
.super Ljava/lang/Object;
.source "MtkEpoClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final EPO_STATUS_CANCELED:I = 0xcb

.field public static final EPO_STATUS_IDLE:I = 0x12c

.field public static final EPO_STATUS_STARTING:I = 0xc8

.field public static final EPO_STATUS_UPDATE:Ljava/lang/String; = "com.mediatek.epo.STATUS_UPDATED"

.field public static final EPO_STATUS_UPDATE_FAILURE:I = 0xca

.field public static final EPO_STATUS_UPDATE_SUCCESS:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "MtkEpoClientManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/mediatek/epo/MtkEpoStatusListener;",
            "Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Lcom/mediatek/epo/IMtkEpoClientManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    .line 63
    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mContext:Landroid/content/Context;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mListeners:Ljava/util/HashMap;

    .line 77
    const-string v1, "MtkEpoClientManager constructor"

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManager;->log(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mContext:Landroid/content/Context;

    .line 79
    const-string/jumbo v1, "mtk-epo-client"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 80
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 81
    invoke-static {v0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/epo/IMtkEpoClientManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    .line 82
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    if-nez v1, :cond_0

    .line 83
    const-string v1, "ERR: mManager is null.."

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManager;->log(Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v1, "ERR: IBinder is null.."

    invoke-direct {p0, v1}, Lcom/mediatek/epo/MtkEpoClientManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 301
    const-string v0, "MtkEpoClientManager"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method


# virtual methods
.method public addStatusListener(Lcom/mediatek/epo/MtkEpoStatusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;

    .line 196
    .local v1, transport:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    if-nez v1, :cond_1

    .line 197
    new-instance v1, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;

    .end local v1           #transport:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    invoke-direct {v1, p0, p1}, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;-><init>(Lcom/mediatek/epo/MtkEpoClientManager;Lcom/mediatek/epo/MtkEpoStatusListener;)V

    .line 199
    .restart local v1       #transport:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v2, v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->addStatusListener(Lcom/mediatek/epo/IMtkEpoStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->disable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->enable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enableAutoDownload(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1}, Lcom/mediatek/epo/IMtkEpoClientManager;->enableAutoDownload(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2
    .parameter "cmd"
    .parameter "extra"

    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/epo/IMtkEpoClientManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 297
    :goto_0
    return v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 297
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAutoDownloadStatus()Z
    .locals 2

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->getAutoDownloadStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    :goto_0
    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 186
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEpoFileInfo()Lcom/mediatek/epo/MtkEpoFileInfo;
    .locals 2

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->getEpoFileInfo()Lcom/mediatek/epo/MtkEpoFileInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    :goto_0
    return-object v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 230
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->getProgress()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 169
    :goto_0
    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 169
    const/16 v1, 0x12c

    goto :goto_0
.end method

.method public getStatus()Z
    .locals 2

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->getStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 160
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 160
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUpdatePeriod()J
    .locals 3

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->getUpdatePeriod()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 267
    :goto_0
    return-wide v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 267
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public removeStatusListener(Lcom/mediatek/epo/MtkEpoStatusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;

    .line 216
    .local v1, transport:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    if-eqz v1, :cond_1

    .line 217
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v2, v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->removeStatusListener(Lcom/mediatek/epo/IMtkEpoStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v1           #transport:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
    :cond_1
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "addr"
    .parameter "port"
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/epo/IMtkEpoClientManager;->setProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRetryTimes(I)V
    .locals 2
    .parameter "times"

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1}, Lcom/mediatek/epo/IMtkEpoClientManager;->setRetryTimes(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1}, Lcom/mediatek/epo/IMtkEpoClientManager;->setTimeout(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUpdatePeriod(J)V
    .locals 2
    .parameter "interval"

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/epo/IMtkEpoClientManager;->setUpdatePeriod(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startDownload()I
    .locals 2

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->startDownload()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 242
    :goto_0
    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 242
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopDownload()V
    .locals 2

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epo/MtkEpoClientManager;->mManager:Lcom/mediatek/epo/IMtkEpoClientManager;

    invoke-interface {v1}, Lcom/mediatek/epo/IMtkEpoClientManager;->stopDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
