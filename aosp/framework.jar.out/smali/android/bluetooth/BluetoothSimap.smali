.class public Landroid/bluetooth/BluetoothSimap;
.super Ljava/lang/Object;
.source "BluetoothSimap.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSimap$ServiceListener;
    }
.end annotation


# static fields
.field public static final BT_SIMAPUI_ABORTED:I = 0xa

.field public static final BT_SIMAPUI_AUTHORIZING:I = 0x3

.field public static final BT_SIMAPUI_CONNECTED:I = 0x6

.field public static final BT_SIMAPUI_CONNECTING:I = 0x5

.field public static final BT_SIMAPUI_DISABLED:I = 0xd

.field public static final BT_SIMAPUI_DISCONNECTED:I = 0xb

.field public static final BT_SIMAPUI_ERROR:I = 0xc

.field public static final BT_SIMAPUI_EVENT_NONE:I = 0x0

.field public static final BT_SIMAPUI_READY:I = 0x2

.field public static final BT_SIMAPUI_SHUTDOWNING:I = 0x1

.field public static final BT_SIMAP_CARD1:I = 0x1

.field public static final BT_SIMAP_CARD2:I = 0x2

.field private static final DBG:Z = true

.field public static final SIMAP_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

.field public static final SIMAP_STATE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

.field public static final SIMAP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.bluetooth.profilemanager.action.STATE_CHANGED"

.field public static final STATE_AUTHORIZING:I = 0x3

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_DISABLING:I = 0xc

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_DISCONNECTING:I = 0x4

.field public static final STATE_ENABLED:I = 0x2

.field public static final STATE_ENABLING:I = 0xa

.field public static final STATE_IDLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BT SIMAP"

.field private static final VDBG:Z = true


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothSimap;

.field private final mServiceListener:Landroid/bluetooth/BluetoothSimap$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Landroid/bluetooth/BluetoothSimap$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothSimap$1;-><init>(Landroid/bluetooth/BluetoothSimap;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSimap;->mConnection:Landroid/content/ServiceConnection;

    .line 163
    iput-object p1, p0, Landroid/bluetooth/BluetoothSimap;->mContext:Landroid/content/Context;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSimap;->mServiceListener:Landroid/bluetooth/BluetoothSimap$ServiceListener;

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothSimap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const-string v0, "BT SIMAP"

    const-string v1, "Could not bind to Bluetooth Simap Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothSimap$ServiceListener;)V
    .locals 3
    .parameter "context"
    .parameter "l"

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Landroid/bluetooth/BluetoothSimap$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothSimap$1;-><init>(Landroid/bluetooth/BluetoothSimap;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothSimap;->mConnection:Landroid/content/ServiceConnection;

    .line 152
    iput-object p1, p0, Landroid/bluetooth/BluetoothSimap;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Landroid/bluetooth/BluetoothSimap;->mServiceListener:Landroid/bluetooth/BluetoothSimap$ServiceListener;

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothSimap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const-string v0, "BT SIMAP"

    const-string v1, "Could not bind to Bluetooth Simap Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothSimap;Landroid/bluetooth/IBluetoothSimap;)Landroid/bluetooth/IBluetoothSimap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothSimap;)Landroid/bluetooth/BluetoothSimap$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/bluetooth/BluetoothSimap;->mServiceListener:Landroid/bluetooth/BluetoothSimap$ServiceListener;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 399
    const-string v0, "BT SIMAP"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSimap;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/bluetooth/BluetoothSimap;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSimap;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 341
    const-string v0, "connect(device), just return false"

    invoke-static {v0}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public disableService()V
    .locals 3

    .prologue
    .line 261
    const-string v1, "BT SIMAP"

    const-string v2, "disableService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v1, :cond_0

    .line 264
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSimap;->disableService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BT SIMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "BT SIMAP"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect(device): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSimap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v1, :cond_1

    .line 329
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSimap;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    const/4 v1, 0x1

    .line 337
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BT SIMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 333
    :cond_1
    const-string v1, "BT SIMAP"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public disconnectClient()Z
    .locals 3

    .prologue
    .line 307
    const-string v1, "disconnectClient()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v1, :cond_0

    .line 310
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSimap;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const/4 v1, 0x1

    .line 317
    :goto_0
    return v1

    .line 312
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BT SIMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 314
    :cond_0
    const-string v1, "BT SIMAP"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public enableService()Z
    .locals 3

    .prologue
    .line 247
    const-string v1, "BT SIMAP"

    const-string v2, "enableService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v1, :cond_0

    .line 250
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSimap;->enableService()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 256
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BT SIMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 253
    :cond_0
    const-string v1, "BT SIMAP"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSimap;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 178
    return-void

    .line 176
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnectedClient()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 201
    const-string v1, "getConnectedClient()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v1, :cond_0

    .line 204
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSimap;->getClient()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BT SIMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 207
    :cond_0
    const-string v1, "BT SIMAP"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 3
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
    .line 214
    const-string v2, "getConnectedDevices()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    .line 215
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 217
    .local v1, connSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSimap;->getConnectedClient()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 218
    .local v0, connDev:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    return-object v1
.end method

.method public getSelectedSIMIndex()I
    .locals 3

    .prologue
    .line 289
    const-string v1, "BT SIMAP"

    const-string v2, "getSelectedSIMIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v1, :cond_0

    .line 292
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothSimap;->getSIMIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 298
    :goto_0
    return v1

    .line 293
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BT SIMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 295
    :cond_0
    const-string v1, "BT SIMAP"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getState()I
    .locals 4

    .prologue
    .line 346
    const/4 v1, -0x1

    .line 347
    .local v1, state:I
    const-string v2, "getState()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v2, :cond_0

    .line 350
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothSimap;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 357
    :goto_0
    return v1

    .line 351
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BT SIMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BT SIMAP"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 361
    const/4 v1, -0x1

    .line 362
    .local v1, state:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState(device) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSimap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v2, :cond_1

    .line 368
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothSimap;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 376
    :cond_0
    :goto_0
    return v1

    .line 369
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BT SIMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "BT SIMAP"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothSimap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 241
    :goto_0
    return v1

    .line 236
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BT SIMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 238
    :cond_0
    const-string v1, "BT SIMAP"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public selectSIM(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 275
    const-string v1, "BT SIMAP"

    const-string/jumbo v2, "selectSIM"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    if-eqz v1, :cond_0

    .line 278
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSimap;->mService:Landroid/bluetooth/IBluetoothSimap;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothSimap;->selectSIM(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 284
    :goto_0
    return v1

    .line 279
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BT SIMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 281
    :cond_0
    const-string v1, "BT SIMAP"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothSimap;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
