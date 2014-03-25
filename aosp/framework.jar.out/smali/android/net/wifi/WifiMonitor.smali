.class public Landroid/net/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiMonitor$MonitorThread;
    }
.end annotation


# static fields
.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final AUTHENTICATION_TIMEOUT_PREFIX_STR:Ljava/lang/String; = "Authentication with"

.field private static final AUTHENTICATION_TIMEOUT_STR:Ljava/lang/String; = "timed out"

.field private static final BASE:I = 0x24000

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTED_STR:Ljava/lang/String; = "CONNECTED"

.field private static final DISCONNECTED:I = 0x2

.field private static final DISCONNECTED_STR:Ljava/lang/String; = "DISCONNECTED"

.field public static final DRIVER_HUNG_EVENT:I = 0x2400c

.field private static final DRIVER_STATE:I = 0x7

.field private static final DRIVER_STATE_STR:Ljava/lang/String; = "DRIVER-STATE"

.field private static final EAP_AUTH_FAILURE_STR:Ljava/lang/String; = "EAP authentication failed"

.field private static final EAP_FAILURE:I = 0x8

.field private static final EAP_FAILURE_STR:Ljava/lang/String; = "EAP-FAILURE"

.field private static final EAP_FAST_NEW_PAC_UPDATED:Ljava/lang/String; = "EAP-FAST-NEW-PAC-UPDATED"

#the value of this static final field might be set in the static constructor
.field private static final EVENT_PREFIX_LEN_STR:I = 0x0

.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field private static final HOST_AP_EVENT_PREFIX_STR:Ljava/lang/String; = "AP"

.field private static final LINK_SPEED:I = 0x5

.field private static final LINK_SPEED_STR:Ljava/lang/String; = "LINK-SPEED"

.field private static final MAX_RECV_ERRORS:I = 0xa

.field private static final MONITOR_SOCKET_CLOSED_STR:Ljava/lang/String; = "connection closed"

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final NEW_PAC_UPDATED_EVENT:I = 0x24034

.field private static final NO_CERTIFICATION:I = 0x9

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field private static final P2P_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-DEVICE-FOUND"

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field private static final P2P_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field private static final P2P_FIND_STOPPED_STR:Ljava/lang/String; = "P2P-FIND-STOPPED"

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field private static final P2P_GO_NEG_FAILURE_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final P2P_GO_NEG_REQUEST_STR:Ljava/lang/String; = "P2P-GO-NEG-REQUEST"

.field private static final P2P_GO_NEG_SUCCESS_STR:Ljava/lang/String; = "P2P-GO-NEG-SUCCESS"

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field private static final P2P_GROUP_FORMATION_FAILURE_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field private static final P2P_GROUP_FORMATION_SUCCESS_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-SUCCESS"

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field private static final P2P_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field private static final P2P_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field private static final P2P_INVITATION_RECEIVED_STR:Ljava/lang/String; = "P2P-INVITATION-RECEIVED"

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field private static final P2P_INVITATION_RESULT_STR:Ljava/lang/String; = "P2P-INVITATION-RESULT"

.field public static final P2P_PEER_DISCONNECT_EVENT:I = 0x24028

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field private static final P2P_PROV_DISC_ENTER_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-ENTER-PIN"

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field private static final P2P_PROV_DISC_FAILURE_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field private static final P2P_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-REQ"

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field private static final P2P_PROV_DISC_PBC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-RESP"

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field private static final P2P_PROV_DISC_SHOW_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-SHOW-PIN"

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field private static final P2P_SERV_DISC_RESP_STR:Ljava/lang/String; = "P2P-SERV-DISC-RESP"

.field private static final PASSWORD_MAY_BE_INCORRECT_STR:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field private static final SCAN_RESULTS:I = 0x4

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field private static final SCAN_RESULTS_STR:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final STATE_CHANGE:I = 0x3

.field private static final STATE_CHANGE_STR:Ljava/lang/String; = "STATE-CHANGE"

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TERMINATING:I = 0x6

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final UNKNOWN:I = 0xa

.field public static final WAPI_NO_CERTIFICATION_EVENT:I = 0x24033

.field private static final WAPI_NO_CERTIFICATION_STRING:Ljava/lang/String; = "EAP-NO-CERTIFICATION"

.field public static final WHOLE_CHIP_RESET_FAIL_EVENT:I = 0x24035

.field private static final WHOLE_CHIP_RESET_FAIL_STRING:Ljava/lang/String; = "WHOLE-CHIP-RESET-FAIL"

.field private static final WPA_EVENT_PREFIX_STR:Ljava/lang/String; = "WPA:"

.field private static final WPA_RECV_ERROR_STR:Ljava/lang/String; = "recv error"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field private static final WPS_FAIL_PATTERN:Ljava/lang/String; = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

.field private static final WPS_FAIL_STR:Ljava/lang/String; = "WPS-FAIL"

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field private static final WPS_OVERLAP_STR:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field private static final WPS_SUCCESS_STR:Ljava/lang/String; = "WPS-SUCCESS"

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b

.field private static final WPS_TIMEOUT_STR:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCurrentThread:Landroid/net/wifi/WifiMonitor$MonitorThread;

.field private mRecvErrors:I

.field private final mStateMachine:Lcom/android/internal/util/StateMachine;

.field private mStopped:Z

.field private final mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    .line 162
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V
    .locals 2
    .parameter "wifiStateMachine"
    .parameter "wifiNative"

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput v1, p0, Landroid/net/wifi/WifiMonitor;->mRecvErrors:I

    .line 369
    iput-boolean v1, p0, Landroid/net/wifi/WifiMonitor;->mStopped:Z

    .line 371
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor;->mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 374
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 375
    iput-object p2, p0, Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 376
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/net/wifi/WifiMonitor;->mStopped:Z

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 46
    sget v0, Landroid/net/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    return v0
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Landroid/net/wifi/WifiMonitor;->mRecvErrors:I

    return p1
.end method

.method static synthetic access$404(Landroid/net/wifi/WifiMonitor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Landroid/net/wifi/WifiMonitor;->mRecvErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiMonitor;->mRecvErrors:I

    return v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Landroid/net/wifi/WifiMonitor;->nap(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 5
    .parameter "newState"
    .parameter "data"

    .prologue
    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, BSSID:Ljava/lang/String;
    const/4 v3, -0x1

    .line 804
    .local v3, networkId:I
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    .line 805
    sget-object v4, Landroid/net/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 806
    .local v2, match:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 817
    .end local v2           #match:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Landroid/net/wifi/WifiMonitor;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    .line 818
    return-void

    .line 809
    .restart local v2       #match:Ljava/util/regex/Matcher;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 811
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 812
    :catch_0
    move-exception v1

    .line 813
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private static nap(I)V
    .locals 2
    .parameter "secs"

    .prologue
    .line 862
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_0
    return-void

    .line 863
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 4
    .parameter "newState"
    .parameter "BSSID"
    .parameter "netId"

    .prologue
    const/4 v3, 0x0

    .line 831
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 832
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24003

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 834
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 840
    :goto_0
    return-void

    .line 836
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24004

    invoke-virtual {v1, v2, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 838
    .restart local v0       #m:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 4
    .parameter "networkId"
    .parameter "wifiSsid"
    .parameter "BSSID"
    .parameter "newState"

    .prologue
    .line 852
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24006

    new-instance v3, Landroid/net/wifi/StateChangeResult;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/net/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 854
    return-void
.end method

.method public startMonitoring()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiMonitor;->mStopped:Z

    .line 380
    new-instance v0, Landroid/net/wifi/WifiMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;-><init>(Landroid/net/wifi/WifiMonitor;)V

    iput-object v0, p0, Landroid/net/wifi/WifiMonitor;->mCurrentThread:Landroid/net/wifi/WifiMonitor$MonitorThread;

    .line 381
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor;->mCurrentThread:Landroid/net/wifi/WifiMonitor$MonitorThread;

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->start()V

    .line 382
    return-void
.end method

.method public stopMonitoring()V
    .locals 5

    .prologue
    .line 868
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mCurrentThread:Landroid/net/wifi/WifiMonitor$MonitorThread;

    if-eqz v1, :cond_1

    .line 869
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiMonitor;->mStopped:Z

    .line 870
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 871
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMonitoring, closeSupplicantConnection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiMonitor;->mCurrentThread:Landroid/net/wifi/WifiMonitor$MonitorThread;

    invoke-virtual {v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiMonitor;->mCurrentThread:Landroid/net/wifi/WifiMonitor$MonitorThread;

    invoke-virtual {v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 878
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor;->mCurrentThread:Landroid/net/wifi/WifiMonitor$MonitorThread;

    invoke-virtual {v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiMonitor;->mCurrentThread:Landroid/net/wifi/WifiMonitor$MonitorThread;

    .line 886
    :goto_2
    return-void

    .line 875
    :cond_0
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "stopMonitoring, it\'s connecting to supplicant!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, ignore:Ljava/lang/InterruptedException;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 884
    .end local v0           #ignore:Ljava/lang/InterruptedException;
    :cond_1
    const-string v1, "WifiMonitor"

    const-string/jumbo v2, "stopMonitoring, mCurrentThread is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
