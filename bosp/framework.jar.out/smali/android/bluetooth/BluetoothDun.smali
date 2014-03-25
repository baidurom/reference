.class public final Landroid/bluetooth/BluetoothDun;
.super Ljava/lang/Object;
.source "BluetoothDun.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothDun$ServiceListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final EXTRA_PRE_STATE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

.field public static final STATE_CHANGED_ACTION:Ljava/lang/String; = "android.bluetooth.profilemanager.action.STATE_CHANGED"

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_CONNECTING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_DISCONNECTING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothDun"

.field private static mService:Landroid/bluetooth/IBluetoothDun;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Landroid/bluetooth/BluetoothDun$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothDun$1;-><init>(Landroid/bluetooth/BluetoothDun;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    .line 178
    iput-object p1, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    .line 179
    const-string/jumbo v0, "profile_supported_dun"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothDun;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const-string v0, "BluetoothDun"

    const-string v1, "Could not bind to Bluetooth Dun Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v0, "BluetoothDun"

    const-string v1, "Bluetooth Dun is not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    sput-object v0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDun$ServiceListener;)V
    .locals 3
    .parameter "context"
    .parameter "l"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    new-instance v0, Landroid/bluetooth/BluetoothDun$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothDun$1;-><init>(Landroid/bluetooth/BluetoothDun;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    .line 192
    iput-object p1, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;

    .line 194
    const-string/jumbo v0, "profile_supported_dun"

    invoke-static {v0}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothDun;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "BluetoothDun"

    const-string v1, "Could not bind to Bluetooth Dun Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const-string v0, "BluetoothDun"

    const-string v1, "Bluetooth Dun is not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x0

    sput-object v0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-static {p0}, Landroid/bluetooth/BluetoothDun;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    sput-object p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    return-object p0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 340
    const-string v0, "BluetoothDun"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    .line 226
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 257
    sget-object v1, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    if-eqz v1, :cond_0

    .line 259
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDun;->dunDisconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    const/4 v1, 0x1

    .line 267
    :goto_0
    return v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDun"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 265
    :cond_0
    const-string v1, "BluetoothDun"

    const-string v2, "disconnect error: not attached to DUN service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    .line 208
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDun;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
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
    .line 231
    const-string v3, "BluetoothDun"

    const-string v4, "getConnectedDevices()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 233
    .local v1, devices:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    sget-object v3, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    if-eqz v3, :cond_1

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, connDev:Landroid/bluetooth/BluetoothDevice;
    :try_start_0
    sget-object v3, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothDun;->dunGetConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 240
    :goto_0
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v0           #connDev:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_1
    return-object v1

    .line 237
    .restart local v0       #connDev:Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v2

    .line 238
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothDun"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v0           #connDev:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "BluetoothDun"

    const-string v4, "getConnectedDevices error: not attached to DUN service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 272
    sget-object v2, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    if-eqz v2, :cond_2

    .line 274
    const/4 v1, 0x0

    .line 276
    .local v1, remoteDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDun;->getConnectedDevices()Ljava/util/Set;

    move-result-object v1

    .line 278
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    :cond_0
    const/4 v2, 0x2

    .line 288
    .end local v1           #remoteDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    return v2

    .line 281
    .restart local v1       #remoteDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    sget-object v2, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothDun;->dunGetState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothDun"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #remoteDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_1
    const/4 v2, 0x5

    goto :goto_0

    .line 286
    :cond_2
    const-string v2, "BluetoothDun"

    const-string v3, "get state error: not attached to DUN service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isTetheringOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 305
    sget-object v2, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    if-nez v2, :cond_0

    .line 306
    const-string v2, "BluetoothDun"

    const-string v3, "Service is not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    return v1

    .line 310
    :cond_0
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothDun;->isTetheringOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothDun"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBluetoothTethering(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothTethering("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDun;->log(Ljava/lang/String;)V

    .line 293
    sget-object v1, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    if-nez v1, :cond_0

    .line 294
    const-string v1, "BluetoothDun"

    const-string v2, "Service is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDun;->setBluetoothTethering(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
