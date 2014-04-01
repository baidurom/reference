.class public Landroid/bluetooth/BluetoothPrxm;
.super Ljava/lang/Object;
.source "BluetoothPrxm.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;


# static fields
.field private static final TAG:Ljava/lang/String; = "BtPrxm"


# instance fields
.field protected mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/bluetooth/BluetoothPrxm$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothPrxm$1;-><init>(Landroid/bluetooth/BluetoothPrxm;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothPrxm;->mConnection:Landroid/content/ServiceConnection;

    .line 77
    iput-object p1, p0, Landroid/bluetooth/BluetoothPrxm;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothPrxm;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-string v0, "BtPrxm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not bind to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method

.method private isServiceReady()Z
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Landroid/bluetooth/BluetoothPrxm;->mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    if-nez v0, :cond_0

    .line 107
    const-string v0, "BtPrxm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mService is null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPrxm;->mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothPrxm;->mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    .line 91
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPrxm;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Landroid/bluetooth/BluetoothPrxm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothPrxm;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothPrxm;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BtPrxm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPrxm;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPrxm;->mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    invoke-interface {v1, p1}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->connectByProfileManager(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/4 v1, 0x1

    .line 126
    :goto_0
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "BtPrxm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in connect(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPrxm;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPrxm;->mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->disconnect(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/4 v1, 0x1

    .line 142
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "BtPrxm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in disconnect(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPrxm;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/bluetooth/BluetoothPrxm;->mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    invoke-interface {v2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->getConnectedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BtPrxm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPrxm;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPrxm;->mService:Lcom/mediatek/bluetooth/service/IBluetoothPrxm;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/service/IBluetoothPrxm;->getProfileManagerState(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    :goto_0
    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BtPrxm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x5

    goto :goto_0
.end method
