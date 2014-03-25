.class public final Landroid/bluetooth/BluetoothInputDevice;
.super Ljava/lang/Object;
.source "BluetoothInputDevice.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_PROTOCOL_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.input.profile.action.PROTOCOL_MODE_CHANGED"

.field public static final ACTION_VIRTUAL_UNPLUG_STATUS:Ljava/lang/String; = "android.bluetooth.input.profile.action.VIRTUAL_UNPLUG_STATUS"

.field private static final DBG:Z = true

.field public static final EXTRA_PROTOCOL_MODE:Ljava/lang/String; = "android.bluetooth.BluetoothInputDevice.extra.PROTOCOL_MODE"

.field public static final EXTRA_REPORT:Ljava/lang/String; = "android.bluetooth.BluetoothInputDevice.extra.REPORT"

.field public static final EXTRA_REPORT_BUFFER_SIZE:Ljava/lang/String; = "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

.field public static final EXTRA_REPORT_ID:Ljava/lang/String; = "android.bluetooth.BluetoothInputDevice.extra.REPORT_ID"

.field public static final EXTRA_REPORT_TYPE:Ljava/lang/String; = "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

.field public static final EXTRA_VIRTUAL_UNPLUG_STATUS:Ljava/lang/String; = "android.bluetooth.BluetoothInputDevice.extra.VIRTUAL_UNPLUG_STATUS"

.field public static final INPUT_CONNECT_FAILED_ALREADY_CONNECTED:I = 0x1389

.field public static final INPUT_CONNECT_FAILED_ATTEMPT_FAILED:I = 0x138a

.field public static final INPUT_DISCONNECT_FAILED_NOT_CONNECTED:I = 0x1388

.field public static final INPUT_OPERATION_GENERIC_FAILURE:I = 0x138b

.field public static final INPUT_OPERATION_SUCCESS:I = 0x138c

.field public static final PROTOCOL_BOOT_MODE:I = 0x1

.field public static final PROTOCOL_REPORT_MODE:I = 0x0

.field public static final PROTOCOL_UNSUPPORTED_MODE:I = 0xff

.field public static final REPORT_TYPE_FEATURE:B = 0x2t

.field public static final REPORT_TYPE_INPUT:B = 0x0t

.field public static final REPORT_TYPE_OUTPUT:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "BluetoothInputDevice"

.field private static final VDBG:Z = true

.field public static final VIRTUAL_UNPLUG_STATUS_FAIL:I = 0x1

.field public static final VIRTUAL_UNPLUG_STATUS_SUCCESS:I


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothInputDevice;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 5
    .parameter "context"
    .parameter "l"

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v2, Landroid/bluetooth/BluetoothInputDevice$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothInputDevice$1;-><init>(Landroid/bluetooth/BluetoothInputDevice;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 457
    new-instance v2, Landroid/bluetooth/BluetoothInputDevice$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothInputDevice$2;-><init>(Landroid/bluetooth/BluetoothInputDevice;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mConnection:Landroid/content/ServiceConnection;

    .line 227
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputDevice;->mContext:Landroid/content/Context;

    .line 228
    iput-object p2, p0, Landroid/bluetooth/BluetoothInputDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 229
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 231
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 232
    .local v1, mgr:Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 234
    :try_start_0
    const-string v2, "BluetoothInputDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register mBluetoothStateChangeCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothInputDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothInputDevice;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothInputDevice;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    const-string v2, "BluetoothInputDevice"

    const-string v3, "Could not bind to Bluetooth HID Service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothInputDevice;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothInputDevice;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 477
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

    .line 481
    if-nez p1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v0

    .line 483
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
    .line 640
    const-string v0, "BluetoothInputDevice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void
.end method


# virtual methods
.method close()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 248
    const-string v3, "close()"

    invoke-static {v3}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 249
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputDevice;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 250
    .local v1, mgr:Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 252
    :try_start_0
    const-string v3, "BluetoothInputDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unregister mBluetoothStateChangeCallback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothInputDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputDevice;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothInputDevice;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 260
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 262
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    .line 263
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputDevice;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothInputDevice;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 268
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    iput-object v6, p0, Landroid/bluetooth/BluetoothInputDevice;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 270
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BluetoothInputDevice"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 264
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 265
    .local v2, re:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BluetoothInputDevice"

    const-string v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 268
    .end local v2           #re:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothInputDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 303
    :cond_0
    :goto_0
    return v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

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

    .line 302
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v2, :cond_0

    const-string v2, "BluetoothInputDevice"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 333
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

    invoke-static {v2}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothInputDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 343
    :cond_0
    :goto_0
    return v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

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

    .line 342
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v2, :cond_0

    const-string v2, "BluetoothInputDevice"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    .line 350
    const-string v1, "getConnectedDevices()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothInputDevice;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 360
    :goto_0
    return-object v1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothInputDevice"

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

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 359
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v1, :cond_1

    const-string v1, "BluetoothInputDevice"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
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

    .line 384
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

    invoke-static {v2}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothInputDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 394
    :cond_0
    :goto_0
    return v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

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

    .line 393
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v2, :cond_0

    const-string v2, "BluetoothInputDevice"

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
    .line 367
    const-string v1, "getDevicesMatchingStates()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothInputDevice;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 377
    :goto_0
    return-object v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothInputDevice"

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

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 376
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v1, :cond_1

    const-string v1, "BluetoothInputDevice"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothInputDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 454
    :cond_0
    :goto_0
    return v1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

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

    .line 453
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v2, :cond_0

    const-string v2, "BluetoothInputDevice"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProtocolMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 526
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothInputDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputDevice;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 535
    :cond_0
    :goto_0
    return v1

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

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

    .line 534
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v2, :cond_0

    const-string v2, "BluetoothInputDevice"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .locals 5
    .parameter "device"
    .parameter "reportType"
    .parameter "reportId"
    .parameter "bufferSize"

    .prologue
    const/4 v1, 0x0

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getReport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), reportType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reportId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothInputDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothInputDevice;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 586
    :cond_0
    :goto_0
    return v1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

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

    .line 585
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v2, :cond_0

    const-string v2, "BluetoothInputDevice"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 5
    .parameter "device"
    .parameter "report"

    .prologue
    const/4 v1, 0x0

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendData("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), report="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothInputDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 630
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothInputDevice;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 637
    :cond_0
    :goto_0
    return v1

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

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

    .line 636
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v2, :cond_0

    const-string v2, "BluetoothInputDevice"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .parameter "device"
    .parameter "priority"

    .prologue
    const/4 v1, 0x0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 414
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothInputDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    if-eqz p2, :cond_1

    const/16 v2, 0x64

    if-eq p2, v2, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v1

    .line 420
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

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

    .line 426
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v2, :cond_0

    const-string v2, "BluetoothInputDevice"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .parameter "device"
    .parameter "protocolMode"

    .prologue
    const/4 v1, 0x0

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProtocolMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothInputDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 552
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothInputDevice;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 559
    :cond_0
    :goto_0
    return v1

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

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

    .line 558
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v2, :cond_0

    const-string v2, "BluetoothInputDevice"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .locals 5
    .parameter "device"
    .parameter "reportType"
    .parameter "report"

    .prologue
    const/4 v1, 0x0

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setReport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), reportType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 603
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothInputDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetoothInputDevice;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 612
    :cond_0
    :goto_0
    return v1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

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

    .line 611
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v2, :cond_0

    const-string v2, "BluetoothInputDevice"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "virtualUnplug("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothInputDevice;->log(Ljava/lang/String;)V

    .line 500
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothInputDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothInputDevice;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputDevice;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 510
    :cond_0
    :goto_0
    return v1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothInputDevice"

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

    .line 509
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice;->mService:Landroid/bluetooth/IBluetoothInputDevice;

    if-nez v2, :cond_0

    const-string v2, "BluetoothInputDevice"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
