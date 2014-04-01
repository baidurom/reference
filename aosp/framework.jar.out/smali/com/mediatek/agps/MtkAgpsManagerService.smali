.class public Lcom/mediatek/agps/MtkAgpsManagerService;
.super Lcom/mediatek/agps/IMtkAgpsManager$Stub;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;,
        Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;,
        Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
    }
.end annotation


# static fields
.field public static final AGPS_CMD_CELLINFO:I = 0xe

.field public static final AGPS_CMD_CNT:I = 0x5

.field public static final AGPS_CMD_CONFIG:I = 0x3

.field public static final AGPS_CMD_DISABLE:I = 0x2

.field public static final AGPS_CMD_DISABLE_NILR:I = 0x28

.field public static final AGPS_CMD_EMERGENCY_CALL_DIALED:I = 0x15

.field public static final AGPS_CMD_EMERGENCY_CALL_ENDED:I = 0x16

.field public static final AGPS_CMD_ENABLE:I = 0x1

.field public static final AGPS_CMD_ENABLE_NILR:I = 0x29

.field public static final AGPS_CMD_EXTRA:I = 0x2b

.field public static final AGPS_CMD_GPS_CLOSE:I = 0x18

.field public static final AGPS_CMD_GPS_OPEN:I = 0x17

.field public static final AGPS_CMD_INFORM:I = 0xa

.field public static final AGPS_CMD_LOCATION_RESULT_UPDATE:I = 0x21

.field public static final AGPS_CMD_LOG_SUPL_TO_FILE_DISABLE:I = 0x1a

.field public static final AGPS_CMD_LOG_SUPL_TO_FILE_ENABLE:I = 0x19

.field public static final AGPS_CMD_LOG_TO_FILE_DISABLE:I = 0x11

.field public static final AGPS_CMD_LOG_TO_FILE_ENABLE:I = 0x10

.field public static final AGPS_CMD_LOG_TO_UART_DISABLE:I = 0x13

.field public static final AGPS_CMD_LOG_TO_UART_ENABLE:I = 0x12

.field public static final AGPS_CMD_NI_ENABLE:I = 0x14

.field public static final AGPS_CMD_NI_REQ:I = 0xf

.field public static final AGPS_CMD_NW_IPADDR_UPDATE:I = 0x22

.field public static final AGPS_CMD_NW_SIM1_ROAMING_STATE_UPDATE:I = 0x23

.field public static final AGPS_CMD_NW_SIM2_ROAMING_STATE_UPDATE:I = 0x24

.field public static final AGPS_CMD_RESET_AGPSD:I = 0x2a

.field public static final AGPS_CMD_RESPONSE:I = 0x4

.field public static final AGPS_CMD_SIM1_DATA_CONN_UPDATE:I = 0x25

.field public static final AGPS_CMD_SIM2_DATA_CONN_UPDATE:I = 0x26

.field public static final AGPS_CMD_SIMA:I = 0xb

.field public static final AGPS_CMD_SIMB:I = 0xc

.field public static final AGPS_CMD_SIM_1_CALL_STATE_UPDATE:I = 0x1d

.field public static final AGPS_CMD_SIM_1_NW_TYPE_UPDATE:I = 0x1f

.field public static final AGPS_CMD_SIM_1_UPDATE:I = 0x1b

.field public static final AGPS_CMD_SIM_2_CALL_STATE_UPDATE:I = 0x1e

.field public static final AGPS_CMD_SIM_2_NW_TYPE_UPDATE:I = 0x20

.field public static final AGPS_CMD_SIM_2_UPDATE:I = 0x1c

.field public static final AGPS_CMD_STOP_SI:I = 0xd

.field public static final AGPS_CMD_UNKNOWN:I = 0x0

.field public static final AGPS_CMD_WIFI_DATA_CONN_UPDATE:I = 0x27

.field public static final BUF_STREAM_SIZE:I = 0x200

.field private static final CONTENT_MIME_TYPE:Ljava/lang/String; = "application/vnd.omaloc-supl-init"

.field public static final DUAL_SIM:I = 0x3

.field private static final EMERGENCY_CALL_ACTION:Ljava/lang/String; = "android.location.agps.EMERGENCY_CALL"

.field private static final EXTRA_GPSSTATUS:Ljava/lang/String; = "enabled"

.field public static final GPS_CLOSE:I = 0x8ae

.field public static final GPS_CLOSE_TEST:I = 0x115c

.field public static final GPS_OPEN:I = 0x457

.field public static final GPS_OPEN_TEST:I = 0xd05

.field private static final GPS_POS_FIRST_FIXED:Ljava/lang/String; = "android.location.gps.GPS_POS_FIRST_FIXED"

.field public static final GPS_RESET:I = 0x15b3

.field private static final GPS_STATUS_CHANGED:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final MAX_RECONNECT:I = 0xa

.field public static final NETWORK_TYPE_2G:I = 0x0

.field public static final NETWORK_TYPE_3G:I = 0x1

.field public static final NO_SIM:I = 0x0

.field public static final SIM_NOT_READY:I = 0x0

.field public static final SIM_READY:I = 0x1

.field public static final SINGLE_SIM_SIM1:I = 0x1

.field public static final SINGLE_SIM_SIM2:I = 0x2

.field private static final SMS_DATA_RECEIVED:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field private static final SOCKET_NAME_AGPS:Ljava/lang/String; = "agpsd"

.field private static final STUFFING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MtkAgps"

.field private static final UNKNOWN_VALUE:Ljava/lang/String; = "UNKNOWN_VALUE"

.field private static final WAP_DATA_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field private static final X_APPLICATION_ID_FIELD_VALUE:Ljava/lang/String; = "x-oma-application:ulp.ua"

.field private static final X_WAP_APPLICATION_ID_KEY:Ljava/lang/String; = "X-Wap-Application-Id"


# instance fields
.field private final DATA_CONNECTED:I

.field private final DATA_DISCONNECTED:I

.field private final SMS_MAX_LENGTH:I

.field private gpsStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mCellStateListener:Landroid/telephony/PhoneStateListener;

.field private mCellStateListener2:Landroid/telephony/PhoneStateListener;

.field private mCellloc:Landroid/telephony/gsm/GsmCellLocation;

.field private mClientName:Ljava/lang/String;

.field private mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

.field private mContext:Landroid/content/Context;

.field private mDataConnSim1:I

.field private mDataConnSim2:I

.field private mDataConnWifi:I

.field private mGpsListener:Landroid/location/GpsStatus$Listener;

.field private mGpsThread:Ljava/lang/Thread;

.field private mHandler:Landroid/os/Handler;

.field private mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

.field private mIpAddr:Ljava/lang/String;

.field private mIsBootCompleted:Z

.field private mIsGPSStart:Z

.field private mIsGemini:Z

.field private mIsNetworkRoamingSim1:I

.field private mIsNetworkRoamingSim2:I

.field public mIsSocketOK:Z

.field private mLocListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

.field private mNetworkTypeSim1:I

.field private mNetworkTypeSim2:I

.field private mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

.field private mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

.field private mRequestId:Ljava/lang/String;

.field private mSim1Status:I

.field private mSim2Status:I

.field private mSmsReceiver:Landroid/content/BroadcastReceiver;

.field private mStatus:Z

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mTelephonyServicer:Lcom/android/internal/telephony/ITelephony;

.field private mWappushReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiMgr:Landroid/net/wifi/WifiManager;

.field private mlooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 18
    .parameter "context"
    .parameter "isGemini"
    .parameter "isAgpsSupport"
    .parameter "isGpsSupport"

    .prologue
    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/agps/IMtkAgpsManager$Stub;-><init>()V

    .line 173
    const/16 v2, 0x100

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->SMS_MAX_LENGTH:I

    .line 175
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->DATA_DISCONNECTED:I

    .line 176
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->DATA_CONNECTED:I

    .line 199
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    .line 201
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z

    .line 202
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    .line 203
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mRequestId:Ljava/lang/String;

    .line 204
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mClientName:Ljava/lang/String;

    .line 206
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim1:I

    .line 207
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim2:I

    .line 208
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSim1Status:I

    .line 209
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSim2Status:I

    .line 210
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim1:I

    .line 211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim2:I

    .line 212
    const-string v2, "127.0.0.0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;

    .line 214
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim1:I

    .line 215
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim2:I

    .line 216
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I

    .line 221
    new-instance v2, Lcom/mediatek/agps/MtkAgpsProfileManager;

    invoke-direct {v2}, Lcom/mediatek/agps/MtkAgpsProfileManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

    .line 235
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z

    .line 261
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    .line 264
    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$1;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocListener:Landroid/location/LocationListener;

    .line 277
    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$2;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 334
    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$3;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsThread:Ljava/lang/Thread;

    .line 563
    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$4;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->gpsStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 659
    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$5;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    .line 722
    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$6;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mWappushReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******** MtkAgpsManagerService isGemini="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isAgpsSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ver=2.01 ********"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 354
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    .line 356
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 358
    new-instance v2, Lcom/mediatek/agps/MtkAgpsProfile;

    invoke-direct {v2}, Lcom/mediatek/agps/MtkAgpsProfile;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->initAgpsProfile(Lcom/mediatek/agps/MtkAgpsProfile;)V

    .line 361
    new-instance v2, Lcom/mediatek/agps/MtkAgpsConfig;

    invoke-direct {v2}, Lcom/mediatek/agps/MtkAgpsConfig;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->initAgpsConfig(Lcom/mediatek/agps/MtkAgpsConfig;)V

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProfileManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 366
    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const-string v3, "agpsd"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->connectSocket()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->start()V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->setConfig(Lcom/mediatek/agps/MtkAgpsConfig;)V

    .line 370
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    .line 375
    :goto_0
    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v15}, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;DDDFFFJI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 380
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    if-eqz v2, :cond_2

    .line 381
    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellStateListener:Landroid/telephony/PhoneStateListener;

    .line 382
    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellStateListener2:Landroid/telephony/PhoneStateListener;

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x71

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellStateListener2:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x71

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 396
    :goto_1
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    .local v17, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v2, "android.intent.category.default"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 399
    const-string/jumbo v2, "sms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    new-instance v17, Landroid/content/IntentFilter;

    .end local v17           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 403
    .restart local v17       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v2, "android.intent.category.default"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 406
    :try_start_0
    const-string v2, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mWappushReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 413
    new-instance v17, Landroid/content/IntentFilter;

    .end local v17           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    .restart local v17       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string v2, "android.location.agps.EMERGENCY_CALL"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v2, "android.location.gps.GPS_POS_FIRST_FIXED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v2, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->gpsStatusReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    new-instance v17, Landroid/content/IntentFilter;

    .end local v17           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .line 422
    .restart local v17       #intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v2, "com.mediatek.agps.NOTIFY_ACTION"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v2, "com.mediatek.agps.VERIFY_ACTION"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v2, "com.mediatek.agps.ERROR_ACTION"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v2, "com.mediatek.agps.toast"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->gpsStatusReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 432
    .end local v17           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 372
    :cond_1
    const-string v2, "ERR: connectSocket fail --> no MtkAgpsService!!!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :cond_2
    new-instance v2, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$CellStateListener;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellStateListener:Landroid/telephony/PhoneStateListener;

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x71

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_1

    .line 407
    .restart local v17       #intentFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v16

    .line 408
    .local v16, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ERR: Unexpected Content-type WapPush message for AGPS"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private GpsState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 972
    if-nez p1, :cond_0

    .line 973
    const-string v0, "GPS Stop"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 974
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    .line 979
    :goto_0
    return-void

    .line 976
    :cond_0
    const-string v0, "GPS start"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 977
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/agps/MtkAgpsManagerService;Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->updateLocationResult(Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mWifiMgr:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mWifiMgr:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/agps/MtkAgpsManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 115
    invoke-direct/range {p0 .. p6}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;[B)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->niRequest([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/agps/MtkAgpsManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim2:I

    return v0
.end method

.method static synthetic access$2102(Lcom/mediatek/agps/MtkAgpsManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim2:I

    return p1
.end method

.method static synthetic access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim1:I

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/agps/MtkAgpsManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim1:I

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim2:I

    return v0
.end method

.method static synthetic access$2302(Lcom/mediatek/agps/MtkAgpsManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim2:I

    return p1
.end method

.method static synthetic access$2400(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim1:I

    return v0
.end method

.method static synthetic access$2402(Lcom/mediatek/agps/MtkAgpsManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim1:I

    return p1
.end method

.method static synthetic access$2502(Lcom/mediatek/agps/MtkAgpsManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSim2Status:I

    return p1
.end method

.method static synthetic access$2600(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSim1Status:I

    return v0
.end method

.method static synthetic access$2602(Lcom/mediatek/agps/MtkAgpsManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSim1Status:I

    return p1
.end method

.method static synthetic access$2700(Lcom/mediatek/agps/MtkAgpsManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim2:I

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/agps/MtkAgpsManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim2:I

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim1:I

    return v0
.end method

.method static synthetic access$2902(Lcom/mediatek/agps/MtkAgpsManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim1:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/agps/MtkAgpsManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->GpsState(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->agpsUpdateCellInfo()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/mediatek/agps/MtkAgpsManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendNotify(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mRequestId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mClientName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mClientName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/mediatek/agps/MtkAgpsManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendVerify(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/mediatek/agps/MtkAgpsManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/mediatek/agps/MtkAgpsManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendError(II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->updateNetworkAndSIM()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/agps/MtkAgpsManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->handleNiDialog(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/agps/MtkAgpsManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->emergencyCallState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationResult:Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;

    return-object v0
.end method

.method private agpsUpdateCellInfo()I
    .locals 12

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v1, -0x1

    .line 813
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getSimStatus()I

    move-result v10

    .line 814
    .local v10, simStatus:I
    const/4 v8, -0x1

    .line 815
    .local v8, currPhone:I
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;

    .line 817
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_9

    .line 818
    if-eqz v10, :cond_0

    .line 819
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    if-eqz v0, :cond_1

    if-ne v10, v4, :cond_1

    .line 820
    const/4 v8, 0x0

    .line 821
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v11}, Landroid/telephony/TelephonyManager;->getCellLocationGemini(I)Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;

    .line 842
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_8

    .line 849
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    if-eqz v0, :cond_6

    if-eq v8, v1, :cond_6

    .line 850
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v8}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v6

    .line 851
    .local v6, imsi:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v7

    .line 856
    .local v7, mccMnc:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 857
    .local v2, lac:I
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 863
    .local v3, cid:I
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MccMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Lac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 866
    const/16 v1, 0xe

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 879
    .end local v2           #lac:I
    .end local v3           #cid:I
    .end local v6           #imsi:Ljava/lang/String;
    .end local v7           #mccMnc:Ljava/lang/String;
    :goto_2
    return v0

    .line 822
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    if-eqz v0, :cond_2

    if-ne v10, v5, :cond_2

    .line 823
    const/4 v8, 0x1

    .line 824
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getCellLocationGemini(I)Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;

    goto :goto_0

    .line 825
    :cond_2
    const/4 v0, 0x3

    if-ne v10, v0, :cond_5

    .line 826
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v11}, Landroid/telephony/TelephonyManager;->getDataStateGemini(I)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 827
    const/4 v8, 0x0

    .line 828
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v11}, Landroid/telephony/TelephonyManager;->getCellLocationGemini(I)Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;

    goto/16 :goto_0

    .line 829
    :cond_3
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getDataStateGemini(I)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 830
    const/4 v8, 0x1

    .line 831
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getCellLocationGemini(I)Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;

    goto/16 :goto_0

    .line 833
    :cond_4
    const/4 v8, 0x0

    .line 834
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v11}, Landroid/telephony/TelephonyManager;->getCellLocationGemini(I)Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;

    goto/16 :goto_0

    .line 836
    :cond_5
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    if-nez v0, :cond_0

    if-ne v10, v4, :cond_0

    .line 837
    const/4 v8, -0x1

    .line 838
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;

    goto/16 :goto_0

    .line 853
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 854
    .restart local v6       #imsi:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .restart local v7       #mccMnc:Ljava/lang/String;
    goto/16 :goto_1

    .line 858
    .end local v6           #imsi:Ljava/lang/String;
    .end local v7           #mccMnc:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 859
    .local v9, e:Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v0, v1

    .line 860
    goto :goto_2

    .line 870
    .end local v9           #e:Ljava/lang/NullPointerException;
    .restart local v2       #lac:I
    .restart local v3       #cid:I
    .restart local v6       #imsi:Ljava/lang/String;
    .restart local v7       #mccMnc:Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: agpsUpdateCellInfo: IMSI="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mccMnc="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    move v0, v1

    .line 871
    goto/16 :goto_2

    .line 874
    .end local v2           #lac:I
    .end local v3           #cid:I
    .end local v6           #imsi:Ljava/lang/String;
    .end local v7           #mccMnc:Ljava/lang/String;
    :cond_8
    const-string/jumbo v0, "no SIM card"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    move v0, v1

    .line 875
    goto/16 :goto_2

    .line 878
    :cond_9
    const-string v0, "ERR: agpsUpdateCellInfo() fail : Retrieve telephonyManager is null!"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    move v0, v1

    .line 879
    goto/16 :goto_2
.end method

.method private dumpAgpsConfig(Lcom/mediatek/agps/MtkAgpsConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpAgpsConfig mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/agps/MtkAgpsConfig;->siMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0:MA 1:MB 2:Standalone) molr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/agps/MtkAgpsConfig;->molrPositionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0:UP 1:CP)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/agps/MtkAgpsConfig;->niIot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1252
    return-void
.end method

.method private emergencyCallState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, command:I
    if-nez p1, :cond_0

    .line 959
    const/16 v0, 0x16

    .line 960
    const-string v1, "Emergency Call Ended"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 968
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    .line 969
    :goto_1
    return-void

    .line 961
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 962
    const/16 v0, 0x15

    .line 963
    const-string v1, "Emergency Call Dialed"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 965
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Unknown Emergency Call State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAgpsMmiString(II)Ljava/lang/String;
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 485
    sparse-switch p1, :sswitch_data_0

    .line 557
    :goto_0
    const-string v0, "A-GPS Default String"

    :goto_1
    return-object v0

    .line 487
    :sswitch_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 489
    :pswitch_0
    const-string v0, "A-GPS Default String"

    goto :goto_1

    .line 491
    :pswitch_1
    const-string v0, "SI Request Received"

    goto :goto_1

    .line 493
    :pswitch_2
    const-string v0, "Position Fixed"

    goto :goto_1

    .line 499
    :sswitch_1
    const-string v0, "A-GPS Default String"

    goto :goto_1

    .line 501
    :sswitch_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 503
    :pswitch_3
    const-string v0, "A-GPS Default String"

    goto :goto_1

    .line 505
    :pswitch_4
    const-string v0, "Location Request Notification"

    goto :goto_1

    .line 507
    :pswitch_5
    const-string v0, "Location Request (Allow if no Answer)"

    goto :goto_1

    .line 509
    :pswitch_6
    const-string v0, "Location Request (Deny if no Answer)"

    goto :goto_1

    .line 511
    :pswitch_7
    const-string v0, "Location Request (Privacy)"

    goto :goto_1

    .line 517
    :sswitch_3
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 519
    :pswitch_8
    const-string v0, "A-GPS Default String"

    goto :goto_1

    .line 521
    :pswitch_9
    const-string v0, "Network Create Fail"

    goto :goto_1

    .line 523
    :pswitch_a
    const-string v0, "Incorrect PUSH content"

    goto :goto_1

    .line 525
    :pswitch_b
    const-string v0, "Unsupported Operation"

    goto :goto_1

    .line 527
    :pswitch_c
    const-string v0, "Requeset Not Accepted"

    goto :goto_1

    .line 529
    :pswitch_d
    const-string v0, "No Resourcce to Handle new process"

    goto :goto_1

    .line 531
    :pswitch_e
    const-string v0, "Network Connection is Down"

    goto :goto_1

    .line 533
    :pswitch_f
    const-string v0, "Remote Side Abort the Session (receive SUPL END)"

    goto :goto_1

    .line 535
    :pswitch_10
    const-string v0, "Expect Message not Back During a Specific Time Interval"

    goto :goto_1

    .line 537
    :pswitch_11
    const-string v0, "Receive Incorrect Message Content"

    goto :goto_1

    .line 539
    :pswitch_12
    const-string v0, "User agree on confirmation"

    goto :goto_1

    .line 541
    :pswitch_13
    const-string v0, "User deny on confirmation"

    goto :goto_1

    .line 543
    :pswitch_14
    const-string v0, "Only for NO Position"

    goto :goto_1

    .line 545
    :pswitch_15
    const-string v0, "TLS authentication fail"

    goto :goto_1

    .line 547
    :pswitch_16
    const-string v0, "Waiting verification timeout"

    goto :goto_1

    .line 549
    :pswitch_17
    const-string v0, "Modem reset happen"

    goto :goto_1

    .line 485
    nop

    :sswitch_data_0
    .sparse-switch
        0x457 -> :sswitch_0
        0x8ae -> :sswitch_1
        0xd05 -> :sswitch_2
        0x115c -> :sswitch_3
    .end sparse-switch

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 501
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 517
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method private getCallingProcessInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AppName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProcessName(I)Ljava/lang/String;
    .locals 6
    .parameter "pid"

    .prologue
    .line 1805
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1806
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1807
    .local v3, procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 1808
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1809
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1810
    .local v2, procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    .line 1811
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1814
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2           #procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getSimStatus()I
    .locals 6

    .prologue
    .line 885
    const/4 v1, 0x0

    .line 886
    .local v1, ret:I
    const/4 v0, 0x5

    .line 887
    .local v0, isReady:I
    iget-boolean v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    if-eqz v4, :cond_3

    .line 888
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v2

    .line 889
    .local v2, sim1:I
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    .line 891
    .local v3, sim2:I
    if-ne v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    .line 892
    const/4 v1, 0x1

    .line 908
    .end local v3           #sim2:I
    :goto_0
    return v1

    .line 893
    .restart local v3       #sim2:I
    :cond_0
    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_1

    .line 894
    const/4 v1, 0x2

    goto :goto_0

    .line 895
    :cond_1
    if-ne v0, v2, :cond_2

    if-ne v0, v3, :cond_2

    .line 896
    const/4 v1, 0x3

    goto :goto_0

    .line 898
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 901
    .end local v2           #sim1:I
    .end local v3           #sim2:I
    :cond_3
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 902
    .restart local v2       #sim1:I
    if-ne v0, v2, :cond_4

    .line 903
    const/4 v1, 0x1

    goto :goto_0

    .line 905
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleNiDialog(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 441
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, action:Ljava/lang/String;
    const/4 v8, -0x1

    .line 443
    .local v8, type:I
    const/4 v3, -0x1

    .line 444
    .local v3, id:I
    const/4 v7, 0x0

    .line 445
    .local v7, strMsg:Ljava/lang/String;
    const-string v6, "UNKNOWN_VALUE"

    .line 446
    .local v6, requestId:Ljava/lang/String;
    const-string v2, "UNKNOWN_VALUE"

    .line 447
    .local v2, clientName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 449
    .local v1, bundle:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 450
    const-string v9, "ERR: Bundle is null"

    invoke-direct {p0, v9}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const-string/jumbo v9, "msg_type"

    const/16 v10, 0x115c

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 455
    const-string/jumbo v9, "msg_id"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 456
    const-string/jumbo v9, "request_id"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 457
    const-string v9, "client_name"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-direct {p0, v8, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->getAgpsMmiString(II)Ljava/lang/String;

    move-result-object v7

    .line 460
    const-string v9, "com.mediatek.agps.ERROR_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 461
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ERR: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/agps/MtkAgpsManagerService;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_2
    const/16 v9, 0x457

    if-ne v8, v9, :cond_3

    .line 464
    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget v9, v9, Lcom/mediatek/agps/MtkAgpsConfig;->emEnable:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 465
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EM Notify: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/agps/MtkAgpsManagerService;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 470
    .local v4, mbundle:Landroid/os/Bundle;
    const-string/jumbo v9, "msg_type"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    const-string/jumbo v9, "msg_id"

    invoke-virtual {v4, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 472
    const-string/jumbo v9, "request_id"

    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v9, "client_name"

    invoke-virtual {v4, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 476
    .local v5, mintent:Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 477
    const/high16 v9, 0x3000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 478
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.lbs.AgpsNotifyDialog"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 481
    iget-object v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private initAgpsConfig(Lcom/mediatek/agps/MtkAgpsConfig;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1255
    iput v1, p1, Lcom/mediatek/agps/MtkAgpsConfig;->siMode:I

    .line 1256
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->setId:I

    .line 1257
    const/16 v0, 0x16

    iput v0, p1, Lcom/mediatek/agps/MtkAgpsConfig;->qopHacc:I

    .line 1258
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->qopVacc:I

    .line 1259
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->qopAge:I

    .line 1260
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->qopDelay:I

    .line 1261
    iput v3, p1, Lcom/mediatek/agps/MtkAgpsConfig;->notifyTimeout:I

    .line 1262
    iput v3, p1, Lcom/mediatek/agps/MtkAgpsConfig;->verifyTimeout:I

    .line 1263
    iput v1, p1, Lcom/mediatek/agps/MtkAgpsConfig;->niEnable:I

    .line 1264
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->molrPositionType:I

    .line 1265
    const-string v0, "0123456789*#+"

    iput-object v0, p1, Lcom/mediatek/agps/MtkAgpsConfig;->extAddress:Ljava/lang/String;

    .line 1266
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->extAddressEnable:I

    .line 1267
    const-string v0, "0123456789*#+"

    iput-object v0, p1, Lcom/mediatek/agps/MtkAgpsConfig;->mlcNum:Ljava/lang/String;

    .line 1268
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->mlcNumEnable:I

    .line 1269
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->suplCapabilityType:I

    .line 1270
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->customPolicyEnable:I

    .line 1271
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->customPolicyType:I

    .line 1272
    iput v1, p1, Lcom/mediatek/agps/MtkAgpsConfig;->gpsAgentSiReq:I

    .line 1273
    iput v1, p1, Lcom/mediatek/agps/MtkAgpsConfig;->gpsAgentEnable:I

    .line 1274
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->molrType:I

    .line 1275
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->log2file:I

    .line 1276
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->supl2file:I

    .line 1277
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->log2uart:I

    .line 1278
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->niIot:I

    .line 1279
    const/16 v0, 0xa

    iput v0, p1, Lcom/mediatek/agps/MtkAgpsConfig;->logFileMaxSize:I

    .line 1280
    iput v1, p1, Lcom/mediatek/agps/MtkAgpsConfig;->simIdPref:I

    .line 1281
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->roaming:I

    .line 1282
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->caEnable:I

    .line 1283
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->emEnable:I

    .line 1284
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->niTimer:I

    .line 1285
    iput v2, p1, Lcom/mediatek/agps/MtkAgpsConfig;->eCidEnable:I

    .line 1287
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/agps/MtkAgpsProfileManager;->getCpPreferSim()I

    move-result v0

    iput v0, p1, Lcom/mediatek/agps/MtkAgpsConfig;->simIdPref:I

    .line 1288
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/agps/MtkAgpsProfileManager;->getNiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p1, Lcom/mediatek/agps/MtkAgpsConfig;->niEnable:I

    .line 1289
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/agps/MtkAgpsProfileManager;->getRoamingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p1, Lcom/mediatek/agps/MtkAgpsConfig;->roaming:I

    .line 1290
    return-void

    :cond_0
    move v0, v2

    .line 1288
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1289
    goto :goto_1
.end method

.method private initAgpsProfile(Lcom/mediatek/agps/MtkAgpsProfile;)V
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v3, 0x0

    .line 1293
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

    const-string v2, "/etc/agps_profiles_conf.xml"

    invoke-virtual {v1, v2}, Lcom/mediatek/agps/MtkAgpsProfileManager;->updateAgpsProfile(Ljava/lang/String;)V

    .line 1294
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsProfileManager;->getDefaultProfile()Lcom/mediatek/agps/MtkAgpsProfile;

    move-result-object v0

    .line 1295
    .local v0, p:Lcom/mediatek/agps/MtkAgpsProfile;
    if-nez p1, :cond_0

    .line 1296
    const-string/jumbo v1, "using default Google profile"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1297
    const-string/jumbo v1, "supl.google.com"

    iput-object v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 1298
    const-string v1, "GOOGLE"

    iput-object v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    .line 1299
    const/16 v1, 0x1c6b

    iput v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->port:I

    .line 1300
    const/4 v1, 0x1

    iput v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->tls:I

    .line 1301
    const-string v1, "GOOGLE"

    iput-object v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    .line 1302
    const-string v1, "GOOGLE_SPL_Name"

    iput-object v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    .line 1303
    const/4 v1, 0x0

    iput v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->showType:I

    .line 1304
    iput-object v3, p1, Lcom/mediatek/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    .line 1305
    iput-object v3, p1, Lcom/mediatek/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    .line 1306
    iput-object v3, p1, Lcom/mediatek/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    .line 1320
    :goto_0
    return-void

    .line 1308
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "using /etc/agps_profiles_conf.xml defaultProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1309
    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 1310
    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    .line 1311
    iget v1, v0, Lcom/mediatek/agps/MtkAgpsProfile;->port:I

    iput v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->port:I

    .line 1312
    iget v1, v0, Lcom/mediatek/agps/MtkAgpsProfile;->tls:I

    iput v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->tls:I

    .line 1313
    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    .line 1314
    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    .line 1315
    iget v1, v0, Lcom/mediatek/agps/MtkAgpsProfile;->showType:I

    iput v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->showType:I

    .line 1316
    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    .line 1317
    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    .line 1318
    iget-object v1, v0, Lcom/mediatek/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1819
    const-string v0, "MtkAgps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MtkAgpsManagerService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1823
    const-string v0, "MtkAgps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MtkAgpsManagerService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    return-void
.end method

.method private niRequest([B)I
    .locals 7
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 807
    const/16 v1, 0xf

    array-length v2, p1

    move-object v0, p0

    move v4, v3

    move v5, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIII[B)V

    .line 809
    const/4 v0, 0x0

    return v0
.end method

.method private sendError(II)V
    .locals 1
    .parameter "msg_type"
    .parameter "msg_id"

    .prologue
    .line 803
    const-string v0, "com.mediatek.agps.ERROR_ACTION"

    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendIntent(Ljava/lang/String;II)V

    .line 804
    return-void
.end method

.method private sendIntent(Ljava/lang/String;II)V
    .locals 5
    .parameter "act"
    .parameter "msg_type"
    .parameter "msg_id"

    .prologue
    const/4 v4, 0x0

    .line 767
    iget-boolean v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z

    if-nez v2, :cond_0

    .line 768
    const-string v2, "cannot send broadcast before boot completed"

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 792
    :goto_0
    return-void

    .line 771
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 772
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 773
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "msg_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    const-string/jumbo v2, "msg_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 776
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mRequestId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 777
    const-string/jumbo v2, "request_id"

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mRequestId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mRequestId:Ljava/lang/String;

    .line 782
    :goto_1
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mClientName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 783
    const-string v2, "client_name"

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mClientName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mClientName:Ljava/lang/String;

    .line 789
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 790
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 780
    :cond_1
    const-string/jumbo v2, "request_id"

    const-string v3, "UNKNOWN_VALUE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 786
    :cond_2
    const-string v2, "client_name"

    const-string v3, "UNKNOWN_VALUE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private sendNotify(II)V
    .locals 1
    .parameter "msg_type"
    .parameter "msg_id"

    .prologue
    .line 795
    const-string v0, "com.mediatek.agps.NOTIFY_ACTION"

    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendIntent(Ljava/lang/String;II)V

    .line 796
    return-void
.end method

.method private sendProfileUpdate(Lcom/mediatek/agps/MtkAgpsProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 1771
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.agps.PROFILE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1772
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "name"

    iget-object v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1773
    const-string v1, "addr"

    iget-object v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1774
    const-string/jumbo v1, "port"

    iget v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->port:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1775
    const-string/jumbo v1, "tls"

    iget v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->tls:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1776
    const-string/jumbo v1, "showType"

    iget v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->showType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1777
    const-string v1, "backupSlpNameVar"

    iget-object v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1778
    const-string v1, "code"

    iget-object v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1779
    const-string v1, "addrType"

    iget-object v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1780
    const-string/jumbo v1, "providerId"

    iget-object v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1781
    const-string v1, "defaultApn"

    iget-object v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1782
    const-string/jumbo v1, "optionApn"

    iget-object v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->optionApn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1783
    const-string/jumbo v1, "optionApn2"

    iget-object v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->optionApn2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1784
    const-string v1, "appId"

    iget-object v2, p1, Lcom/mediatek/agps/MtkAgpsProfile;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1785
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1786
    return-void
.end method

.method private sendStatusUpdate()V
    .locals 3

    .prologue
    .line 1789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.agps.STATUS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1790
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "status"

    iget-boolean v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1791
    const-string/jumbo v1, "roaming"

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget v2, v2, Lcom/mediatek/agps/MtkAgpsConfig;->roaming:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1792
    const-string/jumbo v1, "molrPositionType"

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget v2, v2, Lcom/mediatek/agps/MtkAgpsConfig;->molrPositionType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1793
    const-string/jumbo v1, "niEnable"

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget v2, v2, Lcom/mediatek/agps/MtkAgpsConfig;->niEnable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1794
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1795
    return-void
.end method

.method private sendVerify(II)V
    .locals 1
    .parameter "msg_type"
    .parameter "msg_id"

    .prologue
    .line 799
    const-string v0, "com.mediatek.agps.VERIFY_ACTION"

    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendIntent(Ljava/lang/String;II)V

    .line 800
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 435
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 436
    .local v0, r:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 437
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 438
    return-void
.end method

.method private updateLocationResult(Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;)V
    .locals 5
    .parameter "mlocation"

    .prologue
    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mlatitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mlatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mlongitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mlongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "maltitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->maltitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mspeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mspeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mbearing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mbearing:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "maccuracy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->maccuracy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mtimestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mtimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mTTFF = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mTTFF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 932
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/16 v3, 0x21

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 935
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 936
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 937
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 938
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 940
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-wide v3, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mlatitude:D

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeDouble(D)V

    .line 941
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-wide v3, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mlongitude:D

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeDouble(D)V

    .line 942
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-wide v3, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->maltitude:D

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeDouble(D)V

    .line 943
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-wide v3, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mtimestamp:J

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeLong(J)V

    .line 944
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v3, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mspeed:F

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeFloat(F)V

    .line 945
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v3, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mbearing:F

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeFloat(F)V

    .line 946
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v3, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->maccuracy:F

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeFloat(F)V

    .line 947
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v3, p1, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mTTFF:I

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 948
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V

    .line 950
    :cond_0
    monitor-exit v2

    .line 954
    :goto_0
    return-void

    .line 950
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateNetworkAndSIM()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 982
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    if-eqz v0, :cond_0

    .line 983
    const-string/jumbo v0, "updateNetworkAndSIM"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 984
    const/16 v0, 0x1f

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim1:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 985
    const/16 v0, 0x20

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mNetworkTypeSim2:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 987
    const/16 v0, 0x23

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim1:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 988
    const/16 v0, 0x24

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsNetworkRoamingSim2:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 990
    const/16 v0, 0x1b

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSim1Status:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 991
    const/16 v0, 0x1c

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSim2Status:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 993
    const/16 v1, 0x22

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V

    .line 995
    const/16 v0, 0x25

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim1:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 996
    const/16 v0, 0x26

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnSim2:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 997
    const/16 v0, 0x27

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 999
    :cond_0
    return-void
.end method

.method private writeAgpsConfig2Agpsd(Lcom/mediatek/agps/MtkAgpsConfig;)I
    .locals 7
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1322
    if-nez p1, :cond_0

    .line 1323
    const-string v2, "agps_config: config is null"

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    move v2, v3

    .line 1380
    :goto_0
    return v2

    .line 1327
    :cond_0
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget v4, v4, Lcom/mediatek/agps/MtkAgpsConfig;->supl2file:I

    iget v5, p1, Lcom/mediatek/agps/MtkAgpsConfig;->supl2file:I

    if-eq v4, v5, :cond_1

    .line 1328
    iget v4, p1, Lcom/mediatek/agps/MtkAgpsConfig;->supl2file:I

    if-nez v4, :cond_3

    .line 1329
    invoke-virtual {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->supl2file(Z)V

    .line 1335
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    .line 1336
    iget-boolean v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z

    if-eqz v4, :cond_4

    .line 1337
    .local v1, gpsStatus:I
    :goto_2
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->dumpAgpsConfig(Lcom/mediatek/agps/MtkAgpsConfig;)V

    .line 1338
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v4

    .line 1340
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1341
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1342
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->siMode:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1343
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->setId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1344
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->qopHacc:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1345
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->qopVacc:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1346
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->qopAge:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1347
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->qopDelay:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1348
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->notifyTimeout:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1349
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->verifyTimeout:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1351
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->niEnable:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1352
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->molrPositionType:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1353
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->extAddressEnable:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1354
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->mlcNumEnable:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeShort(I)V

    .line 1355
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->extAddress:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1356
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->mlcNum:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1357
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->suplCapabilityType:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1358
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->customPolicyEnable:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1359
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->customPolicyType:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1360
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->gpsAgentSiReq:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1361
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->gpsAgentEnable:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1362
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->molrType:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1363
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v5, v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1364
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->niIot:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1365
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->logFileMaxSize:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1366
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->simIdPref:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1367
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->roaming:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1368
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->caEnable:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1369
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->eCidEnable:I

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1371
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->extAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1372
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v6, p1, Lcom/mediatek/agps/MtkAgpsConfig;->mlcNum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1373
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :cond_2
    :try_start_1
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1331
    .end local v1           #gpsStatus:I
    :cond_3
    invoke-virtual {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->supl2file(Z)V

    goto/16 :goto_1

    :cond_4
    move v1, v2

    .line 1336
    goto/16 :goto_2

    .line 1375
    .restart local v1       #gpsStatus:I
    :catch_0
    move-exception v0

    .line 1376
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1377
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    goto/16 :goto_0
.end method

.method private writeData2Agpsd(I)V
    .locals 6
    .parameter "cmd"

    .prologue
    const/4 v2, -0x1

    .line 1385
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIII)V

    .line 1386
    return-void
.end method

.method private writeData2Agpsd(II)V
    .locals 6
    .parameter "cmd"
    .parameter "data1"

    .prologue
    const/4 v3, -0x1

    .line 1388
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIII)V

    .line 1389
    return-void
.end method

.method private writeData2Agpsd(III)V
    .locals 6
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"

    .prologue
    const/4 v4, -0x1

    .line 1391
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIII)V

    .line 1392
    return-void
.end method

.method private writeData2Agpsd(IIII)V
    .locals 6
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"

    .prologue
    .line 1395
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIII)V

    .line 1396
    return-void
.end method

.method private writeData2Agpsd(IIIII)V
    .locals 3
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"

    .prologue
    .line 1399
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v2

    .line 1401
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1402
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1403
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1404
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1405
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1406
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1407
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1413
    return-void

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1412
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeData2Agpsd(IIIIILjava/lang/String;)V
    .locals 3
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"
    .parameter "data5"

    .prologue
    .line 1434
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v2

    .line 1435
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1437
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1438
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1439
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1440
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1441
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1442
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1443
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1448
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1449
    return-void

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1448
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"
    .parameter "data5"
    .parameter "data6"

    .prologue
    .line 1452
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v2

    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1455
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1456
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1457
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1458
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1459
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1460
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1461
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1462
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1467
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1468
    return-void

    .line 1463
    :catch_0
    move-exception v0

    .line 1464
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1467
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private writeData2Agpsd(IIIII[B)V
    .locals 3
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"
    .parameter "data5"

    .prologue
    .line 1416
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v2

    .line 1417
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1420
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1421
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1422
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1423
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1424
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes([B)V

    .line 1425
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1430
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1431
    return-void

    .line 1426
    :catch_0
    move-exception v0

    .line 1427
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1430
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 1839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[disable]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1840
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    .line 1841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    .line 1842
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendStatusUpdate()V

    .line 1843
    return-void
.end method

.method public disableNilr()I
    .locals 1

    .prologue
    .line 917
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public enable()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enable] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1831
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget v2, v0, Lcom/mediatek/agps/MtkAgpsProfile;->tls:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget v3, v0, Lcom/mediatek/agps/MtkAgpsProfile;->port:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v0, v0, Lcom/mediatek/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v0, v0, Lcom/mediatek/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v5, v0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v6, v0, Lcom/mediatek/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v7, v0, Lcom/mediatek/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 1834
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    .line 1835
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendStatusUpdate()V

    .line 1836
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->agpsUpdateCellInfo()I

    .line 1837
    return-void
.end method

.method public enableNilr()I
    .locals 1

    .prologue
    .line 912
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    .line 913
    const/4 v0, 0x0

    return v0
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 10
    .parameter "command"
    .parameter "extra"

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[extraCommand] command="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1926
    const-string v0, "USING_XML"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1927
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/agps/MtkAgpsProfileManager;->getAgpsStatus()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1928
    const-string v0, "enable Agps by XML"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->enable()V

    .line 1967
    :cond_0
    :goto_0
    return v9

    .line 1931
    :cond_1
    const-string v0, "RESET_TO_DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1932
    const-string/jumbo v0, "reset to default"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1934
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget v0, v0, Lcom/mediatek/agps/MtkAgpsConfig;->supl2file:I

    if-eqz v0, :cond_2

    .line 1935
    invoke-virtual {p0, v9}, Lcom/mediatek/agps/MtkAgpsManagerService;->supl2file(Z)V

    .line 1938
    :cond_2
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->initAgpsProfile(Lcom/mediatek/agps/MtkAgpsProfile;)V

    .line 1939
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->initAgpsConfig(Lcom/mediatek/agps/MtkAgpsConfig;)V

    .line 1941
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/agps/MtkAgpsProfileManager;->getAgpsStatus()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1942
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget v2, v0, Lcom/mediatek/agps/MtkAgpsProfile;->tls:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget v3, v0, Lcom/mediatek/agps/MtkAgpsProfile;->port:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v0, v0, Lcom/mediatek/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v0, v0, Lcom/mediatek/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v5, v0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v6, v0, Lcom/mediatek/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v7, v0, Lcom/mediatek/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 1945
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    .line 1946
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->agpsUpdateCellInfo()I

    .line 1953
    :goto_1
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

    invoke-virtual {v0}, Lcom/mediatek/agps/MtkAgpsProfileManager;->getNiStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput v0, v2, Lcom/mediatek/agps/MtkAgpsConfig;->niEnable:I

    .line 1954
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iput v9, v0, Lcom/mediatek/agps/MtkAgpsConfig;->molrPositionType:I

    .line 1955
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/agps/MtkAgpsProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/agps/MtkAgpsProfileManager;->getRoamingStatus()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_3
    iput v1, v0, Lcom/mediatek/agps/MtkAgpsConfig;->roaming:I

    .line 1956
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/agps/MtkAgpsConfig;)I

    .line 1957
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendStatusUpdate()V

    .line 1958
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendProfileUpdate(Lcom/mediatek/agps/MtkAgpsProfile;)V

    goto :goto_0

    .line 1948
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[disable]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1949
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    .line 1950
    iput-boolean v9, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    goto :goto_1

    :cond_4
    move v0, v9

    .line 1953
    goto :goto_2

    :cond_5
    move v1, v9

    .line 1955
    goto :goto_3

    .line 1959
    :cond_6
    const-string v0, "RESET_AGPSD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1960
    const-string/jumbo v0, "recv reset agpsd"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1961
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 1962
    :cond_7
    const-string v0, "EXTRA_CMD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    const-string v0, "CMD"

    invoke-virtual {p2, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1964
    .local v8, cmd:I
    const/16 v0, 0x2b

    invoke-direct {p0, v0, v8}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    goto/16 :goto_0
.end method

.method public getConfig()Lcom/mediatek/agps/MtkAgpsConfig;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    return-object v0
.end method

.method public getCpStatus()Z
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget v0, v0, Lcom/mediatek/agps/MtkAgpsConfig;->molrPositionType:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget v0, v0, Lcom/mediatek/agps/MtkAgpsConfig;->siMode:I

    return v0
.end method

.method public getNiStatus()Z
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget v0, v0, Lcom/mediatek/agps/MtkAgpsConfig;->niEnable:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getProfile()Lcom/mediatek/agps/MtkAgpsProfile;
    .locals 1

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    return-object v0
.end method

.method public getRoamingStatus()Z
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget v0, v0, Lcom/mediatek/agps/MtkAgpsConfig;->roaming:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 1845
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    return v0
.end method

.method public getUpStatus()Z
    .locals 1

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iget v0, v0, Lcom/mediatek/agps/MtkAgpsConfig;->molrPositionType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gpsMessageHandler(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 297
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 300
    :sswitch_0
    const-string v0, "gpsMessageHandler requestLocationUpdates"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mlooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 302
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v7

    .line 328
    .local v7, e:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 306
    .end local v7           #e:Ljava/lang/SecurityException;
    :sswitch_1
    :try_start_1
    const-string v0, "gpsMessageHandler removeUpdates"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 308
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 329
    :catch_1
    move-exception v7

    .line 330
    .local v7, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :sswitch_2
    :try_start_2
    const-string v0, "gpsMessageHandler sendExtraCommand(GPS_RESET) "

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 312
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v8, extras:Landroid/os/Bundle;
    const-string v0, "ephemeris"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    const-string v0, "almanac"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    const-string/jumbo v0, "position"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    const-string/jumbo v0, "time"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    const-string v0, "iono"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    const-string/jumbo v0, "utc"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "delete_aiding_data"

    invoke-virtual {v0, v1, v2, v8}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_0

    .line 325
    .end local v8           #extras:Landroid/os/Bundle;
    :cond_0
    const-string v0, "ERR: mLocationManager == null"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x457 -> :sswitch_0
        0x8ae -> :sswitch_1
        0xd05 -> :sswitch_0
        0x115c -> :sswitch_1
        0x15b3 -> :sswitch_2
    .end sparse-switch
.end method

.method public log2file(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[log2file] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1972
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1973
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    .line 1977
    :goto_0
    return-void

    .line 1975
    :cond_0
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto :goto_0
.end method

.method public log2uart(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[log2uart] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1980
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1981
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    .line 1985
    :goto_0
    return-void

    .line 1983
    :cond_0
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto :goto_0
.end method

.method public niUserResponse(I)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[niUserResponse] response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1997
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 1998
    return-void
.end method

.method public setConfig(Lcom/mediatek/agps/MtkAgpsConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 1849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setConfig]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1850
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/agps/MtkAgpsConfig;)I

    .line 1851
    return-void
.end method

.method public setCpEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCpEnable] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1899
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/mediatek/agps/MtkAgpsConfig;->molrPositionType:I

    .line 1900
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/agps/MtkAgpsConfig;)I

    .line 1901
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendStatusUpdate()V

    .line 1902
    return-void

    .line 1899
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setMode] mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1878
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    iput p1, v0, Lcom/mediatek/agps/MtkAgpsConfig;->siMode:I

    .line 1879
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/agps/MtkAgpsConfig;)I

    .line 1880
    return-void
.end method

.method public setNiEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setNiEnable] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1887
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/mediatek/agps/MtkAgpsConfig;->niEnable:I

    .line 1888
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/agps/MtkAgpsConfig;)I

    .line 1889
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendStatusUpdate()V

    .line 1890
    return-void

    .line 1887
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProfile(Lcom/mediatek/agps/MtkAgpsProfile;)V
    .locals 8
    .parameter "profile"

    .prologue
    const/4 v1, 0x1

    .line 1857
    if-nez p1, :cond_0

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING: [setProfile] profile is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1871
    :goto_0
    return-void

    .line 1861
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setProfile] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1862
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    .line 1863
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    if-ne v0, v1, :cond_1

    .line 1864
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    .line 1866
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget v2, v0, Lcom/mediatek/agps/MtkAgpsProfile;->tls:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget v3, v0, Lcom/mediatek/agps/MtkAgpsProfile;->port:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v0, v0, Lcom/mediatek/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v0, v0, Lcom/mediatek/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v5, v0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v6, v0, Lcom/mediatek/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/agps/MtkAgpsProfile;

    iget-object v7, v0, Lcom/mediatek/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 1870
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendProfileUpdate(Lcom/mediatek/agps/MtkAgpsProfile;)V

    goto :goto_0
.end method

.method public setRoamingEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRoamingEnable] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1905
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/mediatek/agps/MtkAgpsConfig;->roaming:I

    .line 1906
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/agps/MtkAgpsConfig;)I

    .line 1907
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendStatusUpdate()V

    .line 1908
    return-void

    .line 1905
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUpEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setUpEnable] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1893
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Lcom/mediatek/agps/MtkAgpsConfig;->molrPositionType:I

    .line 1894
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/agps/MtkAgpsConfig;)I

    .line 1895
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendStatusUpdate()V

    .line 1896
    return-void

    .line 1893
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public supl2file(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[supl2file] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1988
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1989
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    .line 1993
    :goto_0
    return-void

    .line 1991
    :cond_0
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto :goto_0
.end method
