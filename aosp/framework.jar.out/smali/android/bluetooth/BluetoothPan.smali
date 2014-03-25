.class public final Landroid/bluetooth/BluetoothPan;
.super Ljava/lang/Object;
.source "BluetoothPan.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final EXTRA_LOCAL_ROLE:Ljava/lang/String; = "android.bluetooth.pan.extra.LOCAL_ROLE"

.field public static final LOCAL_NAP_ROLE:I = 0x1

.field public static final LOCAL_PANU_ROLE:I = 0x2

.field public static final PAN_CONNECT_FAILED_ALREADY_CONNECTED:I = 0x3e9

.field public static final PAN_CONNECT_FAILED_ATTEMPT_FAILED:I = 0x3ea

.field public static final PAN_DISCONNECT_FAILED_NOT_CONNECTED:I = 0x3e8

.field public static final PAN_OPERATION_GENERIC_FAILURE:I = 0x3eb

.field public static final PAN_OPERATION_SUCCESS:I = 0x3ec

.field public static final PAN_ROLE_NONE:I = 0x0

.field public static final REMOTE_NAP_ROLE:I = 0x1

.field public static final REMOTE_PANU_ROLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothPan"

.field private static final VDBG:Z = true


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mPanService:Landroid/bluetooth/IBluetoothPan;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .parameter "context"
    .parameter "l"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v1, Landroid/bluetooth/BluetoothPan$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothPan$1;-><init>(Landroid/bluetooth/BluetoothPan;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothPan;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 339
    new-instance v1, Landroid/bluetooth/BluetoothPan$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothPan$2;-><init>(Landroid/bluetooth/BluetoothPan;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    .line 132
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 134
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 136
    :try_start_0
    const-string v1, "BluetoothPan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register mBluetoothStateChangeCallback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothPan;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    const-string v1, "BluetoothPan"

    const-string v2, "BluetoothPan() call bindService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothPan;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const-string v1, "BluetoothPan"

    const-string v2, "Could not bind to Bluetooth HID Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    const-string v1, "BluetoothPan"

    const-string v2, "BluetoothPan(), bindService called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "BluetoothPan"

    const-string v2, "Unable to register BluetoothStateChangeCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothPan;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 360
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

    .line 364
    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 366
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
    .line 371
    const-string v0, "BluetoothPan"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void
.end method


# virtual methods
.method close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    const-string v1, "close()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 153
    iput-object v3, p0, Landroid/bluetooth/BluetoothPan;->mConnection:Landroid/content/ServiceConnection;

    .line 155
    :cond_0
    iput-object v3, p0, Landroid/bluetooth/BluetoothPan;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 157
    :try_start_0
    const-string v1, "BluetoothPan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregister mBluetoothStateChangeCallback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothPan;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "BluetoothPan"

    const-string v2, "Unable to register BluetoothStateChangeCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 213
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

    invoke-static {v2}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothPan;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
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

    .line 223
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-nez v2, :cond_0

    const-string v2, "BluetoothPan"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 254
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

    .line 255
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothPan;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 265
    :cond_0
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
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

    .line 264
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-nez v2, :cond_0

    const-string v2, "BluetoothPan"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPan;->close()V

    .line 166
    return-void
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
    .line 272
    const-string v1, "getConnectedDevices()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPan;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 282
    :goto_0
    return-object v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
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

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 281
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-nez v1, :cond_1

    const-string v1, "BluetoothPan"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
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

    .line 306
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

    .line 307
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothPan;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 317
    :cond_0
    :goto_0
    return v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
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

    .line 316
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

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
    .line 289
    const-string v1, "getDevicesMatchingStates()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPan;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPan;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 299
    :goto_0
    return-object v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
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

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 298
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    if-nez v1, :cond_1

    const-string v1, "BluetoothPan"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public isTetheringOn()Z
    .locals 4

    .prologue
    .line 330
    const-string v1, "isTetheringOn()"

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->log(Ljava/lang/String;)V

    .line 332
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPan;->isTetheringOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 336
    :goto_0
    return v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
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

    .line 336
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBluetoothTethering(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 321
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

    .line 323
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan;->mPanService:Landroid/bluetooth/IBluetoothPan;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPan;->setBluetoothTethering(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-void

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

    goto :goto_0
.end method
