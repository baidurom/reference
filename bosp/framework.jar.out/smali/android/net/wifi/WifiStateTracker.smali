.class public Landroid/net/wifi/WifiStateTracker;
.super Ljava/lang/Object;
.source "WifiStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateTracker$1;,
        Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final AP_CFG_RDEB_FILE_WIFI_LID:I = 0x13

.field private static final LOGV:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetType:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter "netType"
    .parameter "networkName"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    .line 70
    iput p1, p0, Landroid/net/wifi/WifiStateTracker;->mNetType:I

    .line 71
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 72
    const-string v0, "WifiStateTracker"

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    .line 76
    :cond_0
    :goto_0
    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, ""

    invoke-direct {v0, p1, v2, p2, v1}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 77
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 78
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 80
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 81
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateTracker;->setTeardownRequested(Z)V

    .line 82
    return-void

    .line 73
    :cond_1
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 74
    const-string v0, "WifiP2pStateTracker"

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getItem(I)[B
    .locals 8
    .parameter "id"

    .prologue
    .line 225
    const/16 v5, 0x200

    new-array v4, v5, [B

    .line 226
    .local v4, result:[B
    const/4 v2, 0x0

    .line 227
    .local v2, buff:[B
    const-string v5, "NvRAMAgent"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 228
    .local v1, binder:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/net/wifi/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/NvRAMAgent;

    move-result-object v0

    .line 231
    .local v0, agent:Landroid/net/wifi/NvRAMAgent;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/net/wifi/NvRAMAgent;->readFile(I)[B

    move-result-object v2

    .line 232
    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiCfgDefault buff.length= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    array-length v7, v2

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    :goto_1
    return-object v4

    .line 233
    :catch_0
    move-exception v3

    .line 235
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 240
    .local v3, e:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read wifi_nvram item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private putItem(I[B)V
    .locals 6
    .parameter "id"
    .parameter "data"

    .prologue
    .line 246
    move-object v2, p2

    .line 248
    .local v2, buff:[B
    const-string v4, "NvRAMAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 249
    .local v1, binder:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/net/wifi/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/NvRAMAgent;

    move-result-object v0

    .line 251
    .local v0, agent:Landroid/net/wifi/NvRAMAgent;
    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/net/wifi/NvRAMAgent;->writeFile(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-void

    .line 252
    :catch_0
    move-exception v3

    .line 253
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 254
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Fail to write the NvRam!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public WriteNvram(Ljava/lang/String;)Z
    .locals 10
    .parameter "CountryCode"

    .prologue
    const/16 v9, 0x13

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 259
    const/16 v1, 0x200

    .line 260
    .local v1, cfgSize:I
    const/16 v2, 0xa

    .line 261
    .local v2, countryBit1:I
    const/16 v3, 0xb

    .line 262
    .local v3, countryBit2:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 263
    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    const-string v7, "The CountryCode is invalid!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    :goto_0
    return v5

    .line 266
    :cond_1
    invoke-direct {p0, v9}, Landroid/net/wifi/WifiStateTracker;->getItem(I)[B

    move-result-object v0

    .line 267
    .local v0, cfg:[B
    array-length v7, v0

    if-lt v7, v1, :cond_0

    .line 271
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 272
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 274
    const/16 v7, 0x13

    :try_start_0
    invoke-direct {p0, v7, v0}, Landroid/net/wifi/WifiStateTracker;->putItem(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 280
    goto :goto_0

    .line 275
    :catch_0
    move-exception v4

    .line 277
    .local v4, e:Ljava/lang/Exception;
    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to write"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public WriteNvram(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .parameter "from"
    .parameter "to"

    .prologue
    .line 285
    const/16 v7, 0x200

    .line 289
    .local v7, cfgSize:I
    const/16 v2, 0xca

    .line 290
    .local v2, ChannelListMap:I
    const/16 v5, 0xcc

    .line 291
    .local v5, RegulationClass:I
    const/16 v0, 0xcd

    .line 292
    .local v0, Band:I
    const/16 v3, 0xce

    .line 293
    .local v3, ChannelSpan:I
    const/16 v4, 0xcf

    .line 294
    .local v4, ChannelStart:I
    const/16 v1, 0xd0

    .line 297
    .local v1, ChannelEnd:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 298
    .local v10, start:I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 299
    .local v9, end:I
    iget-object v11, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The Range is from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " numbers "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    if-ltz v10, :cond_0

    if-ltz v9, :cond_0

    add-int v11, v10, v9

    add-int/lit8 v11, v11, -0x1

    const/16 v12, 0xe

    if-le v11, v12, :cond_1

    .line 306
    :cond_0
    iget-object v11, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    const-string v12, "The range is invalid!"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v11, 0x0

    .line 328
    .end local v9           #end:I
    .end local v10           #start:I
    :goto_0
    return v11

    .line 300
    :catch_0
    move-exception v8

    .line 301
    .local v8, e:Ljava/lang/NumberFormatException;
    iget-object v11, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fail to Parse range"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v11, 0x0

    goto :goto_0

    .line 310
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #end:I
    .restart local v10       #start:I
    :cond_1
    const/16 v11, 0x13

    invoke-direct {p0, v11}, Landroid/net/wifi/WifiStateTracker;->getItem(I)[B

    move-result-object v6

    .line 311
    .local v6, cfg:[B
    array-length v11, v6

    if-ge v11, v7, :cond_2

    .line 312
    const/4 v11, 0x0

    goto :goto_0

    .line 314
    :cond_2
    const/4 v11, 0x2

    aput-byte v11, v6, v2

    .line 315
    const/16 v11, 0x51

    aput-byte v11, v6, v5

    .line 316
    const/4 v11, 0x1

    aput-byte v11, v6, v0

    .line 317
    const/4 v11, 0x1

    aput-byte v11, v6, v3

    .line 318
    and-int/lit16 v11, v10, 0xff

    int-to-byte v11, v11

    aput-byte v11, v6, v4

    .line 319
    and-int/lit16 v11, v9, 0xff

    int-to-byte v11, v11

    aput-byte v11, v6, v1

    .line 322
    const/16 v11, 0x13

    :try_start_1
    invoke-direct {p0, v11, v6}, Landroid/net/wifi/WifiStateTracker;->putItem(I[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    const/4 v11, 0x1

    goto :goto_0

    .line 323
    :catch_1
    move-exception v8

    .line 325
    .local v8, e:Ljava/lang/Exception;
    iget-object v11, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fail to write"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 213
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 175
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    return-void
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startWifi()Z

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 390
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 137
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .parameter "isRequested"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 156
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "target"

    .prologue
    .line 97
    iput-object p2, p0, Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    .line 100
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, filter:Landroid/content/IntentFilter;
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNetType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 103
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    new-instance v1, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/net/wifi/WifiStateTracker$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void

    .line 105
    :cond_1
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNetType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 106
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public teardown()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 118
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->stopWifi()Z

    .line 120
    return v1
.end method
