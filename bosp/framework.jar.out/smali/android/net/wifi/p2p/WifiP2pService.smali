.class public Landroid/net/wifi/p2p/WifiP2pService;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$1;,
        Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x23000

.field private static final CONNECTED_DISCOVER_TIMEOUT_S:I = 0x19

.field private static final CONNECT_FAILURE:I = -0x1

.field private static final CONNECT_SUCCESS:I = 0x0

.field private static final DBG:Z = true

.field private static final DHCP_RANGE:[Ljava/lang/String; = null

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final FAST_CONNECT_FIND_GO_TIMED_OUT:I = 0x23009

.field private static final FAST_CONNECT_FIND_GO_WAIT_TIME_MS:I = 0x7530

.field private static final FAST_DISCOVER_TIMEOUT_S:I = 0x7b

.field private static final FAST_SCAN_INTERVAL_TIME_MS:I = 0xbb8

.field private static final FORM_GROUP:Ljava/lang/Boolean; = null

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x1d4c0

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final JOIN_GROUP:Ljava/lang/Boolean; = null

.field private static final NEEDS_PROVISION_REQ:I = 0x1

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NO_REINVOCATION:Ljava/lang/Boolean; = null

.field private static final NO_RELOAD:Ljava/lang/Boolean; = null

.field public static final P2P_ACTIVE:I = 0x0

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field public static final P2P_FAST_PS:I = 0x2

.field public static final P2P_MAX_PS:I = 0x1

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final RELOAD:Ljava/lang/Boolean; = null

.field public static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static final TRY_REINVOCATION:Ljava/lang/Boolean;

.field private static mDisableP2pTimeoutIndex:I

.field private static mFastConnectFindGoTimeOutIndex:I

.field private static mGroupCreatingTimeoutIndex:I


# instance fields
.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mAutonomousGroup:Z

.field private mBeamPlusStart:Z

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDiscoveryStarted:Z

.field private mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

.field private mForegroundAppMessenger:Landroid/os/Messenger;

.field private mForegroundAppPkgName:Ljava/lang/String;

.field private mFoundGo:Z

.field private mFoundGoTimeOut:Z

.field private mGcFastConnectEnaled:Z

.field private mGoFastConnectEnaled:Z

.field private mGroupCreatedEntirely:Z

.field private mGroupRemoveReason:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

.field private mInterface:Ljava/lang/String;

.field private mJoinExistingGroup:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mRestartFastConnectAsGc:Z

.field private mRestartFastConnectAsGo:Z

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mTempoarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDeviceAddress:Ljava/lang/String;

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 134
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    .line 136
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->TRY_REINVOCATION:Ljava/lang/Boolean;

    .line 137
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_REINVOCATION:Ljava/lang/Boolean;

    .line 139
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    .line 140
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    .line 148
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    .line 151
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.49.3"

    aput-object v1, v0, v2

    const-string v1, "192.168.49.254"

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    .line 242
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 367
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 130
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 197
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 214
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    .line 217
    iput-byte v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    .line 265
    new-instance v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 267
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGcFastConnectEnaled:Z

    .line 268
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGoFastConnectEnaled:Z

    .line 269
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z

    .line 270
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z

    .line 271
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGo:Z

    .line 272
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGc:Z

    .line 280
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatedEntirely:Z

    .line 286
    iput-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mBeamPlusStart:Z

    .line 368
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    .line 371
    const-string/jumbo v0, "p2p0"

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    .line 372
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mActivityMgr:Landroid/app/ActivityManager;

    .line 374
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0xd

    const-string v2, "WIFI_P2P"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 376
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    .line 379
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #string@config_wifi_p2p_device_type#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 382
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "WifiP2pService"

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    invoke-direct {v0, p0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .line 383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->start()V

    .line 384
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$10102(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$10900()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_REINVOCATION:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$11700(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic access$11702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic access$12700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupRemoveReason:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object v0
.end method

.method static synthetic access$12702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupRemoveReason:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    return-object p1
.end method

.method static synthetic access$13000(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatedEntirely:Z

    return v0
.end method

.method static synthetic access$13002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatedEntirely:Z

    return p1
.end method

.method static synthetic access$14200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14300()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$14400(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$14500(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$14502(Landroid/net/wifi/p2p/WifiP2pService;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-byte p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic access$14504(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$14600(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1504()I
    .locals 1

    .prologue
    .line 115
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$15100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$15102(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$15200(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15202(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/ActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mActivityMgr:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$15400(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$15502(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 115
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$1904()I
    .locals 1

    .prologue
    .line 115
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2500(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGoFastConnectEnaled:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGoFastConnectEnaled:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGcFastConnectEnaled:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGcFastConnectEnaled:Z

    return p1
.end method

.method static synthetic access$3300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z

    return v0
.end method

.method static synthetic access$4602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z

    return p1
.end method

.method static synthetic access$4700(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z

    return v0
.end method

.method static synthetic access$4702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z

    return p1
.end method

.method static synthetic access$5500(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$5502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$5600(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$5602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$5700()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->TRY_REINVOCATION:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6402(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic access$7300()I
    .locals 1

    .prologue
    .line 115
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I

    return v0
.end method

.method static synthetic access$7302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    sput p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I

    return p0
.end method

.method static synthetic access$7304()I
    .locals 1

    .prologue
    .line 115
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I

    return v0
.end method

.method static synthetic access$7400(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mBeamPlusStart:Z

    return v0
.end method

.method static synthetic access$7402(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mBeamPlusStart:Z

    return p1
.end method

.method static synthetic access$8100(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGo:Z

    return v0
.end method

.method static synthetic access$8102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGo:Z

    return p1
.end method

.method static synthetic access$8300(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGc:Z

    return v0
.end method

.method static synthetic access$8302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGc:Z

    return p1
.end method

.method static synthetic access$9800()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 387
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 388
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    .line 389
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 413
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    :cond_0
    return-void
.end method

.method public fastConnectAsGo(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 5
    .parameter "info"

    .prologue
    .line 430
    :try_start_0
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fast Connect As GO in fastConnectIno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-static {}, Landroid/net/wifi/WifiNative;->getCredential()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, returnConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    invoke-static {}, Landroid/net/wifi/WifiNative;->getP2pDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDeviceAddress:Ljava/lang/String;

    .line 439
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDeviceAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 442
    new-instance v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-direct {v2, v1}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;-><init>(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 443
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    iget-object v3, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    .line 444
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    iget v3, p1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->venderId:I

    iput v3, v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->venderId:I

    .line 445
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v3, 0x2205a

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 447
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fast Connect As GO return fastConnectIno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fast Connect As GO Self fastConnectInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v1           #returnConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :goto_0
    return-object v1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiP2pService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fastConnectAsGo() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    invoke-static {}, Landroid/net/wifi/WifiNative;->getP2pDeviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 406
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 407
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    .line 408
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
