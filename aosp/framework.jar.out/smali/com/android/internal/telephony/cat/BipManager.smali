.class Lcom/android/internal/telephony/cat/BipManager;
.super Ljava/lang/Object;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipManager$ConnectivityChangeThread;,
        Lcom/android/internal/telephony/cat/BipManager$SendDataThread;
    }
.end annotation


# static fields
.field private static final CONN_MGR_TIMEOUT:I = 0x7530

.field private static instance1:Lcom/android/internal/telephony/cat/BipManager;

.field private static instance2:Lcom/android/internal/telephony/cat/BipManager;


# instance fields
.field final NETWORK_TYPE:I

.field private isConnMgrIntentTimeout:Z

.field private isParamsValid:Z

.field mApn:Ljava/lang/String;

.field mAutoReconnected:Z

.field mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

.field mBufferSize:I

.field private mChannel:Lcom/android/internal/telephony/cat/Channel;

.field private mChannelId:I

.field private mChannelStatus:I

.field private mChannelStatusDataObject:Lcom/android/internal/telephony/cat/ChannelStatus;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field private mHandler:Lcom/android/internal/telephony/cat/CatService;

.field mLinkMode:I

.field mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field mLogin:Ljava/lang/String;

.field private mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

.field mPassword:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance1:Lcom/android/internal/telephony/cat/BipManager;

    .line 62
    sput-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance2:Lcom/android/internal/telephony/cat/BipManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/cat/CatService;)V
    .locals 4
    .parameter "context"
    .parameter "phone"
    .parameter "handler"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 65
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 67
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    .line 68
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 69
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 71
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 72
    iput v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mBufferSize:I

    .line 73
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 74
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 75
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 76
    iput v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mLinkMode:I

    .line 77
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mAutoReconnected:Z

    .line 79
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    .line 83
    iput v3, p0, Lcom/android/internal/telephony/cat/BipManager;->NETWORK_TYPE:I

    .line 85
    iput v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 86
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    .line 87
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 88
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatusDataObject:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 89
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 92
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 655
    new-instance v1, Lcom/android/internal/telephony/cat/BipManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/BipManager$1;-><init>(Lcom/android/internal/telephony/cat/BipManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    const-string v1, "[BIP]"

    const-string v2, "Construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 99
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "Fail to construct BipManager"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 104
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 105
    iput-object p3, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, connFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/cat/BipManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipManager;->requestRouteToHost()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/BipManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipManager;->establishLink()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipManager;->isParamsValid:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cat/BipManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    return v0
.end method

.method private checkNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Z
    .locals 6
    .parameter "nwInfo"
    .parameter "exState"

    .prologue
    const/4 v3, 0x0

    .line 437
    if-nez p1, :cond_0

    move v2, v3

    .line 450
    :goto_0
    return v2

    .line 441
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 442
    .local v1, type:I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 443
    .local v0, state:Landroid/net/NetworkInfo$State;
    const-string v4, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network type is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_1

    const-string v2, "MOBILE"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v2, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    if-nez v1, :cond_2

    if-ne v0, p2, :cond_2

    .line 447
    const/4 v2, 0x1

    goto :goto_0

    .line 443
    :cond_1
    const-string v2, "WIFI"

    goto :goto_1

    :cond_2
    move v2, v3

    .line 450
    goto :goto_0
.end method

.method private establishLink()I
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x7

    .line 454
    const/4 v8, 0x0

    .line 455
    .local v8, ret:I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v0, v0, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 456
    const-string v0, "[BIP]"

    const-string v1, "BM-establishLink: establish a TCP link"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v0, Lcom/android/internal/telephony/cat/TcpChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/TcpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v8

    .line 462
    if-nez v8, :cond_0

    .line 463
    iput v10, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 485
    :goto_0
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BM-establishLink: ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return v8

    .line 465
    :cond_0
    iput v9, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v0, v0, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 469
    const-string v0, "[BIP]"

    const-string v1, "BM-establishLink: establish a UDP link"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v0, Lcom/android/internal/telephony/cat/UdpChannel;

    iget v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/BipManager;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/Channel;->openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I

    move-result v8

    .line 474
    if-nez v8, :cond_2

    .line 475
    iput v10, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 477
    :cond_2
    iput v9, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0

    .line 480
    :cond_3
    const-string v0, "[BIP]"

    const-string v1, "BM-establishLink: unsupported channel type"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v8, 0x4

    .line 482
    iput v9, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    goto :goto_0
.end method

.method private getDataConnectionFromSetting()I
    .locals 7

    .prologue
    .line 131
    const/4 v2, -0x1

    .line 134
    .local v2, currentDataConnectionSimId:I
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 135
    .local v0, currentDataConnectionMultiSimId:J
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 140
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default Data Setting value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return v2
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/cat/CatService;I)Lcom/android/internal/telephony/cat/BipManager;
    .locals 3
    .parameter "context"
    .parameter "phone"
    .parameter "handler"
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    .line 113
    if-nez p3, :cond_1

    sget-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance1:Lcom/android/internal/telephony/cat/BipManager;

    if-nez v0, :cond_1

    .line 114
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 1"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/android/internal/telephony/cat/BipManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/cat/CatService;)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance1:Lcom/android/internal/telephony/cat/BipManager;

    .line 121
    :cond_0
    :goto_0
    if-nez p3, :cond_2

    .line 122
    sget-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance1:Lcom/android/internal/telephony/cat/BipManager;

    .line 127
    :goto_1
    return-object v0

    .line 116
    :cond_1
    if-ne p3, v2, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance2:Lcom/android/internal/telephony/cat/BipManager;

    if-nez v0, :cond_0

    .line 117
    const-string v0, "[BIP]"

    const-string v1, "Construct instance for sim 2"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/android/internal/telephony/cat/BipManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/BipManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/cat/CatService;)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance2:Lcom/android/internal/telephony/cat/BipManager;

    goto :goto_0

    .line 123
    :cond_2
    if-ne p3, v2, :cond_3

    .line 124
    sget-object v0, Lcom/android/internal/telephony/cat/BipManager;->instance2:Lcom/android/internal/telephony/cat/BipManager;

    goto :goto_1

    .line 127
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private requestRouteToHost()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 419
    const-string v3, "[BIP]"

    const-string/jumbo v4, "requestRouteToHost"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, addressBytes:[B
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v3, :cond_0

    .line 422
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, addr:I
    aget-byte v3, v1, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v3, v2

    .line 433
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    .end local v0           #addr:I
    :goto_0
    return v2

    .line 424
    :cond_0
    const-string v3, "[BIP]"

    const-string v4, "mDataDestinationAddress is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "apn"
    .parameter "user"
    .parameter "pwd"

    .prologue
    .line 490
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    if-nez p1, :cond_0

    .line 492
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: No apn parameters"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_0
    return-void

    .line 496
    :cond_0
    const/4 v13, 0x0

    .line 497
    .local v13, uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 498
    .local v12, numeric:Ljava/lang/String;
    const/4 v9, 0x0

    .line 499
    .local v9, mcc:Ljava/lang/String;
    const/4 v10, 0x0

    .line 500
    .local v10, mnc:Ljava/lang/String;
    const-string/jumbo v7, "supl"

    .line 502
    .local v7, apnType:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v1

    if-nez v1, :cond_4

    .line 503
    sget-object v13, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 504
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 511
    :cond_1
    :goto_1
    if-nez v13, :cond_2

    .line 512
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: Invalid uri"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 516
    const/4 v8, 0x0

    .line 517
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 518
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 519
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BM-setApnParams: mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "name = \'BIP\' and numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, selection:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v1

    if-nez v1, :cond_5

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 535
    :goto_2
    if-eqz v8, :cond_3

    .line 536
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 537
    .local v14, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    const-string v2, "BIP"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v1, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string/jumbo v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string/jumbo v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string/jumbo v1, "type"

    invoke-virtual {v14, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string/jumbo v1, "mcc"

    invoke-virtual {v14, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string/jumbo v1, "mnc"

    invoke-virtual {v14, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string/jumbo v1, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_7

    .line 549
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: insert one record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 551
    .local v11, newRow:Landroid/net/Uri;
    if-eqz v11, :cond_6

    .line 552
    const-string v1, "[BIP]"

    const-string v2, "insert a new record into db"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .end local v11           #newRow:Landroid/net/Uri;
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 566
    .end local v4           #selection:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: exit"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 507
    sget-object v13, Landroid/provider/Telephony$Carriers$GeminiCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 508
    const-string v1, "gsm.sim.operator.numeric.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 527
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers$GeminiCarriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_2

    .line 554
    .restart local v11       #newRow:Landroid/net/Uri;
    .restart local v14       #values:Landroid/content/ContentValues;
    :cond_6
    const-string v1, "[BIP]"

    const-string v2, "Fail to insert apn params into db"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 557
    .end local v11           #newRow:Landroid/net/Uri;
    :cond_7
    const-string v1, "[BIP]"

    const-string v2, "BM-setApnParams: update one record"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v14, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public closeChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 4
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 280
    const-string v0, "[BIP]"

    const-string v1, "BM-closeChannel: enter"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    if-nez v0, :cond_2

    .line 283
    :cond_0
    const-string v0, "[BIP]"

    const-string v1, "BM-closeChannel: channel has already been closed"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/16 v0, 0x8

    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 306
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 308
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    .line 310
    const-string v0, "[BIP]"

    const-string v1, "BM-closeChannel: exit"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void

    .line 285
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    iget v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    if-eq v0, v1, :cond_3

    .line 286
    const-string v0, "[BIP]"

    const-string v1, "BM-closeChannel: channel id is wrong"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x7

    iput v0, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/Channel;->closeChannel()I

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 291
    iput v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    .line 292
    const-string v0, "[BIP]"

    const-string v1, "BM-closeChannel: stop data connection"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUsingNetworkFeature getDataConnectionFromSetting  =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v1, "enableSUPL"

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    goto :goto_0
.end method

.method public getChannelId()I
    .locals 3

    .prologue
    .line 570
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BM-getChannelId: channel id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget v0, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    return v0
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 5
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, ret:I
    iget v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    if-nez v1, :cond_2

    .line 403
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "getChannelStatus: close"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 405
    new-instance v1, Lcom/android/internal/telephony/cat/ChannelStatus;

    invoke-direct {v1, v4, v4, v4}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 412
    :cond_1
    :goto_0
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    .line 414
    return-void

    .line 406
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 407
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChannelStatus: open:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 409
    new-instance v1, Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    const/16 v3, 0x80

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    goto :goto_0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 9
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 146
    const/4 v1, 0x2

    .line 147
    .local v1, result:I
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: enter"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, ret:I
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: init channel status object"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 153
    new-instance v4, Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v7, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelId:I

    invoke-direct {v4, v7, v5, v5}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 156
    iget v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    if-ne v4, v6, :cond_1

    .line 158
    :cond_0
    const-string v4, "[BIP]"

    const-string v7, "Channel is already open"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_1
    const/4 v0, 0x0

    .line 163
    .local v0, isParametersModified:Z
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 164
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: bearer type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v8, v8, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    iput v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mBufferSize:I

    .line 167
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: buffer size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 170
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v4, :cond_5

    .line 171
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: local address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 177
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    if-eqz v4, :cond_6

    .line 178
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v8, v8, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v8, v8, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_1
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 185
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v4, :cond_7

    .line 186
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: dest address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_2
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-nez v4, :cond_8

    const-string v4, "TestGp.rs"

    :goto_3
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    .line 192
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 193
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: apn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_4
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    .line 200
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: login "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    .line 202
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: password "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_a

    move v4, v5

    :goto_5
    iput v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mLinkMode:I

    .line 207
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: mLinkMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v8, v8, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_b

    move v4, v5

    :goto_6
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mAutoReconnected:Z

    .line 220
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager;->mLogin:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipManager;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8}, Lcom/android/internal/telephony/cat/BipManager;->setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v4, "gsm.stk.bip"

    const-string v7, "1"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BM-openChannel: call startUsingNetworkFeature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipManager;->getDataConnectionFromSetting()I

    move-result v4

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v7

    if-ne v4, v7, :cond_2

    .line 229
    const-string v4, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start to establish data connection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v7, "enableSUPL"

    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipManager;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v8

    invoke-virtual {v4, v5, v7, v8}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v1

    .line 237
    :cond_2
    if-nez v1, :cond_d

    .line 238
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: APN already active"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipManager;->requestRouteToHost()Z

    move-result v4

    if-nez v4, :cond_3

    .line 240
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: Fail - requestRouteToHost"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v2, 0x2

    .line 243
    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 245
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: establish data channel"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipManager;->establishLink()I

    move-result v2

    .line 247
    if-eqz v2, :cond_4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_c

    .line 248
    :cond_4
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: channel is activated"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v6, v4, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 255
    :goto_7
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 256
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 258
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    .line 276
    :goto_8
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: exit"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 173
    :cond_5
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: local address is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_6
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: transport protocol is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 188
    :cond_7
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: dest address is null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 191
    :cond_8
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    goto/16 :goto_3

    .line 195
    :cond_9
    const-string v4, "[BIP]"

    const-string v7, "BM-openChannel: apn default TestGp.rs"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipManager;->mApn:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_a
    move v4, v6

    .line 204
    goto/16 :goto_5

    :cond_b
    move v4, v6

    .line 209
    goto/16 :goto_6

    .line 251
    :cond_c
    const-string v4, "[BIP]"

    const-string v6, "BM-openChannel: channel is un-activated"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    goto :goto_7

    .line 259
    :cond_d
    if-ne v1, v6, :cond_e

    .line 260
    const-string v4, "[BIP]"

    const-string v5, "BM-openChannel: APN request started"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/BipManager;->isParamsValid:Z

    .line 263
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 264
    .local v3, timerMsg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/internal/telephony/cat/CatService;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 267
    .end local v3           #timerMsg:Landroid/os/Message;
    :cond_e
    const-string v4, "[BIP]"

    const-string v6, "BM-openChannel: startUsingNetworkFeature FAIL"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v2, 0x2

    .line 269
    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 271
    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 272
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 274
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method

.method public receiveData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 5
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    .line 314
    iget v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelDataLength:I

    .line 315
    .local v0, requestCount:I
    const/4 v1, 0x0

    .line 317
    .local v1, result:Lcom/android/internal/telephony/cat/ReceiveDataResult;
    iget v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 319
    :cond_0
    const/16 v2, 0xd2

    if-le v0, v2, :cond_1

    .line 320
    const-string v2, "[BIP]"

    const-string v3, "BM-receiveData: Modify channel data length to MAX_APDU_SIZE"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/16 v0, 0xd2

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/Channel;->receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_2

    .line 328
    iget-object v2, v1, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iput-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    .line 329
    iget v2, v1, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    iput v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mRemainingDataLength:I

    .line 330
    const/4 v2, 0x0

    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 331
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 332
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    .line 342
    :cond_2
    :goto_0
    return-void

    .line 337
    :cond_3
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BM-receiveData: Channel status is invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/BipManager;->mChannelStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v2, 0x5

    iput v2, p2, Landroid/os/Message;->arg1:I

    .line 339
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 340
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipManager;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/cat/CatService;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendData(Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V
    .locals 3
    .parameter "cmdMsg"
    .parameter "response"

    .prologue
    .line 346
    const-string v1, "[BIP]"

    const-string/jumbo v2, "sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/cat/BipManager$SendDataThread;-><init>(Lcom/android/internal/telephony/cat/BipManager;Lcom/android/internal/telephony/cat/CatCmdMessage;Landroid/os/Message;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 348
    .local v0, rt:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 349
    const-string v1, "[BIP]"

    const-string/jumbo v2, "sendData: Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public setConnMgrTimeoutFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 670
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipManager;->isConnMgrIntentTimeout:Z

    .line 671
    return-void
.end method
