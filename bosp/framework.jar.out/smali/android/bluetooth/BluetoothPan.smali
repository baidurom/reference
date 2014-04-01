.class public final Landroid/bluetooth/BluetoothPan;
.super Ljava/lang/Object;
.source "BluetoothPan.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

.field public static final BT_PAN_GN_DEVICE_AUTHORIZE:Ljava/lang/String; = "bt_pan_GN_device_authorize"

.field public static final BT_PAN_GN_DEVICE_CONNECTED:Ljava/lang/String; = "bt_pan_GN_device_connected"

.field public static final BT_PAN_NAP_DEVICE_AUTHORIZE:Ljava/lang/String; = "bt_pan_NAP_device_authorize"

.field public static final BT_PAN_NAP_DEVICE_CONNECTED:Ljava/lang/String; = "bt_pan_NAP_device_connected"

.field private static final DBG:Z = true

.field public static final DEVICE_ADDR:Ljava/lang/String; = "device_addr"

.field public static final EXTRA_LOCAL_ROLE:Ljava/lang/String; = "android.bluetooth.pan.extra.LOCAL_ROLE"

.field public static final LOCAL_GN_ROLE:I = 0x1

.field public static final LOCAL_NAP_ROLE:I = 0x0

.field public static final LOCAL_PANU_ROLE:I = 0x2

.field public static final PAN_CONNECT_FAILED_ALREADY_CONNECTED:I = 0x3e9

.field public static final PAN_CONNECT_FAILED_ATTEMPT_FAILED:I = 0x3ea

.field public static final PAN_DISCONNECT_FAILED_NOT_CONNECTED:I = 0x3e8

.field public static final PAN_OPERATION_GENERIC_FAILURE:I = 0x3eb

.field public static final PAN_OPERATION_SUCCESS:I = 0x3ec

.field public static final PAN_ROLE_SELECT_INTENT:Ljava/lang/String; = "android.bluetooth.BluetoothPan.action.ROLE_SELECT"

.field private static final TAG:Ljava/lang/String; = "BluetoothPan"

.field private static mService:Landroid/bluetooth/IBluetoothPan;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 3
    .parameter "context"
    .parameter "l"

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Landroid/bluetooth/BluetoothPan$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothPan$1;-><init>(Landroid/bluetooth/BluetoothPan;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    .line 213
    const-string v0, "BluetoothPan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start bind to Bluetooth PAN Service, mService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    .line 215
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 216
    iput-object p2, p0, Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 217
    sget-object v0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothPan;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const-string v0, "BluetoothPan"

    const-string v1, "Could not bind to Bluetooth PAN Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 226
    :cond_1
    return-void
.end method

.method static synthetic access$000()Landroid/bluetooth/IBluetoothPan;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    return-object v0
.end method

.method static synthetic access$002(Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    sput-object p0, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    return-object p0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 405
    if-nez p1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 407
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 412
    const-string v0, "BluetoothPan"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method


# virtual methods
.method close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    iput-object v2, p0, Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 268
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 270
    iput-object v2, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    .line 272
    :cond_0
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 302
    sget-object v2, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v2, :cond_0

    .line 304
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothPan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothPan"

    const-string/jumbo v3, "mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    const-string v1, "getConnectedDevices()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 321
    sget-object v1, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPan;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 330
    :goto_0
    return-object v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothPan"

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

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 329
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    if-nez v1, :cond_1

    const-string v1, "BluetoothPan"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 355
    sget-object v2, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothPan;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothPan;->getState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 365
    :cond_0
    :goto_0
    return v1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothPan"

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

    .line 364
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget-object v2, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    if-nez v2, :cond_0

    const-string v2, "BluetoothPan"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 4
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    const-string v1, "getDevicesMatchingStates()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 338
    sget-object v1, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPan;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 347
    :goto_0
    return-object v1

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothPan"

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

    .line 343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 346
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    if-nez v1, :cond_1

    const-string v1, "BluetoothPan"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public isTetheringOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTetheringOn(), mService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 387
    sget-object v2, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    if-nez v2, :cond_0

    .line 388
    const-string v2, "BluetoothPan"

    const-string v3, "Service is not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return v1

    .line 392
    :cond_0
    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothPan;->isTetheringOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothPan"

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
    .locals 5
    .parameter "value"

    .prologue
    .line 369
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

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 370
    sget-object v1, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    if-nez v1, :cond_1

    .line 371
    const-string v1, "BluetoothPan"

    const-string v2, "Service is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothPan;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    const-string v1, "BluetoothPan"

    const-string v2, "Could not bind to Bluetooth Pan Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothPan;->mService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPan;->setBluetoothTethering(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothPan"

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
