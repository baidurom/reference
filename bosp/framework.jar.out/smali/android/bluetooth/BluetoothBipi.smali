.class public Landroid/bluetooth/BluetoothBipi;
.super Ljava/lang/Object;
.source "BluetoothBipi.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BIPI fw"

.field private static final VDBG:Z = true


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothBipi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/bluetooth/BluetoothBipi$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothBipi$1;-><init>(Landroid/bluetooth/BluetoothBipi;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBipi;->mConnection:Landroid/content/ServiceConnection;

    .line 78
    iput-object p1, p0, Landroid/bluetooth/BluetoothBipi;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothBipi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothBipi;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const-string v0, "BIPI fw"

    const-string v1, "Could not bind to Bluetooth BIPI Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothBipi;Landroid/bluetooth/IBluetoothBipi;)Landroid/bluetooth/IBluetoothBipi;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;

    .line 91
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBipi;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Landroid/bluetooth/BluetoothBipi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothBipi;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothBipi;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BIPI fw"

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
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 105
    iget-object v1, p0, Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;

    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothBipi;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BIPI fw"

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

    .line 116
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 113
    :cond_0
    const-string v1, "BIPI fw"

    const-string/jumbo v2, "mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v1, "BIPI fw"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
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
    .line 142
    iget-object v2, p0, Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;

    if-eqz v2, :cond_0

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 145
    .local v0, devices:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothBipi;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0           #devices:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    return-object v0

    .line 147
    .restart local v0       #devices:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BIPI fw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred in getConnectedDevices(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0           #devices:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v1           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :cond_0
    const-string v2, "BIPI fw"

    const-string/jumbo v3, "mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, "BIPI fw"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    .line 120
    iget-object v2, p0, Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;

    if-eqz v2, :cond_1

    .line 123
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothBipi;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 124
    .local v0, current:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothBipi;->mService:Landroid/bluetooth/IBluetoothBipi;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothBipi;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 135
    .end local v0           #current:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return v2

    .line 124
    .restart local v0       #current:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 127
    .end local v0           #current:Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v1

    .line 128
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BIPI fw"

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

    .line 135
    .end local v1           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x5

    goto :goto_0

    .line 132
    :cond_1
    const-string v2, "BIPI fw"

    const-string/jumbo v3, "mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v2, "BIPI fw"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
