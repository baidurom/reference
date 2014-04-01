.class public final Landroid/bluetooth/BluetoothSocket;
.super Ljava/lang/Object;
.source "BluetoothSocket.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSocket$SdpHelper;,
        Landroid/bluetooth/BluetoothSocket$SocketState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothSocket;",
            ">;"
        }
    .end annotation
.end field

.field static final EADDRINUSE:I = 0x62

.field static final EBADFD:I = 0x4d

.field public static final MAX_RFCOMM_CHANNEL:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "BluetoothSocket"

.field private static final TAG_2:Ljava/lang/String; = "BluetoothSocket_MTK"

.field static final TYPE_L2CAP:I = 0x3

.field static final TYPE_RFCOMM:I = 0x1

.field static final TYPE_SCO:I = 0x2


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mAuth:Z

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mEncrypt:Z

.field private mFdHandle:I

.field private final mInputStream:Landroid/bluetooth/BluetoothInputStream;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

.field private mPort:I

.field private final mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

.field private mService:Landroid/bluetooth/IBluetoothSocket;

.field private mSocketData:I

.field private mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 331
    new-instance v0, Landroid/bluetooth/BluetoothSocket$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothSocket$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothSocket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V
    .locals 7
    .parameter "type"
    .parameter "fd"
    .parameter "auth"
    .parameter "encrypt"
    .parameter "device"
    .parameter "port"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] Bluetooth Socket Constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v2, "BluetoothSocket_MTK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[JSR82] type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " auth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encrypt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    if-nez p7, :cond_0

    if-ne p2, v5, :cond_0

    .line 188
    if-gez p6, :cond_0

    .line 189
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid RFCOMM channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_0
    if-nez p7, :cond_2

    .line 193
    iput p6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 194
    iput-object v6, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    .line 199
    :goto_0
    iput p1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 200
    iput-boolean p3, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 201
    iput-boolean p4, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 202
    iput-object p5, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 203
    if-nez p5, :cond_3

    .line 204
    iput-object v6, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 209
    :goto_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    if-nez v2, :cond_1

    .line 210
    const-string v2, "bluetooth_socket"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 211
    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_4

    .line 212
    invoke-static {v0}, Landroid/bluetooth/IBluetoothSocket$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSocket;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    .line 219
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_1
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    if-nez v2, :cond_5

    .line 221
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] BluetoothSocket: IBluetoothSocket is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_2
    new-instance v2, Landroid/bluetooth/BluetoothSocket$SdpHelper;

    invoke-direct {v2, p5, p7}, Landroid/bluetooth/BluetoothSocket$SdpHelper;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    .line 197
    iput v5, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    goto :goto_1

    .line 214
    .restart local v0       #binder:Landroid/os/IBinder;
    :cond_4
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] Bluetooth Socket service not available!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iput-object v6, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    goto :goto_2

    .line 224
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_5
    if-ne p2, v5, :cond_7

    .line 226
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    invoke-interface {v2, p1, p3, p4, p6}, Landroid/bluetooth/IBluetoothSocket;->initSocket(IZZI)I

    move-result v2

    iput v2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    .line 227
    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    if-ne v5, v2, :cond_6

    .line 229
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] BluetoothSocket: initSocket() failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_6
    :goto_3
    new-instance v2, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 240
    new-instance v2, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 241
    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 242
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 275
    return-void

    .line 236
    :cond_7
    iput p2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    goto :goto_3
.end method

.method private constructor <init>(IIZZLjava/lang/String;I)V
    .locals 8
    .parameter "type"
    .parameter "fd"
    .parameter "auth"
    .parameter "encrypt"
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v5, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v5, p5}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    .line 291
    const-string v0, "BluetoothSocket_MTK"

    const-string v1, "[JSR82] Constructor used by JNI."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v1, 0x4

    new-array v0, v1, [Z

    .line 311
    .local v0, bVarArray:[Z
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] Constructor_Parcel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    .line 313
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    .line 315
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 316
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    .line 317
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    .line 318
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    :goto_0
    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 320
    new-instance v1, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 321
    new-instance v1, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 322
    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    .line 323
    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    .line 324
    iput-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 325
    return-void

    .line 318
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothSocket$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothSocket;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private native abortNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native acceptNative(I)Landroid/bluetooth/BluetoothSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native availableNative()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native bindListenNative()I
.end method

.method private native connectNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native destroyNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native initSocketFromFdNative(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native initSocketNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native readNative([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native writeNative([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 13
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 579
    const/4 v9, 0x0

    .line 580
    .local v9, bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    const/4 v11, 0x0

    .line 583
    .local v11, newFdHandle:I
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] accept()."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 586
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :catchall_0
    move-exception v1

    move-object v0, v9

    .end local v9           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .local v0, bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 588
    .end local v0           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .restart local v9       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetoothSocket;->accept(II)I

    move-result v11

    .line 589
    const/4 v1, -0x1

    if-eq v1, v11, :cond_2

    .line 590
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 592
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] accept: Connection is created successfully!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothSocket;->getAddr(I)Ljava/lang/String;

    move-result-object v8

    .line 594
    .local v8, address:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 595
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] accept: BD_ADDR string is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v1, Ljava/io/IOException;

    const-string v2, "[JSR82] accept: getAddr() failed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 608
    .end local v8           #address:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v0, v9

    .line 609
    .end local v9           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .restart local v0       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .local v10, e:Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, ""

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 613
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v12

    .end local v10           #e:Landroid/os/RemoteException;
    :goto_2
    return-object v1

    .line 599
    .end local v0           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .restart local v8       #address:Ljava/lang/String;
    .restart local v9       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :cond_1
    :try_start_3
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    iget v1, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    iget-boolean v3, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    iget-boolean v4, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    new-instance v5, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v5, v8}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    iget v6, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 601
    .end local v9           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .restart local v0       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :try_start_4
    iput v11, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 613
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v0

    goto :goto_2

    .line 604
    .end local v0           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .end local v8           #address:Ljava/lang/String;
    .restart local v9       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :cond_2
    :try_start_5
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] accept: Connection is not created."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v1, Ljava/io/IOException;

    const-string v2, "[JSR82] accept: Connection is not created (failed or aborted)."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 613
    .end local v9           #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    .restart local v0       #bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 608
    .restart local v8       #address:Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 631
    const/4 v1, 0x0

    .line 633
    .local v1, serviceResult:I
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 635
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v4, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v3, v4, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 637
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothSocket;->available(I)I

    move-result v1

    .line 638
    if-ne v2, v1, :cond_1

    .line 640
    new-instance v3, Ljava/io/IOException;

    const-string v4, "[JSR82] available: available() failed."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothSocket_MTK"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 648
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v2, v1

    goto :goto_0
.end method

.method bindListen()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 546
    const/4 v1, 0x0

    .line 548
    .local v1, serviceResult:I
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 550
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v4, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    const/16 v2, 0x4d

    .line 564
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return v2

    .line 551
    :cond_0
    :try_start_1
    const-string v3, "BluetoothSocket_MTK"

    const-string v4, "[JSR82] bindListen"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothSocket;->bindListen(I)I

    move-result v1

    .line 554
    if-ne v2, v1, :cond_1

    .line 555
    const-string v3, "BluetoothSocket_MTK"

    const-string v4, "[JSR82] bindListen: bindListen() failed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_1
    iput v1, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 558
    const/4 v2, 0x0

    .line 564
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "BluetoothSocket_MTK"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 564
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 430
    const/4 v1, 0x0

    .line 433
    .local v1, serviceResult:I
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] close"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 435
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] readLock got."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    .line 451
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 498
    :goto_0
    return-void

    .line 438
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    if-eqz v2, :cond_1

    .line 439
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket$SdpHelper;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothSocket;->abort(I)I

    move-result v1

    .line 443
    if-ne v4, v1, :cond_2

    .line 445
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] close: abort() failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 451
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 454
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] Start to aquire writeLock."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 458
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] writeLock got."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothSocket;->destroy(I)I

    move-result v1

    .line 462
    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 463
    if-ne v4, v1, :cond_3

    .line 465
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] close: destroy() failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 467
    :catch_1
    move-exception v0

    .line 468
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_5
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 471
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 471
    :catchall_1
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
.end method

.method public connect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 378
    .local v0, connectResult:I
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 380
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 382
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    if-eqz v2, :cond_1

    .line 383
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, "[JSR82] connect: do SDP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSdp:Landroid/bluetooth/BluetoothSocket$SdpHelper;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket$SdpHelper;->doSdp()I

    move-result v2

    iput v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    .line 385
    const-string v2, "BluetoothSocket_MTK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[JSR82] connect: do SDP done; mPort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :cond_1
    const/4 v2, 0x1

    :try_start_2
    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    if-le v2, v3, :cond_3

    .line 391
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[JSR82] connect: Invalid RFCOMM channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 421
    return-void

    .line 393
    :cond_3
    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    iget v5, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-interface {v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothSocket;->connect(ILjava/lang/String;I)I

    move-result v0

    .line 395
    const/4 v2, -0x1

    if-ne v2, v0, :cond_2

    .line 397
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] connect: Connection is not created (failed or aborted)."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 298
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getChannel()I
    .locals 3

    .prologue
    .line 752
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 754
    :goto_0
    return v0

    .line 753
    :cond_0
    const-string v0, "BluetoothSocket_MTK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JSR82] getChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget v0, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mInputStream:Landroid/bluetooth/BluetoothInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    return-object v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method read([BII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    const/4 v1, 0x0

    .line 665
    .local v1, serviceResult:I
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 667
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 669
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v2, p1, p2, p3, v3}, Landroid/bluetooth/IBluetoothSocket;->read([BIII)I

    move-result v1

    .line 670
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 672
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] read: read() failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 677
    const/4 v2, 0x0

    .line 680
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v2, v1

    goto :goto_0
.end method

.method throwErrno(I)V
    .locals 4
    .parameter "errno"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    :try_start_0
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, "[JSR82] throwErrnoNative"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v1, p1, v2}, Landroid/bluetooth/IBluetoothSocket;->throwErrno(II)V

    .line 732
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JSR82] throwErrnoNative: errno="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "BluetoothSocket_MTK"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method native throwErrnoNative(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method write([BII)I
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    const/4 v1, 0x0

    .line 697
    .local v1, serviceResult:I
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 699
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 701
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mService:Landroid/bluetooth/IBluetoothSocket;

    iget v3, p0, Landroid/bluetooth/BluetoothSocket;->mFdHandle:I

    invoke-interface {v2, p1, p2, p3, v3}, Landroid/bluetooth/IBluetoothSocket;->write([BIII)I

    move-result v1

    .line 702
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 704
    new-instance v2, Ljava/io/IOException;

    const-string v3, "[JSR82] write: write() failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "BluetoothSocket_MTK"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 709
    const/4 v2, 0x0

    .line 712
    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v2, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 342
    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket;->mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v5, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v4, v5, :cond_0

    move v1, v2

    .line 343
    .local v1, closed:Z
    :goto_0
    const/4 v4, 0x3

    new-array v0, v4, [Z

    iget-boolean v4, p0, Landroid/bluetooth/BluetoothSocket;->mAuth:Z

    aput-boolean v4, v0, v3

    iget-boolean v3, p0, Landroid/bluetooth/BluetoothSocket;->mEncrypt:Z

    aput-boolean v3, v0, v2

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    .line 345
    .local v0, bVarArray:[Z
    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 347
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 353
    iget v2, p0, Landroid/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    return-void

    .end local v0           #bVarArray:[Z
    .end local v1           #closed:Z
    :cond_0
    move v1, v3

    .line 342
    goto :goto_0
.end method
