.class public Lcom/android/internal/telephony/cdma/ViaGpsProcess;
.super Landroid/os/Handler;
.source "ViaGpsProcess.java"


# static fields
.field private static final CLOSE_DATA_CONNECTION:I = 0x1

.field private static final DATACALL_CONNECTED:I = 0x1

.field private static final DATACALL_DISCONNECTED:I = 0x0

.field private static final DATACALL_OTHER:I = 0x3

.field private static final DATACALL_WIFI:I = 0x2

.field private static final EVENT_GPS_APPLY_WAP_SRV:I = 0x1

.field private static final EVENT_GPS_MPC_SET_COMPLETE:I = 0x2

.field public static final EXTRAL_VIA_SIMU_REQUEST_PARAM:Ljava/lang/String; = "com.android.internal.telephony.via-simu-request-param"

.field private static final GPS_FIX_RESULT:I = 0x3

.field private static final GPS_START:I = 0x2

.field private static final GPS_STOP:I = 0x4

.field private static final GPS_WAP_SERVICE_STATUS_NO_OPT:I = 0x0

.field private static final GPS_WAP_SERVICE_STATUS_STARTING:I = 0x1

.field private static final GPS_WAP_SERVICE_STATUS_STOPPING:I = 0x2

.field public static final INTENT_VIA_GPS_FIX_RESULT_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-fix-result-notify"

.field public static final INTENT_VIA_GPS_FIX_RESULT_NOTIFY_EXTRA:Ljava/lang/String; = "via-gps-fix-result"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-mpc-setting-notify"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY_IP_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-ip"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY_PORT_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-port"

.field public static final INTENT_VIA_GPS_MPC_SETTING_RESULT_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-mpc-setting-result-notify"

.field public static final INTENT_VIA_GPS_MPC_SETTING_RESULT_NOTIFY_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-result"

.field public static final INTENT_VIA_SIMU_REQUEST:Ljava/lang/String; = "com.android.internal.telephony.via-simu-request"

.field static final LOG_TAG:Ljava/lang/String; = "VIA_GPS"

.field private static final REQUEST_DATA_CONNECTION:I


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataCallState:I

.field private mGpsWapConnConnected:Z

.field private mGpsWapSrvStatus:I

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mSimId:I

.field private mWaitforDataConnecting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "context"
    .parameter "phone"
    .parameter "ci"

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 1
    .parameter "context"
    .parameter "phone"
    .parameter "ci"
    .parameter "simId"

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 280
    new-instance v0, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/ViaGpsProcess$1;-><init>(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 128
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 129
    iput p4, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mSimId:I

    .line 130
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/cdma/ViaGpsProcess;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapConnConnected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/cdma/ViaGpsProcess;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapConnConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mWaitforDataConnecting:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cdma/ViaGpsProcess;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mWaitforDataConnecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/cdma/ViaGpsProcess;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mSimId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->startGpsWapService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cdma/ViaGpsProcess;ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/ViaGpsProcess;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->viaGpsEventHandler([I)V

    return-void
.end method

.method private getDataConnectState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 6

    .prologue
    .line 218
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 219
    .local v0, default_state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIA] DataCall Connection apn default state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string/jumbo v4, "mms"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    .line 221
    .local v1, mms_state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIA] DataCall Connection apn MMS state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string/jumbo v4, "supl"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    .line 223
    .local v2, supl_state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VIA] DataCall Connection apn supl state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v3, :cond_1

    .line 227
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 233
    :goto_0
    return-object v3

    .line 228
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v3, :cond_3

    .line 231
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 233
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private onFixResultHandler(I)V
    .locals 4
    .parameter "gps_status"

    .prologue
    .line 203
    const-string v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VIA] onFixResultHandler, gps_status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.via-gps-fix-result-notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "via-gps-fix-result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method

.method private onGpsMpcSetComplete(Z)V
    .locals 4
    .parameter "success"

    .prologue
    .line 271
    const-string v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VIA] onGpsMpcSetComplete, success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.via-gps-mpc-setting-result-notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "via-gps-mpc-setting-result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method private requestAGPSTcpConnected(ILandroid/os/Message;)V
    .locals 3
    .parameter "state"
    .parameter "msg"

    .prologue
    .line 267
    const-string v0, "VIA_GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VIA] requestAGPSTcpConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    .line 269
    return-void
.end method

.method private startGpsWapService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 237
    const-string v2, "VIA_GPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VIA] startGpsWapService, mDataCallState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->getDataConnectState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 240
    .local v0, dataState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v0, :cond_0

    .line 242
    const-string v2, "VIA_GPS"

    const-string v3, "[VIA] data call is connecting, wait for connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mWaitforDataConnecting:Z

    .line 265
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v2, v0, :cond_1

    .line 248
    iget v2, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I

    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v3, "enableMMS"

    iget v4, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mSimId:I

    invoke-virtual {v2, v7, v3, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v1

    .line 256
    .local v1, result:I
    const-string v2, "VIA_GPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VIA] startGpsWapService() startUsingNetworkFeature(MMS)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez v1, :cond_2

    .line 258
    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    goto :goto_0

    .line 259
    :cond_2
    if-ne v1, v5, :cond_3

    .line 260
    iput v5, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I

    goto :goto_0

    .line 262
    :cond_3
    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private stopGpsWapService()V
    .locals 4

    .prologue
    .line 209
    const-string v0, "VIA_GPS"

    const-string v1, "[VIA] stopGpsWapService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    iget v3, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mSimId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    .line 216
    return-void
.end method

.method private viaGpsEventHandler([I)V
    .locals 4
    .parameter "data"

    .prologue
    .line 181
    const/4 v2, 0x0

    aget v0, p1, v2

    .line 182
    .local v0, event:I
    const/4 v2, 0x1

    aget v1, p1, v2

    .line 184
    .local v1, gps_status:I
    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    :pswitch_0
    return-void

    .line 186
    :pswitch_1
    const-string v2, "VIA_GPS"

    const-string v3, "[VIA] GPS Request data connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->startGpsWapService()V

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->stopGpsWapService()V

    goto :goto_0

    .line 195
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->onFixResultHandler(I)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 159
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 175
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 178
    :goto_0
    return-void

    .line 161
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 162
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 163
    .local v1, data:[I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->viaGpsEventHandler([I)V

    goto :goto_0

    .line 168
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #data:[I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 169
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 170
    .local v2, success:Z
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->onGpsMpcSetComplete(Z)V

    goto :goto_0

    .line 169
    .end local v2           #success:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 136
    iput v1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mDataCallState:I

    .line 137
    iput v1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapSrvStatus:I

    .line 138
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mGpsWapConnConnected:Z

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForViaGpsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "com.android.internal.telephony.via-gps-mpc-setting-notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "com.android.internal.telephony.via-simu-request"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForViaGpsEvent(Landroid/os/Handler;)V

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    return-void
.end method
