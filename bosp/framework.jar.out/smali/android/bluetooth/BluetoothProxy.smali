.class Landroid/bluetooth/BluetoothProxy;
.super Ljava/lang/Object;
.source "BluetoothOpp.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;


# static fields
.field private static final TAG:Ljava/lang/String; = "OPP fw"


# instance fields
.field protected mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected mService:Landroid/bluetooth/IBluetoothOpp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/bluetooth/BluetoothProxy$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothProxy$1;-><init>(Landroid/bluetooth/BluetoothProxy;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 92
    iput-object p1, p0, Landroid/bluetooth/BluetoothProxy;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\$"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "OPP fw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not bind to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method

.method private isServiceReady()Z
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Landroid/bluetooth/BluetoothProxy;->mService:Landroid/bluetooth/IBluetoothOpp;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "OPP fw"

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

    .line 124
    const/4 v0, 0x0

    .line 126
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
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothProxy;->mService:Landroid/bluetooth/IBluetoothOpp;

    if-eqz v1, :cond_0

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothProxy;->mService:Landroid/bluetooth/IBluetoothOpp;

    .line 107
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothProxy;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Landroid/bluetooth/BluetoothProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothProxy;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "OPP fw"

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

    .line 102
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProxy;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothProxy;->mService:Landroid/bluetooth/IBluetoothOpp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothOpp;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v1, 0x1

    .line 148
    :goto_0
    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "OPP fw"

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

    .line 148
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 5
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
    .line 175
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProxy;->isServiceReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 179
    .local v0, devices:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothProxy;->mService:Landroid/bluetooth/IBluetoothOpp;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothOpp;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v0           #devices:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v1

    .line 184
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "OPP fw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred in getState(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, remotDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProxy;->isServiceReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothProxy;->getConnectedDevices()Ljava/util/Set;

    move-result-object v1

    .line 159
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    :cond_0
    const/4 v2, 0x2

    .line 170
    :goto_0
    return v2

    .line 163
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothProxy;->mService:Landroid/bluetooth/IBluetoothOpp;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothOpp;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "OPP fw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred in getState(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    const/4 v2, 0x5

    goto :goto_0
.end method
