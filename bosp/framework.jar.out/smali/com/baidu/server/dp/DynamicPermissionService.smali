.class public Lcom/baidu/server/dp/DynamicPermissionService;
.super Lcom/baidu/server/dp/IDynamicPermissionService$Stub;
.source "DynamicPermissionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/server/dp/DynamicPermissionService$UsbStateReceiver;,
        Lcom/baidu/server/dp/DynamicPermissionService$PowerStateReceiver;,
        Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;,
        Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;,
        Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;,
        Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;,
        Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_CHECK_ENTRY:Z = false

.field private static final DEBUG_DEFAULT_PS:Z = false

.field private static final DEBUG_LIGHT_SCREEN:Z = false

.field private static final DEBUG_TIMEPOLICY:Z = false

.field private static final DEBUG_UBC:Z = true

.field private static final DEBUG_WRITELOG:Z = false

.field private static final DIGEST_LENGTH:I = 0x10

.field private static final GTYPE_DENY:I = 0x10

.field private static final GTYPE_GRANT:I = 0x0

.field private static final GTYPE_REMEMBER:I = 0x1

.field private static final GTYPE_TIMEOUT:I = 0x3

.field private static final GTYPE_TRUST:I = 0x2

.field private static final GTYPE_USER:I = 0x0

.field private static final LIGHT_SCREEN_TIMEOUT:J = 0x2710L

.field private static final LOG_ITEM_NUM:J = 0x3e8L

.field private static final LOG_PERSIST_TIME:J = 0x240c8400L

.field private static final MSG_CHECK_PERM:I = 0x1

.field private static final MSG_TD_TIMEOUT:I = 0x3

.field private static final MSG_UD_TIMEOUT:I = 0x2

.field private static final MSG_WRITELOG:I = 0x4

.field public static final NAME:Ljava/lang/String; = "DynamicPermissionService"

.field static final PMASK_CALL_LOG:I = 0x300

.field static final PMASK_CALL_PHONE:I = 0x3

.field static final PMASK_CONTACTS:I = 0x30

.field static final PMASK_DENY:I = 0x1

.field static final PMASK_GRANT:I = 0x0

.field static final PMASK_LOCATION:I = 0xc00

.field static final PMASK_SEND_SMS:I = 0xc

.field static final PMASK_SMS:I = 0xc0

.field static final PMASK_TRUST:I = 0x300000

.field static final PMASK_UNDEF:I = 0x2

.field static final PSHIFT_CALL_LOG:I = 0x8

.field static final PSHIFT_CALL_PHONE:I = 0x0

.field static final PSHIFT_CONTACTS:I = 0x4

.field static final PSHIFT_LOCATION:I = 0xa

.field static final PSHIFT_SEND_SMS:I = 0x2

.field static final PSHIFT_SMS:I = 0x6

.field static final PSHIFT_TRUST:I = 0x14

.field static final TAG:Ljava/lang/String; = "DynamicPermissionService"

.field public static final UBC_DIALOG:B = 0x2t

.field public static final UBC_INITIAL_SET:B = 0x1t

.field public static final UBC_INSTALLATION:B = 0x0t

.field private static final UBC_MI_DISABLE:J = 0x1001903L

.field private static final UBC_MI_INITSET:J = 0x1001901L

.field private static final UBC_MI_PERMISSIONS:J = 0x1001905L

.field private static final UBC_MI_REMEMBER:J = 0x1001902L

.field private static final UBC_MI_TRUSTED:J = 0x1001904L

.field public static final UBC_RESTORE:B = 0x4t

.field public static final UBC_SETTINGS:B = 0x3t

.field private static final USB_CONNECTED:I = 0x1

.field private static final USB_DISCONNECTED:I = 0x0

.field private static final USB_UNINIT:I = -0x1

.field private static final VERSION:I = 0x3

.field private static sDynPermMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sPermMasks:[I

.field static final sPermShifts:[I


# instance fields
.field private final mBackupPermFile:Ljava/io/File;

.field private mCheckRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDigestKey:[B

.field private final mHandler:Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsCheckFi:Z

.field private mIsOn:Z

.field private final mPermFile:Ljava/io/File;

.field private mPermFileDigest:[B

.field private mPermFileDigestFile:Ljava/io/File;

.field private mPermFileLock:Ljava/lang/Object;

.field private mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreInstFileDigest:[B

.field private mPreInstFileDigestFile:Ljava/io/File;

.field private mPreInstFileLock:Ljava/lang/Object;

.field private mPreInstalled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mPreInstalledFile:Ljava/io/File;

.field private mTimeoutInterval:J

.field private mTrustDecisions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUbcEnabled:Z

.field private mUsbConnected:I

.field private mUserDecisions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/server/dp/DynamicPermissionService;->sPermShifts:[I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/server/dp/DynamicPermissionService;->sPermMasks:[I

    .line 186
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPermMaps:Ljava/util/HashMap;

    sput-object v0, Lcom/baidu/server/dp/DynamicPermissionService;->sDynPermMaps:Ljava/util/HashMap;

    return-void

    .line 105
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 117
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x0t 0x3t 0x0t 0x0t
        0x0t 0xct 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1992
    invoke-direct {p0}, Lcom/baidu/server/dp/IDynamicPermissionService$Stub;-><init>()V

    .line 158
    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mDigestKey:[B

    .line 173
    iput-boolean v5, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mIsCheckFi:Z

    .line 178
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFileLock:Ljava/lang/Object;

    .line 179
    new-instance v3, Ljava/lang/Object;

    invoke-direct/range {v3 .. v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstFileLock:Ljava/lang/Object;

    .line 193
    const/4 v3, -0x1

    iput v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUsbConnected:I

    .line 201
    iput-boolean v5, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mIsOn:Z

    .line 207
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    .line 214
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    .line 220
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;

    .line 226
    const-wide/16 v3, 0x2710

    iput-wide v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTimeoutInterval:J

    .line 242
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustDecisions:Ljava/util/ArrayList;

    .line 248
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "DynamicPermissionService"

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 252
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mCheckRequests:Ljava/util/LinkedList;

    .line 254
    new-instance v3, Lcom/baidu/server/dp/DynamicPermissionService$1;

    invoke-direct {v3, p0}, Lcom/baidu/server/dp/DynamicPermissionService$1;-><init>(Lcom/baidu/server/dp/DynamicPermissionService;)V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 368
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUbcEnabled:Z

    .line 1993
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    .line 1994
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    .line 1995
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPowerManager:Landroid/os/PowerManager;

    .line 1998
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1999
    new-instance v3, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;

    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;-><init>(Lcom/baidu/server/dp/DynamicPermissionService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mHandler:Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;

    .line 2001
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2002
    .local v0, dataDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2003
    .local v2, systemDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "dynamic_perms"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    .line 2004
    new-instance v3, Ljava/io/File;

    const-string v4, "dynamic_perms.bak"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mBackupPermFile:Ljava/io/File;

    .line 2005
    new-instance v3, Ljava/io/File;

    const-string v4, "dynamic_perms.dig"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFileDigestFile:Ljava/io/File;

    .line 2006
    new-instance v3, Ljava/io/File;

    const-string v4, "dynamic_pi"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalledFile:Ljava/io/File;

    .line 2007
    new-instance v3, Ljava/io/File;

    const-string v4, "dynamic_pi.dig"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstFileDigestFile:Ljava/io/File;

    .line 2010
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->initPermissions()V

    .line 2013
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2014
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2015
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2016
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2017
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2018
    new-instance v3, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;

    invoke-direct {v3, p0}, Lcom/baidu/server/dp/DynamicPermissionService$PackageReceiver;-><init>(Lcom/baidu/server/dp/DynamicPermissionService;)V

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2020
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2021
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2022
    new-instance v3, Lcom/baidu/server/dp/DynamicPermissionService$PowerStateReceiver;

    invoke-direct {v3, p0, v6}, Lcom/baidu/server/dp/DynamicPermissionService$PowerStateReceiver;-><init>(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$1;)V

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2024
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2025
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2026
    new-instance v3, Lcom/baidu/server/dp/DynamicPermissionService$UsbStateReceiver;

    invoke-direct {v3, p0, v6}, Lcom/baidu/server/dp/DynamicPermissionService$UsbStateReceiver;-><init>(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$1;)V

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2027
    return-void

    .line 158
    :array_0
    .array-data 0x1
        0x0t
        0x8t
        0x50t
        0x61t
        0x7ft
        0x1dt
        0x7t
        0x46t
        0x26t
        0x2t
        0x39t
        0x59t
        0x49t
        0x77t
        0x9t
        0x1dt
    .end array-data
.end method

.method static synthetic access$000(Lcom/baidu/server/dp/DynamicPermissionService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mCheckRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p5}, Lcom/baidu/server/dp/DynamicPermissionService;->setPermission(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/server/dp/DynamicPermissionService;->writeLog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->handleCheckRequest(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->handleUdTimeout(Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->handleTdTimeout(Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->handleWriteLog(Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->getUidForPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/baidu/server/dp/DynamicPermissionService;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/baidu/server/dp/DynamicPermissionService;->updateUidPermission(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/baidu/server/dp/DynamicPermissionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->writeToPermFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->sendInitUbcBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->removePermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/server/dp/DynamicPermissionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUbcEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/baidu/server/dp/DynamicPermissionService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->removeUserDecision(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->removePackageLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/baidu/server/dp/DynamicPermissionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUsbConnected:I

    return v0
.end method

.method static synthetic access$2302(Lcom/baidu/server/dp/DynamicPermissionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUsbConnected:I

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;BLjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/server/dp/DynamicPermissionService;->ubcReportPermissions(Ljava/lang/String;BLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->permInTimePolicy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/server/dp/DynamicPermissionService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/server/dp/DynamicPermissionService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTimeoutInterval:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/baidu/server/dp/DynamicPermissionService;)Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mHandler:Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/server/dp/DynamicPermissionService;J[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/server/dp/DynamicPermissionService;->sendUbcBroadcast(J[B)V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/server/dp/DynamicPermissionService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addPermission(Landroid/content/pm/PackageInfo;)V
    .locals 4
    .parameter "pi"

    .prologue
    .line 1323
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1325
    .local v1, pkgName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1328
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v2}, Lcom/baidu/server/dp/DynamicPermissionService;->getSignatureDigest([Landroid/content/pm/Signature;)[B

    move-result-object v0

    .line 1329
    .local v0, digest:[B
    if-eqz v0, :cond_0

    .line 1330
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    monitor-enter v3

    .line 1331
    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    :cond_0
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    monitor-enter v3

    .line 1336
    :try_start_1
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1337
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1341
    .end local v0           #digest:[B
    :goto_0
    return-void

    .line 1332
    .restart local v0       #digest:[B
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1337
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1339
    .end local v0           #digest:[B
    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/server/dp/DynamicPermissionService;->updatePackagePermission(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkPermission(IILjava/lang/String;JLcom/baidu/server/dp/Transaction;)I
    .locals 15
    .parameter "uid"
    .parameter "pid"
    .parameter "perm"
    .parameter "time"
    .parameter "t"

    .prologue
    .line 781
    move-object/from16 v14, p3

    .line 782
    .local v14, realPerm:Ljava/lang/String;
    const-string v2, "dynamic.permission.SEND_MMS"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    const-string v14, "android.permission.SEND_SMS"

    .line 786
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/baidu/server/dp/DynamicPermissionService;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 787
    const/4 v10, 0x0

    .line 830
    :cond_1
    :goto_0
    return v10

    .line 790
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/baidu/server/dp/DynamicPermissionService;->getPackageName(II)[Ljava/lang/String;

    move-result-object v13

    .line 791
    .local v13, pkgNames:[Ljava/lang/String;
    if-eqz v13, :cond_3

    array-length v2, v13

    if-nez v2, :cond_4

    .line 792
    :cond_3
    const/4 v10, 0x1

    goto :goto_0

    .line 795
    :cond_4
    const/4 v2, 0x0

    aget-object v5, v13, v2

    .line 796
    .local v5, pkgName:Ljava/lang/String;
    new-instance v1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;-><init>(Lcom/baidu/server/dp/DynamicPermissionService;IILjava/lang/String;Ljava/lang/String;JLcom/baidu/server/dp/Transaction;)V

    .line 798
    .local v1, cr:Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;
    invoke-virtual {p0, v5}, Lcom/baidu/server/dp/DynamicPermissionService;->isTrusted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 800
    invoke-virtual {p0, v5}, Lcom/baidu/server/dp/DynamicPermissionService;->isPreInstalled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 801
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/baidu/server/dp/DynamicPermissionService;->writeLogIfNeeded(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;I)V

    .line 803
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 806
    :cond_6
    invoke-virtual {p0, v5, v14}, Lcom/baidu/server/dp/DynamicPermissionService;->queryPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 808
    .local v10, grant:I
    const/4 v2, 0x1

    new-array v12, v2, [Z

    .line 809
    .local v12, inTimePolicy:[Z
    and-int/lit8 v2, v10, 0x10

    if-eqz v2, :cond_7

    .line 810
    invoke-direct {p0, v1, v10, v12}, Lcom/baidu/server/dp/DynamicPermissionService;->checkTimePolicy(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;I[Z)I

    move-result v10

    .line 812
    :cond_7
    and-int/lit8 v2, v10, 0x10

    if-eqz v2, :cond_9

    .line 814
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mHandler:Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;->sendMessage(Landroid/os/Message;)Z

    .line 820
    :cond_8
    :goto_1
    const/4 v2, 0x0

    aget-boolean v2, v12, v2

    if-nez v2, :cond_1

    and-int/lit8 v2, v10, 0x10

    if-nez v2, :cond_1

    .line 822
    const/4 v2, 0x1

    if-ne v10, v2, :cond_a

    .line 823
    const/16 v11, 0x10

    .line 827
    .local v11, gtype:I
    :goto_2
    or-int/lit8 v11, v11, 0x1

    .line 828
    invoke-direct {p0, v1, v11}, Lcom/baidu/server/dp/DynamicPermissionService;->writeLogIfNeeded(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;I)V

    goto :goto_0

    .line 815
    .end local v11           #gtype:I
    :cond_9
    const/4 v2, 0x1

    if-ne v10, v2, :cond_8

    .line 816
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Lcom/baidu/server/dp/Transaction;->trans(ILandroid/content/Context;)V

    goto :goto_1

    .line 825
    :cond_a
    const/4 v11, 0x0

    .restart local v11       #gtype:I
    goto :goto_2
.end method

.method private checkTimePolicy(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;I[Z)I
    .locals 4
    .parameter "cr"
    .parameter "defaltGrant"
    .parameter "found"

    .prologue
    .line 896
    iget-object v0, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->perm:Ljava/lang/String;

    .line 897
    .local v0, perm:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->permInTimePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 898
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->getUserDecision(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;

    move-result-object v1

    .line 899
    .local v1, ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    if-eqz v1, :cond_1

    .line 900
    if-eqz p3, :cond_0

    .line 901
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, p3, v2

    .line 903
    :cond_0
    iget p2, v1, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;->grant:I

    .line 906
    .end local v1           #ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    .end local p2
    :cond_1
    return p2
.end method

.method private clearDb()V
    .locals 2

    .prologue
    .line 1139
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1140
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1141
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    monitor-enter v1

    .line 1143
    :try_start_1
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1144
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1145
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    monitor-enter v1

    .line 1146
    :try_start_2
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1147
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mIsOn:Z

    .line 1149
    return-void

    .line 1141
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1144
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1147
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private computeFileDigest(Ljava/io/File;)[B
    .locals 9
    .parameter "f"

    .prologue
    const/4 v5, 0x0

    .line 1015
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1035
    :goto_0
    return-object v5

    .line 1019
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1020
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1021
    .local v4, is:Ljava/io/BufferedInputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 1023
    .local v0, bytes:[B
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1024
    .local v2, digester:Ljava/security/MessageDigest;
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    .local v1, count:I
    if-lez v1, :cond_1

    .line 1025
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 1030
    .end local v0           #bytes:[B
    .end local v1           #count:I
    .end local v2           #digester:Ljava/security/MessageDigest;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #is:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1027
    .restart local v0       #bytes:[B
    .restart local v1       #count:I
    .restart local v2       #digester:Ljava/security/MessageDigest;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/BufferedInputStream;
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 1028
    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mDigestKey:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mDigestKey:[B

    array-length v8, v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 1029
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 1032
    .end local v0           #bytes:[B
    .end local v1           #count:I
    .end local v2           #digester:Ljava/security/MessageDigest;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #is:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private dump()V
    .locals 0

    .prologue
    .line 1356
    return-void
.end method

.method private getPackageDefaultPermission(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x2

    .line 1742
    invoke-static {p1}, Lcom/baidu/server/dp/DefaultPermissionSettings;->getDefaultPermission(Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    .line 1752
    .local v0, bundles:[Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 1797
    :cond_0
    :goto_0
    return-object v8

    .line 1758
    :cond_1
    const/4 v7, 0x0

    .line 1760
    .local v7, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v9, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x40

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1764
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v9}, Lcom/baidu/server/dp/DynamicPermissionService;->getSignatureDigest([Landroid/content/pm/Signature;)[B

    move-result-object v2

    .line 1766
    .local v2, digest:[B
    const/4 v1, 0x0

    .line 1767
    .local v1, defSignature:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v9, v0

    if-ge v4, v9, :cond_0

    .line 1768
    aget-object v9, v0, v4

    const-string/jumbo v10, "signature"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1770
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1771
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1772
    .local v8, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    aget-object v9, v0, v4

    const-string/jumbo v10, "permissions"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1775
    .local v6, perms:I
    and-int/lit8 v5, v6, 0x3

    .local v5, perm:I
    if-eq v5, v11, :cond_2

    .line 1776
    const-string v9, "android.permission.CALL_PHONE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    :cond_2
    and-int/lit8 v9, v6, 0xc

    shr-int/lit8 v5, v9, 0x2

    if-eq v5, v11, :cond_3

    .line 1779
    const-string v9, "android.permission.SEND_SMS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    :cond_3
    and-int/lit8 v9, v6, 0x30

    shr-int/lit8 v5, v9, 0x4

    if-eq v5, v11, :cond_4

    .line 1782
    const-string v9, "dynamic.permission.CONTACTS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    :cond_4
    and-int/lit16 v9, v6, 0xc0

    shr-int/lit8 v5, v9, 0x6

    if-eq v5, v11, :cond_5

    .line 1785
    const-string v9, "dynamic.permission.SMS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    :cond_5
    and-int/lit16 v9, v6, 0x300

    shr-int/lit8 v5, v9, 0x8

    if-eq v5, v11, :cond_6

    .line 1788
    const-string v9, "dynamic.permission.CALLLOG"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    :cond_6
    and-int/lit16 v9, v6, 0xc00

    shr-int/lit8 v5, v9, 0xa

    if-eq v5, v11, :cond_0

    .line 1791
    const-string v9, "dynamic.permission.LOCATION"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1761
    .end local v1           #defSignature:[B
    .end local v2           #digest:[B
    .end local v4           #i:I
    .end local v5           #perm:I
    .end local v6           #perms:I
    .end local v8           #ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    .line 1762
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    .line 1767
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #defSignature:[B
    .restart local v2       #digest:[B
    .restart local v4       #i:I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getPackageName(II)[Ljava/lang/String;
    .locals 12
    .parameter "uid"
    .parameter "pid"

    .prologue
    const/4 v9, 0x0

    .line 1584
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1589
    .local v6, rps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v7, 0x0

    .line 1590
    .local v7, rpsPkgs:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 1591
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1592
    .local v0, api:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v10, p2, :cond_0

    .line 1593
    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 1590
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1585
    .end local v0           #api:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #i:I
    .end local v6           #rps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7           #rpsPkgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1614
    :cond_1
    :goto_1
    return-object v9

    .line 1596
    .restart local v2       #i:I
    .restart local v6       #rps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v7       #rpsPkgs:[Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_1

    .line 1597
    iget-object v10, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 1598
    .local v8, uidPkgs:[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1599
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1600
    .local v5, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v10, v7

    if-ge v3, v10, :cond_5

    .line 1601
    const/4 v4, 0x0

    .local v4, k:I
    :goto_3
    array-length v10, v8

    if-ge v4, v10, :cond_3

    .line 1602
    aget-object v10, v7, v3

    aget-object v11, v8, v4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1603
    aget-object v10, v7, v3

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1601
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1608
    .end local v4           #k:I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1609
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    goto :goto_1
.end method

.method private getPermResId(Ljava/lang/String;)I
    .locals 2
    .parameter "perm"

    .prologue
    .line 1499
    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1500
    const v0, #string@action_call#t

    .line 1515
    .local v0, resId:I
    :goto_0
    return v0

    .line 1501
    .end local v0           #resId:I
    :cond_0
    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dynamic.permission.SEND_MMS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1503
    :cond_1
    const v0, #string@action_sms#t

    .restart local v0       #resId:I
    goto :goto_0

    .line 1504
    .end local v0           #resId:I
    :cond_2
    const-string v1, "dynamic.permission.SMS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1505
    const v0, #string@action_access_sms#t

    .restart local v0       #resId:I
    goto :goto_0

    .line 1506
    .end local v0           #resId:I
    :cond_3
    const-string v1, "dynamic.permission.CALLLOG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1507
    const v0, #string@action_access_call_log#t

    .restart local v0       #resId:I
    goto :goto_0

    .line 1508
    .end local v0           #resId:I
    :cond_4
    const-string v1, "dynamic.permission.CONTACTS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1509
    const v0, #string@action_access_contacts#t

    .restart local v0       #resId:I
    goto :goto_0

    .line 1510
    .end local v0           #resId:I
    :cond_5
    const-string v1, "dynamic.permission.LOCATION"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1511
    const v0, #string@action_access_location#t

    .restart local v0       #resId:I
    goto :goto_0

    .line 1513
    .end local v0           #resId:I
    :cond_6
    const v0, #string@action_bar_home_description#t

    .restart local v0       #resId:I
    goto :goto_0
.end method

.method private getSignatureDigest([Landroid/content/pm/Signature;)[B
    .locals 4
    .parameter "signatures"

    .prologue
    .line 608
    const/4 v2, 0x0

    .line 610
    .local v2, ret:[B
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 611
    .local v0, digester:Ljava/security/MessageDigest;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 612
    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 618
    .end local v0           #digester:Ljava/security/MessageDigest;
    .end local v1           #i:I
    :goto_1
    return-object v2

    .line 615
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private getTrustDecision(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    .locals 4
    .parameter "cr"

    .prologue
    .line 867
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustDecisions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 868
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustDecisions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 869
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustDecisions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;

    .line 870
    .local v1, ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;->isSameSession(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    monitor-exit v3

    .line 875
    .end local v1           #ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    :goto_1
    return-object v1

    .line 868
    .restart local v1       #ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    .end local v1           #ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    :cond_1
    monitor-exit v3

    .line 875
    const/4 v1, 0x0

    goto :goto_1

    .line 874
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/baidu/server/dp/DynamicPermissionManager;->getUidForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getUserDecision(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    .locals 4
    .parameter "cr"

    .prologue
    .line 878
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 879
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 880
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;

    .line 881
    .local v1, ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;->isSameSession(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    monitor-exit v3

    .line 886
    .end local v1           #ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    :goto_1
    return-object v1

    .line 879
    .restart local v1       #ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    .end local v1           #ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    :cond_1
    monitor-exit v3

    .line 886
    const/4 v1, 0x0

    goto :goto_1

    .line 885
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleCheckRequest(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)V
    .locals 6
    .parameter "cr"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1432
    if-eqz p1, :cond_0

    .line 1433
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mCheckRequests:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1436
    :cond_0
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mCheckRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;

    .line 1437
    .local v1, head:Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;
    if-eqz v1, :cond_1

    .line 1438
    iget-boolean v2, v1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->inProgress:Z

    if-nez v2, :cond_1

    .line 1439
    const/16 v2, 0x10

    invoke-direct {p0, v1, v2, v5}, Lcom/baidu/server/dp/DynamicPermissionService;->checkTimePolicy(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;I[Z)I

    move-result v0

    .line 1440
    .local v0, grant:I
    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_2

    .line 1441
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mCheckRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 1442
    iget-object v2, v1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->t:Lcom/baidu/server/dp/Transaction;

    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    invoke-interface {v2, v0, v3}, Lcom/baidu/server/dp/Transaction;->trans(ILandroid/content/Context;)V

    .line 1443
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mHandler:Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;

    invoke-static {v2, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1458
    .end local v0           #grant:I
    :cond_1
    :goto_0
    return-void

    .line 1446
    .restart local v0       #grant:I
    :cond_2
    iput-boolean v4, v1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->inProgress:Z

    .line 1447
    invoke-direct {p0, v1}, Lcom/baidu/server/dp/DynamicPermissionService;->popDialog(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1448
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mCheckRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 1451
    :cond_3
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1452
    iget v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUsbConnected:I

    if-ne v2, v4, :cond_1

    .line 1453
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->lightScreen()V

    goto :goto_0
.end method

.method private handleTdTimeout(Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;)V
    .locals 2
    .parameter "ud"

    .prologue
    .line 1492
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustDecisions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1493
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustDecisions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1494
    monitor-exit v1

    .line 1495
    return-void

    .line 1494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleUdTimeout(Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;)V
    .locals 2
    .parameter "ud"

    .prologue
    .line 1478
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1479
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1480
    monitor-exit v1

    .line 1481
    return-void

    .line 1480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWriteLog(Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;)V
    .locals 18
    .parameter "entry"

    .prologue
    .line 1386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1387
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1388
    .local v12, values:Landroid/content/ContentValues;
    const/4 v10, 0x0

    .line 1389
    .local v10, perm:Ljava/lang/String;
    const-string v13, "dynamic.permission.SEND_MMS"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;->perm:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1390
    const-string v10, "android.permission.SEND_SMS"

    .line 1394
    :goto_0
    const-string v13, "app_name"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;->pkg:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string/jumbo v13, "perm_name"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    const-string v13, "grant"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;->gtype:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1397
    const-string/jumbo v13, "time"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;->time:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1400
    const-wide/16 v6, 0x0

    .line 1401
    .local v6, index:J
    :try_start_0
    const-string v13, "content://com.baidu.dperm/logs"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1402
    .local v1, contentUri:Landroid/net/Uri;
    invoke-virtual {v2, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1403
    .local v11, uri:Landroid/net/Uri;
    if-eqz v11, :cond_0

    .line 1404
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1407
    :cond_0
    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-eqz v13, :cond_1

    const-wide/16 v13, 0x3e8

    rem-long v13, v6, v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    .line 1408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1409
    .local v8, now:J
    const-wide/32 v13, 0x240c8400

    sub-long v3, v8, v13

    .line 1410
    .local v3, deleteTime:J
    const-string/jumbo v13, "time<?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v2, v1, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v3           #deleteTime:J
    .end local v8           #now:J
    .end local v11           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    return-void

    .line 1392
    .end local v6           #index:J
    :cond_2
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;->perm:Ljava/lang/String;

    goto :goto_0

    .line 1412
    .restart local v6       #index:J
    :catch_0
    move-exception v5

    .line 1413
    .local v5, e:Ljava/lang/Exception;
    const-string v13, "DynamicPermissionService"

    const-string v14, "insert log failed."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initPermissions()V
    .locals 1

    .prologue
    .line 910
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->readFromFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 911
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->readFromPms()V

    .line 912
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->turnOn(Z)V

    .line 913
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->writeToFile()Z

    .line 915
    :cond_0
    return-void
.end method

.method private isFileIntegerity(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .parameter "f"
    .parameter "digestFile"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 984
    iget-boolean v5, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mIsCheckFi:Z

    if-nez v5, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return v3

    .line 988
    :cond_1
    invoke-direct {p0, p2}, Lcom/baidu/server/dp/DynamicPermissionService;->readDigestFile(Ljava/io/File;)[B

    move-result-object v1

    .line 989
    .local v1, olddigest:[B
    if-nez v1, :cond_2

    .line 990
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 992
    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->computeFileDigest(Ljava/io/File;)[B

    move-result-object v0

    .line 993
    .local v0, fdigest:[B
    if-nez v0, :cond_3

    move v3, v4

    .line 994
    goto :goto_0

    .line 996
    :cond_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 997
    .local v2, ret:Z
    if-nez v2, :cond_4

    .line 998
    const-string v3, "DynamicPermissionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has been changed by others!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v3, v2

    .line 1001
    goto :goto_0
.end method

.method private isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .parameter "pi"

    .prologue
    const/4 v2, 0x1

    .line 1633
    const/4 v1, 0x0

    .line 1634
    .local v1, ret:Z
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1635
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 1636
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 1638
    :cond_0
    :goto_0
    return v1

    .line 1636
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkgName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1641
    const/4 v0, 0x0

    .line 1643
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1647
    :goto_0
    if-nez v0, :cond_0

    .line 1650
    :goto_1
    return v2

    :cond_0
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_1

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    .line 1644
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isSystemUser(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    .line 1624
    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lightScreen()V
    .locals 4

    .prologue
    .line 1464
    const v0, 0x1000001a

    .line 1465
    .local v0, flags:I
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "DynamciPermission"

    invoke-virtual {v2, v0, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 1466
    .local v1, wl:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1467
    return-void
.end method

.method public static main(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2030
    new-instance v0, Lcom/baidu/server/dp/DynamicPermissionService;

    invoke-direct {v0, p0}, Lcom/baidu/server/dp/DynamicPermissionService;-><init>(Landroid/content/Context;)V

    .line 2031
    .local v0, service:Lcom/baidu/server/dp/DynamicPermissionService;
    const-string v1, "DynamicPermissionService"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2033
    const-string v1, "DynamicPermissionService"

    const-string v2, "Add DynamicPermissionService to SystemServer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    return-void
.end method

.method private permInTimePolicy(Ljava/lang/String;)Z
    .locals 1
    .parameter "perm"

    .prologue
    .line 860
    const-string v0, "dynamic.permission.CONTACTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dynamic.permission.SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dynamic.permission.CALLLOG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dynamic.permission.SEND_MMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dynamic.permission.LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private popDialog(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)Z
    .locals 14
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1518
    iget-object v11, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pkgName:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 1555
    :goto_0
    return v9

    .line 1521
    :cond_0
    iget-object v6, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pkgName:Ljava/lang/String;

    .line 1524
    .local v6, pkgName:Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1528
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v11, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1529
    .local v5, pkgLabel:Ljava/lang/CharSequence;
    iget-object v11, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->perm:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/baidu/server/dp/DynamicPermissionService;->getPermResId(Ljava/lang/String;)I

    move-result v7

    .line 1533
    .local v7, resId:I
    new-instance v2, Lcom/baidu/server/dp/DynamicPermAlertDialog;

    iget-object v11, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v11}, Lcom/baidu/server/dp/DynamicPermAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1534
    .local v2, dialog:Lcom/baidu/server/dp/DynamicPermAlertDialog;
    invoke-virtual {v2, v9}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->setCancelable(Z)V

    .line 1535
    iget-object v11, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v11}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1536
    invoke-virtual {v2}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d3

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 1537
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    iget-object v11, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->perm:Ljava/lang/String;

    const-string v12, "android.permission.CALL_PHONE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1539
    iget-object v9, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->t:Lcom/baidu/server/dp/Transaction;

    check-cast v9, Lcom/baidu/server/dp/CallTransaction;

    iget-object v11, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Lcom/baidu/server/dp/CallTransaction;->getNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1540
    .local v4, number:Ljava/lang/String;
    if-eqz v4, :cond_2

    .end local v4           #number:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v4}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->setPhoneNum(Ljava/lang/String;)V

    .line 1553
    :cond_1
    :goto_2
    invoke-virtual {v2}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->show()V

    move v9, v10

    .line 1555
    goto :goto_0

    .line 1525
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #dialog:Lcom/baidu/server/dp/DynamicPermAlertDialog;
    .end local v5           #pkgLabel:Ljava/lang/CharSequence;
    .end local v7           #resId:I
    :catch_0
    move-exception v3

    .line 1526
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1540
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #dialog:Lcom/baidu/server/dp/DynamicPermAlertDialog;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #pkgLabel:Ljava/lang/CharSequence;
    .restart local v7       #resId:I
    :cond_2
    const-string v4, ""

    goto :goto_1

    .line 1541
    .end local v4           #number:Ljava/lang/String;
    :cond_3
    iget-object v11, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->perm:Ljava/lang/String;

    const-string v12, "android.permission.SEND_SMS"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1542
    iget-object v8, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->t:Lcom/baidu/server/dp/Transaction;

    check-cast v8, Lcom/baidu/server/dp/SmsTransaction;

    .line 1543
    .local v8, smst:Lcom/baidu/server/dp/SmsTransaction;
    invoke-virtual {v8}, Lcom/baidu/server/dp/SmsTransaction;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 1544
    .restart local v4       #number:Ljava/lang/String;
    if-eqz v4, :cond_4

    .end local v4           #number:Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v4}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->setPhoneNum(Ljava/lang/String;)V

    .line 1545
    iget v11, v8, Lcom/baidu/server/dp/SmsTransaction;->mType:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    .line 1546
    iget-object v9, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    const v11, #string@data_sms_msg#t

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->setSmsContent(Ljava/lang/String;)V

    goto :goto_2

    .line 1544
    .restart local v4       #number:Ljava/lang/String;
    :cond_4
    const-string v4, ""

    goto :goto_3

    .line 1548
    .end local v4           #number:Ljava/lang/String;
    :cond_5
    invoke-virtual {v8}, Lcom/baidu/server/dp/SmsTransaction;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 1549
    .local v1, content:Ljava/lang/String;
    iget-object v11, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    const v12, #string@sms_info_msg#t

    new-array v13, v10, [Ljava/lang/Object;

    if-eqz v1, :cond_6

    .end local v1           #content:Ljava/lang/String;
    :goto_4
    aput-object v1, v13, v9

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->setSmsContent(Ljava/lang/String;)V

    goto :goto_2

    .restart local v1       #content:Ljava/lang/String;
    :cond_6
    const-string v1, ""

    goto :goto_4
.end method

.method private readDigestFile(Ljava/io/File;)[B
    .locals 6
    .parameter "digestFile"

    .prologue
    .line 1038
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1039
    const/4 v4, 0x0

    .line 1055
    :goto_0
    return-object v4

    .line 1042
    :cond_0
    const/4 v4, 0x0

    .line 1044
    .local v4, ret:[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1045
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1046
    .local v3, is:Ljava/io/BufferedInputStream;
    const/16 v5, 0x10

    new-array v1, v5, [B

    .line 1048
    .local v1, digest:[B
    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_1

    .line 1049
    const/4 v5, 0x0

    invoke-static {v1, v5, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 1051
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1052
    .end local v0           #count:I
    .end local v1           #digest:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #is:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private readFromFile()Z
    .locals 2

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->readFromPermFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->readFromPreInstFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    const-string v0, "DynamicPermissionService"

    const-string v1, "Init from files done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mVersion:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 925
    const-string v0, "DynamicPermissionService"

    const-string/jumbo v1, "version not match, update permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->updateAllPermission()V

    .line 928
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->writeToFile()Z

    .line 930
    :cond_0
    const/4 v0, 0x1

    .line 934
    :goto_0
    return v0

    .line 933
    :cond_1
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->clearDb()V

    .line 934
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readFromPermFile()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1071
    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFileLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1072
    const/4 v3, 0x0

    .line 1073
    .local v3, str:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mBackupPermFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_5

    .line 1075
    :try_start_1
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mBackupPermFile:Ljava/io/File;

    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFileDigestFile:Ljava/io/File;

    invoke-direct {p0, v7, v8}, Lcom/baidu/server/dp/DynamicPermissionService;->isFileIntegerity(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1077
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mBackupPermFile:Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3           #str:Ljava/io/FileInputStream;
    .local v4, str:Ljava/io/FileInputStream;
    move-object v3, v4

    .line 1084
    .end local v4           #str:Ljava/io/FileInputStream;
    .restart local v3       #str:Ljava/io/FileInputStream;
    :goto_0
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1085
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    move-object v4, v3

    .line 1092
    .end local v3           #str:Ljava/io/FileInputStream;
    .restart local v4       #str:Ljava/io/FileInputStream;
    :goto_1
    if-nez v4, :cond_4

    .line 1093
    :try_start_2
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v7

    if-nez v7, :cond_2

    .line 1094
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v4

    .line 1135
    .end local v4           #str:Ljava/io/FileInputStream;
    .restart local v3       #str:Ljava/io/FileInputStream;
    :goto_2
    return v5

    .line 1081
    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mBackupPermFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1087
    :catch_0
    move-exception v7

    move-object v4, v3

    .end local v3           #str:Ljava/io/FileInputStream;
    .restart local v4       #str:Ljava/io/FileInputStream;
    goto :goto_1

    .line 1096
    :cond_2
    :try_start_5
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFileDigestFile:Ljava/io/File;

    invoke-direct {p0, v7, v8}, Lcom/baidu/server/dp/DynamicPermissionService;->isFileIntegerity(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1098
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1107
    .end local v4           #str:Ljava/io/FileInputStream;
    .restart local v3       #str:Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1108
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1111
    .local v2, is:Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mIsOn:Z

    .line 1114
    invoke-direct {p0, v2}, Lcom/baidu/server/dp/DynamicPermissionService;->readPermissions(Ljava/io/DataInputStream;)V

    .line 1117
    invoke-direct {p0, v2}, Lcom/baidu/server/dp/DynamicPermissionService;->readTrustedList(Ljava/io/DataInputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1120
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mVersion:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1128
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 1130
    const-string v7, "DynamicPermissionService"

    const-string v8, "Read premissions done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1135
    const/4 v5, 0x1

    :try_start_9
    monitor-exit v6

    goto :goto_2

    .line 1136
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #is:Ljava/io/DataInputStream;
    :catchall_0
    move-exception v5

    :goto_5
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v5

    .line 1102
    .end local v3           #str:Ljava/io/FileInputStream;
    .restart local v4       #str:Ljava/io/FileInputStream;
    :cond_3
    :try_start_a
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 1103
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v3, v4

    .end local v4           #str:Ljava/io/FileInputStream;
    .restart local v3       #str:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1121
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #is:Ljava/io/DataInputStream;
    :catch_1
    move-exception v1

    .line 1124
    .local v1, e:Ljava/io/IOException;
    :try_start_c
    const-string v7, "DynamicPermissionService"

    const-string/jumbo v8, "no version number to read"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .line 1132
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/DataInputStream;
    :catch_2
    move-exception v1

    .line 1133
    .restart local v1       #e:Ljava/io/IOException;
    :goto_6
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    .line 1136
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #str:Ljava/io/FileInputStream;
    .restart local v4       #str:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #str:Ljava/io/FileInputStream;
    .restart local v3       #str:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1132
    .end local v3           #str:Ljava/io/FileInputStream;
    .restart local v4       #str:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #str:Ljava/io/FileInputStream;
    .restart local v3       #str:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v3           #str:Ljava/io/FileInputStream;
    .restart local v4       #str:Ljava/io/FileInputStream;
    :cond_4
    move-object v3, v4

    .end local v4           #str:Ljava/io/FileInputStream;
    .restart local v3       #str:Ljava/io/FileInputStream;
    goto :goto_3

    :cond_5
    move-object v4, v3

    .end local v3           #str:Ljava/io/FileInputStream;
    .restart local v4       #str:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private readFromPms()V
    .locals 5

    .prologue
    .line 1302
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x1040

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1304
    .local v2, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 1305
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1306
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1307
    .local v1, pi:Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1}, Lcom/baidu/server/dp/DynamicPermissionService;->addPermission(Landroid/content/pm/PackageInfo;)V

    .line 1305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1312
    .end local v0           #i:I
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v3, "DynamicPermissionService"

    const-string v4, "Init from Pms done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return-void
.end method

.method private readFromPreInstFile()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 962
    iget-object v5, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstFileLock:Ljava/lang/Object;

    monitor-enter v5

    .line 963
    :try_start_0
    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalledFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 964
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    :goto_0
    return v4

    .line 967
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalledFile:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 968
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 969
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 970
    .local v3, is:Ljava/io/DataInputStream;
    invoke-direct {p0, v3}, Lcom/baidu/server/dp/DynamicPermissionService;->readPreInstalled(Ljava/io/DataInputStream;)V

    .line 971
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 974
    const-string v6, "DynamicPermissionService"

    const-string v7, "Read pre-installed packages done"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 980
    const/4 v4, 0x1

    :try_start_2
    monitor-exit v5

    goto :goto_0

    .line 981
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #is:Ljava/io/DataInputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 976
    :catch_0
    move-exception v1

    .line 977
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    const-string v6, "DynamicPermissionService"

    const-string v7, "Read pre-installed packages error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private readPermissions(Ljava/io/DataInputStream;)V
    .locals 9
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1152
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1153
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1154
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 1155
    .local v7, pkgName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 1156
    .local v5, permNum:I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1157
    .local v6, perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1158
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 1159
    .local v4, perm:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1160
    .local v1, grant:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1162
    .end local v1           #grant:I
    .end local v4           #perm:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1164
    .end local v3           #j:I
    .end local v5           #permNum:I
    .end local v6           #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private readPreInstalled(Ljava/io/DataInputStream;)V
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1174
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1175
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 1176
    .local v3, pkgName:Ljava/lang/String;
    const/16 v4, 0x10

    new-array v1, v4, [B

    .line 1177
    .local v1, digest:[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 1178
    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1180
    .end local v1           #digest:[B
    .end local v3           #pkgName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private readTrustedList(Ljava/io/DataInputStream;)V
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1166
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1167
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1168
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 1169
    .local v2, pkgName:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1171
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private removePackageLog(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    .line 1422
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1424
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "content://com.baidu.dperm/logs"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1425
    .local v0, contentUri:Landroid/net/Uri;
    const-string v3, "app_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    .end local v0           #contentUri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1426
    :catch_0
    move-exception v2

    .line 1427
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "DynamicPermissionService"

    const-string v4, "delete log failed."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removePermission(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    monitor-enter v1

    .line 1345
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    const-string v0, "DynamicPermissionService"

    const-string/jumbo v1, "removePermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->dump()V

    .line 1351
    return-void

    .line 1346
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeUserDecision(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 1694
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1695
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1696
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;

    .line 1697
    .local v1, ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;->cr:Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;

    iget-object v2, v2, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1698
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mHandler:Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1699
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1700
    add-int/lit8 v0, v0, -0x1

    .line 1695
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1711
    .end local v1           #ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    :cond_1
    monitor-exit v3

    .line 1712
    return-void

    .line 1711
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendInitUbcBroadcast(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x1

    .line 468
    invoke-virtual {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->savePackage(Ljava/lang/String;)I

    move-result v1

    .line 469
    .local v1, perms:I
    const/4 v2, -0x1

    .line 470
    .local v2, trusted:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 471
    const/high16 v3, 0x30

    and-int/2addr v3, v1

    shr-int/lit8 v2, v3, 0x14

    .line 472
    if-eqz v2, :cond_0

    if-ne v2, v4, :cond_1

    .line 477
    :cond_0
    if-ne v2, v4, :cond_3

    .line 478
    const/4 v2, 0x0

    .line 482
    :goto_0
    int-to-byte v3, v2

    invoke-direct {p0, p1, v3}, Lcom/baidu/server/dp/DynamicPermissionService;->ubcReportTrusted(Ljava/lang/String;B)V

    .line 485
    :cond_1
    const/4 v0, 0x0

    .line 486
    .local v0, eventSrc:B
    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/server/dp/DynamicPermissionService;->ubcReportPermissions(Ljava/lang/String;BI)V

    .line 488
    .end local v0           #eventSrc:B
    :cond_2
    return-void

    .line 480
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private sendUbcBroadcast(J[B)V
    .locals 2
    .parameter "metricId"
    .parameter "data"

    .prologue
    .line 395
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 396
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v1, "METRICID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 398
    const-string v1, "METRICDATA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    return-void
.end method

.method private setPermission(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 3
    .parameter "pkgName"
    .parameter "perm"
    .parameter "grant"
    .parameter "notAdd"
    .parameter "sync"

    .prologue
    .line 675
    sget-object v1, Lcom/baidu/server/dp/DynamicPermissionService;->sDynPermMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    iget-object v2, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    monitor-enter v2

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 680
    .local v0, perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_3

    .line 681
    if-eqz p4, :cond_2

    .line 682
    monitor-exit v2

    goto :goto_0

    .line 693
    .end local v0           #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 684
    .restart local v0       #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 686
    .restart local v0       #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    if-eqz p4, :cond_4

    .line 687
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 688
    monitor-exit v2

    goto :goto_0

    .line 691
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    if-eqz p5, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->writeToPermFile()Z

    goto :goto_0
.end method

.method private setTrusted(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "pkgName"
    .parameter "trust"
    .parameter "sync"

    .prologue
    .line 623
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    monitor-enter v1

    .line 624
    if-eqz p2, :cond_1

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 629
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    if-eqz p3, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->writeToPermFile()Z

    .line 633
    :cond_0
    return-void

    .line 627
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private turnOff(Z)V
    .locals 1
    .parameter "sync"

    .prologue
    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mIsOn:Z

    .line 556
    if-eqz p1, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->writeToPermFile()Z

    .line 559
    :cond_0
    return-void
.end method

.method private turnOn(Z)V
    .locals 1
    .parameter "sync"

    .prologue
    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mIsOn:Z

    .line 534
    if-eqz p1, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->writeToPermFile()Z

    .line 537
    :cond_0
    return-void
.end method

.method private ubcPermToInt([Ljava/lang/String;[I)I
    .locals 8
    .parameter "perms"
    .parameter "values"

    .prologue
    .line 491
    const/4 v6, -0x1

    .line 492
    .local v6, ret:I
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPerms:[Ljava/lang/String;

    .line 493
    .local v0, dynPerms:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, p1

    if-ge v3, v7, :cond_4

    .line 494
    const/4 v1, -0x1

    .line 495
    .local v1, found:I
    aget-object v5, p1, v3

    .line 496
    .local v5, perm:Ljava/lang/String;
    aget v2, p2, v3

    .line 497
    .local v2, grant:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_0

    .line 498
    aget-object v7, v0, v4

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 499
    move v1, v4

    .line 503
    :cond_0
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    .line 504
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_1

    .line 505
    const/4 v2, 0x2

    .line 507
    :cond_1
    sget-object v7, Lcom/baidu/server/dp/DynamicPermissionService;->sPermMasks:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    .line 508
    sget-object v7, Lcom/baidu/server/dp/DynamicPermissionService;->sPermShifts:[I

    aget v7, v7, v1

    shl-int v7, v2, v7

    or-int/2addr v6, v7

    .line 493
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 511
    .end local v1           #found:I
    .end local v2           #grant:I
    .end local v4           #j:I
    .end local v5           #perm:Ljava/lang/String;
    :cond_4
    return v6
.end method

.method private ubcReportDisable(Z)V
    .locals 8
    .parameter "disable"

    .prologue
    const-wide/32 v6, 0x1001903

    .line 403
    new-instance v0, Lcom/baidu/server/dp/MetricBuilder;

    invoke-direct {v0}, Lcom/baidu/server/dp/MetricBuilder;-><init>()V

    .line 404
    .local v0, builder:Lcom/baidu/server/dp/MetricBuilder;
    invoke-virtual {v0, v6, v7}, Lcom/baidu/server/dp/MetricBuilder;->setMetricId(J)V

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/baidu/server/dp/MetricBuilder;->appendINT(I)V

    .line 406
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 407
    .local v1, count:I
    :goto_0
    invoke-virtual {v0, v1}, Lcom/baidu/server/dp/MetricBuilder;->appendINT(I)V

    .line 408
    invoke-virtual {v0}, Lcom/baidu/server/dp/MetricBuilder;->buffer()[B

    move-result-object v2

    invoke-direct {p0, v6, v7, v2}, Lcom/baidu/server/dp/DynamicPermissionService;->sendUbcBroadcast(J[B)V

    .line 410
    const-string v2, "DynamicPermissionService"

    const-string/jumbo v3, "send ubc broadcast 16783619"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void

    .line 406
    .end local v1           #count:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ubcReportPermissions(Ljava/lang/String;BI)V
    .locals 7
    .parameter "pkgName"
    .parameter "src"
    .parameter "perms"

    .prologue
    const-wide/32 v5, 0x1001905

    .line 451
    new-instance v0, Lcom/baidu/server/dp/MetricBuilder;

    invoke-direct {v0}, Lcom/baidu/server/dp/MetricBuilder;-><init>()V

    .line 452
    .local v0, builder:Lcom/baidu/server/dp/MetricBuilder;
    invoke-virtual {v0, v5, v6}, Lcom/baidu/server/dp/MetricBuilder;->setMetricId(J)V

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/baidu/server/dp/MetricBuilder;->appendINT(I)V

    .line 455
    invoke-virtual {v0, p1}, Lcom/baidu/server/dp/MetricBuilder;->appendStringZ(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, p2}, Lcom/baidu/server/dp/MetricBuilder;->appendCHAR(B)V

    .line 459
    invoke-virtual {v0, p3}, Lcom/baidu/server/dp/MetricBuilder;->appendINT(I)V

    .line 460
    invoke-virtual {v0}, Lcom/baidu/server/dp/MetricBuilder;->buffer()[B

    move-result-object v1

    invoke-direct {p0, v5, v6, v1}, Lcom/baidu/server/dp/DynamicPermissionService;->sendUbcBroadcast(J[B)V

    .line 462
    const-string v1, "DynamicPermissionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send ubc broadcast 16783621 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method

.method private ubcReportPermissions(Ljava/lang/String;BLjava/lang/String;I)V
    .locals 5
    .parameter "pkgName"
    .parameter "src"
    .parameter "perm"
    .parameter "grant"

    .prologue
    .line 434
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPerms:[Ljava/lang/String;

    .line 435
    .local v0, dynPerms:[Ljava/lang/String;
    const/4 v1, -0x1

    .line 436
    .local v1, found:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 437
    aget-object v4, v0, v2

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 438
    move v1, v2

    .line 442
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 443
    const/4 v3, -0x1

    .line 444
    .local v3, permInt:I
    sget-object v4, Lcom/baidu/server/dp/DynamicPermissionService;->sPermMasks:[I

    aget v4, v4, v1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    .line 445
    sget-object v4, Lcom/baidu/server/dp/DynamicPermissionService;->sPermShifts:[I

    aget v4, v4, v1

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    .line 446
    invoke-direct {p0, p1, p2, v3}, Lcom/baidu/server/dp/DynamicPermissionService;->ubcReportPermissions(Ljava/lang/String;BI)V

    .line 448
    .end local v3           #permInt:I
    :cond_1
    return-void

    .line 436
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private ubcReportTrusted(Ljava/lang/String;B)V
    .locals 8
    .parameter "pkgName"
    .parameter "trusted"

    .prologue
    const-wide/32 v6, 0x1001904

    .line 418
    new-instance v0, Lcom/baidu/server/dp/MetricBuilder;

    invoke-direct {v0}, Lcom/baidu/server/dp/MetricBuilder;-><init>()V

    .line 419
    .local v0, builder:Lcom/baidu/server/dp/MetricBuilder;
    invoke-virtual {v0, v6, v7}, Lcom/baidu/server/dp/MetricBuilder;->setMetricId(J)V

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/baidu/server/dp/MetricBuilder;->appendINT(I)V

    .line 422
    invoke-virtual {v0, p1}, Lcom/baidu/server/dp/MetricBuilder;->appendStringZ(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p2}, Lcom/baidu/server/dp/MetricBuilder;->appendCHAR(B)V

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, type:B
    invoke-virtual {v0, v1}, Lcom/baidu/server/dp/MetricBuilder;->appendCHAR(B)V

    .line 428
    invoke-virtual {v0}, Lcom/baidu/server/dp/MetricBuilder;->buffer()[B

    move-result-object v2

    invoke-direct {p0, v6, v7, v2}, Lcom/baidu/server/dp/DynamicPermissionService;->sendUbcBroadcast(J[B)V

    .line 430
    const-string v2, "DynamicPermissionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send ubc broadcast 16783620 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method private ubcReportTrusted(Ljava/lang/String;Z)V
    .locals 2
    .parameter "pkgName"
    .parameter "trusted"

    .prologue
    .line 414
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 415
    .local v0, trust:I
    :goto_0
    int-to-byte v1, v0

    invoke-direct {p0, p1, v1}, Lcom/baidu/server/dp/DynamicPermissionService;->ubcReportTrusted(Ljava/lang/String;B)V

    .line 416
    return-void

    .line 414
    .end local v0           #trust:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAllPermission()V
    .locals 0

    .prologue
    .line 1862
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->updatePreInstalled()V

    .line 1863
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->updatePackagePermission()V

    .line 1864
    return-void
.end method

.method private updateDigest(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .parameter "f"
    .parameter "digestFile"

    .prologue
    .line 1004
    iget-boolean v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mIsCheckFi:Z

    if-nez v1, :cond_0

    .line 1013
    :goto_0
    return-void

    .line 1007
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->computeFileDigest(Ljava/io/File;)[B

    move-result-object v0

    .line 1009
    .local v0, newdigest:[B
    invoke-direct {p0, v0, p2}, Lcom/baidu/server/dp/DynamicPermissionService;->writeDigestFile([BLjava/io/File;)V

    .line 1011
    const-string v1, "DynamicPermissionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDigest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePackagePermission()V
    .locals 9

    .prologue
    .line 1869
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1040

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 1872
    .local v6, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v6, :cond_3

    .line 1873
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 1874
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1875
    .local v4, pi:Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1884
    .local v5, pkgName:Ljava/lang/String;
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 1885
    const/4 v2, 0x0

    .line 1886
    .local v2, inPerm:Z
    const/4 v3, 0x0

    .line 1887
    .local v3, inPre:Z
    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    monitor-enter v8

    .line 1888
    :try_start_0
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 1889
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    monitor-enter v8

    .line 1891
    :try_start_1
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 1892
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1893
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 1896
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v7}, Lcom/baidu/server/dp/DynamicPermissionService;->getSignatureDigest([Landroid/content/pm/Signature;)[B

    move-result-object v0

    .line 1897
    .local v0, digest:[B
    if-eqz v0, :cond_0

    .line 1898
    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    monitor-enter v8

    .line 1899
    :try_start_2
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1904
    :cond_0
    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    monitor-enter v8

    .line 1905
    :try_start_3
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1906
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1873
    .end local v0           #digest:[B
    .end local v2           #inPerm:Z
    .end local v3           #inPre:Z
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1889
    .restart local v2       #inPerm:Z
    .restart local v3       #inPre:Z
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 1892
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 1900
    .restart local v0       #digest:[B
    :catchall_2
    move-exception v7

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v7

    .line 1906
    :catchall_3
    move-exception v7

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v7

    .line 1909
    .end local v0           #digest:[B
    .end local v2           #inPerm:Z
    .end local v3           #inPre:Z
    :cond_2
    invoke-direct {p0, v5}, Lcom/baidu/server/dp/DynamicPermissionService;->updatePackagePermission(Ljava/lang/String;)V

    goto :goto_1

    .line 1913
    .end local v1           #i:I
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private updatePackagePermission(Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"

    .prologue
    .line 1801
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->updatePackagePermission(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1802
    return-void
.end method

.method private updatePackagePermission(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .parameter "pkg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1815
    .local p2, defaultPerms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    monitor-enter v9

    .line 1816
    :try_start_0
    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 1817
    .local v7, perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v7, :cond_0

    .line 1818
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1821
    .restart local v7       #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    sget-object v8, Lcom/baidu/server/dp/DynamicPermissionService;->sDynPermMaps:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1822
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1823
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1826
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1827
    .local v1, dp:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 1828
    .local v6, ops:[Ljava/lang/String;
    const/4 v3, -0x1

    .line 1829
    .local v3, grant:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v6

    if-ge v4, v8, :cond_2

    .line 1830
    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    aget-object v10, v6, v4

    invoke-virtual {v8, v10, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1831
    if-nez v3, :cond_5

    .line 1836
    :cond_2
    if-nez v3, :cond_6

    .line 1837
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1839
    const/4 v0, 0x0

    .line 1840
    .local v0, defPerm:Ljava/lang/Integer;
    if-eqz p2, :cond_3

    .line 1841
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #defPerm:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 1843
    .restart local v0       #defPerm:Ljava/lang/Integer;
    :cond_3
    if-nez v0, :cond_4

    .line 1844
    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1846
    :cond_4
    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1859
    .end local v0           #defPerm:Ljava/lang/Integer;
    .end local v1           #dp:Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v3           #grant:I
    .end local v4           #i:I
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    .end local v6           #ops:[Ljava/lang/String;
    .end local v7           #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1829
    .restart local v1       #dp:Ljava/lang/String;
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v3       #grant:I
    .restart local v4       #i:I
    .restart local v5       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    .restart local v6       #ops:[Ljava/lang/String;
    .restart local v7       #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1849
    :cond_6
    :try_start_1
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1850
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1854
    .end local v1           #dp:Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v3           #grant:I
    .end local v4           #i:I
    .end local v6           #ops:[Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_8

    .line 1855
    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    :goto_2
    monitor-exit v9

    .line 1860
    return-void

    .line 1857
    :cond_8
    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private updatePreInstalled()V
    .locals 0

    .prologue
    .line 1867
    return-void
.end method

.method private updateUidPermission(ILjava/lang/String;)V
    .locals 5
    .parameter "uid"
    .parameter "pkgName"

    .prologue
    .line 1721
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1722
    .local v2, pkgs:[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1723
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1724
    aget-object v3, v2, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1725
    invoke-direct {p0, p2}, Lcom/baidu/server/dp/DynamicPermissionService;->getPackageDefaultPermission(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1726
    .local v0, defaultPerms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    aget-object v3, v2, v1

    invoke-direct {p0, v3, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->updatePackagePermission(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1723
    .end local v0           #defaultPerms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1728
    :cond_0
    aget-object v3, v2, v1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/baidu/server/dp/DynamicPermissionService;->updatePackagePermission(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 1732
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private validCaller()Z
    .locals 2

    .prologue
    .line 520
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 521
    .local v0, uid:I
    invoke-direct {p0, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->isSystemUser(I)Z

    move-result v1

    return v1
.end method

.method private writeDigestFile([BLjava/io/File;)V
    .locals 3
    .parameter "digest"
    .parameter "digestFile"

    .prologue
    .line 1059
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1060
    .local v0, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1061
    .local v1, os:Ljava/io/BufferedOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1062
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1063
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1064
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .end local v1           #os:Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private writeLog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "pkgName"
    .parameter "perm"
    .parameter "gtype"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mHandler:Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-instance v3, Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;

    invoke-direct {v3, p1, p2, p3}, Lcom/baidu/server/dp/DynamicPermissionService$LogEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;->sendMessage(Landroid/os/Message;)Z

    .line 857
    return-void
.end method

.method private writeLogIfNeeded(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;I)V
    .locals 8
    .parameter "cr"
    .parameter "gtype"

    .prologue
    .line 834
    iget-object v1, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pkgName:Ljava/lang/String;

    .line 835
    .local v1, pkgName:Ljava/lang/String;
    iget-object v0, p1, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->perm:Ljava/lang/String;

    .line 837
    .local v0, perm:Ljava/lang/String;
    const-string v3, "android.permission.SEND_SMS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 839
    :cond_0
    invoke-direct {p0, v1, v0, p2}, Lcom/baidu/server/dp/DynamicPermissionService;->writeLog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 852
    :cond_1
    :goto_0
    return-void

    .line 841
    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/server/dp/DynamicPermissionService;->getTrustDecision(Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;)Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;

    move-result-object v2

    .line 842
    .local v2, td:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    if-nez v2, :cond_1

    .line 843
    new-instance v2, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;

    .end local v2           #td:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;-><init>(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;I)V

    .line 844
    .restart local v2       #td:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustDecisions:Ljava/util/ArrayList;

    monitor-enter v4

    .line 845
    :try_start_0
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustDecisions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mHandler:Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v5, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-wide v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTimeoutInterval:J

    invoke-virtual {v3, v5, v6, v7}, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 848
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    invoke-direct {p0, v1, v0, p2}, Lcom/baidu/server/dp/DynamicPermissionService;->writeLog(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 848
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private writePermissions(Ljava/io/DataOutputStream;)V
    .locals 12
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1231
    iget-object v11, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    monitor-enter v11

    .line 1233
    :try_start_0
    iget-object v10, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1234
    .local v0, count:I
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1237
    iget-object v10, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1239
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1240
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1241
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1242
    .local v9, pkgName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 1245
    .local v8, perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 1249
    .local v7, permNum:I
    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1252
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1254
    .local v5, permIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1255
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1256
    .local v4, permEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1257
    .local v6, permName:Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1258
    .local v2, grant:I
    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 1262
    .end local v0           #count:I
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v2           #grant:I
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v4           #permEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5           #permIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v6           #permName:Ljava/lang/String;
    .end local v7           #permNum:I
    .end local v8           #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v0       #count:I
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_1
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1263
    return-void
.end method

.method private writePreInstalled(Ljava/io/DataOutputStream;)V
    .locals 7
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1282
    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    monitor-enter v6

    .line 1283
    :try_start_0
    iget-object v5, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 1286
    .local v0, count:I
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1287
    iget-object v5, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1289
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1290
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1291
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1292
    .local v4, pkgName:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1293
    .local v1, digest:[B
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 1296
    .end local v0           #count:I
    .end local v1           #digest:[B
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    .end local v4           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #count:I
    .restart local v3       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1297
    return-void
.end method

.method private writeToFile()Z
    .locals 3

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->writeToPermFile()Z

    move-result v0

    .line 938
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->writeToPreInstFile()Z

    move-result v1

    .line 939
    .local v1, ret2:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private writeToPermFile()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1183
    iget-object v5, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFileLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1184
    :try_start_0
    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1185
    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mBackupPermFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1186
    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mBackupPermFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1187
    monitor-exit v5

    .line 1226
    :goto_0
    return v4

    .line 1190
    :cond_0
    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1196
    .local v2, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1197
    .local v0, bos:Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1200
    .local v3, os:Ljava/io/DataOutputStream;
    iget-boolean v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mIsOn:Z

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1203
    invoke-direct {p0, v3}, Lcom/baidu/server/dp/DynamicPermissionService;->writePermissions(Ljava/io/DataOutputStream;)V

    .line 1206
    invoke-direct {p0, v3}, Lcom/baidu/server/dp/DynamicPermissionService;->writeTrustedList(Ljava/io/DataOutputStream;)V

    .line 1209
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1211
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 1212
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1213
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1216
    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFileDigestFile:Ljava/io/File;

    invoke-direct {p0, v6, v7}, Lcom/baidu/server/dp/DynamicPermissionService;->updateDigest(Ljava/io/File;Ljava/io/File;)V

    .line 1217
    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mBackupPermFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1219
    const-string v6, "DynamicPermissionService"

    const-string/jumbo v7, "write to perm file done"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1221
    const/4 v4, 0x1

    :try_start_2
    monitor-exit v5

    goto :goto_0

    .line 1227
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #os:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1222
    :catch_0
    move-exception v1

    .line 1223
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    const-string v6, "DynamicPermissionService"

    const-string/jumbo v7, "write to perm file exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v6, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1226
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private writeToPreInstFile()Z
    .locals 7

    .prologue
    .line 942
    iget-object v5, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstFileLock:Ljava/lang/Object;

    monitor-enter v5

    .line 944
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalledFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 945
    .local v2, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 946
    .local v0, bos:Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 947
    .local v3, os:Ljava/io/DataOutputStream;
    invoke-direct {p0, v3}, Lcom/baidu/server/dp/DynamicPermissionService;->writePreInstalled(Ljava/io/DataOutputStream;)V

    .line 948
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 949
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 950
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 952
    const-string v4, "DynamicPermissionService"

    const-string v6, "Write pre-installed packages done"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    const/4 v4, 0x1

    :try_start_1
    monitor-exit v5

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #os:Ljava/io/DataOutputStream;
    :goto_0
    return v4

    .line 954
    :catch_0
    move-exception v1

    .line 956
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_0

    .line 959
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private writeTrustedList(Ljava/io/DataOutputStream;)V
    .locals 5
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1266
    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    monitor-enter v4

    .line 1267
    :try_start_0
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 1270
    .local v0, count:I
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1273
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1274
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1276
    .local v2, pkgName:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 1278
    .end local v0           #count:I
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #count:I
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1279
    return-void
.end method


# virtual methods
.method public checkCallPermission(IIJLcom/baidu/server/dp/CallTransaction;)I
    .locals 7
    .parameter "uid"
    .parameter "pid"
    .parameter "time"
    .parameter "t"

    .prologue
    .line 759
    const-string v3, "android.permission.CALL_PHONE"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/server/dp/DynamicPermissionService;->checkPermission(IILjava/lang/String;JLcom/baidu/server/dp/Transaction;)I

    move-result v0

    return v0
.end method

.method public checkPermissionSync(IILjava/lang/String;JLcom/baidu/server/dp/ISyncTransport;)I
    .locals 7
    .parameter "uid"
    .parameter "pid"
    .parameter "perm"
    .parameter "time"
    .parameter "it"

    .prologue
    .line 764
    new-instance v6, Lcom/baidu/server/dp/SyncTransaction;

    invoke-direct {v6, p6}, Lcom/baidu/server/dp/SyncTransaction;-><init>(Lcom/baidu/server/dp/ISyncTransport;)V

    .local v6, t:Lcom/baidu/server/dp/SyncTransaction;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 765
    invoke-direct/range {v0 .. v6}, Lcom/baidu/server/dp/DynamicPermissionService;->checkPermission(IILjava/lang/String;JLcom/baidu/server/dp/Transaction;)I

    move-result v0

    return v0
.end method

.method public checkSendSmsPermission(IIJLcom/baidu/server/dp/SmsTransaction;)I
    .locals 7
    .parameter "uid"
    .parameter "pid"
    .parameter "time"
    .parameter "t"

    .prologue
    .line 747
    const-string v3, "android.permission.SEND_SMS"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/server/dp/DynamicPermissionService;->checkPermission(IILjava/lang/String;JLcom/baidu/server/dp/Transaction;)I

    move-result v0

    return v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mIsOn:Z

    return v0
.end method

.method public isPreInstalled(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    .line 588
    iget-object v5, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    monitor-enter v5

    .line 589
    const/4 v2, 0x0

    .line 590
    .local v2, ret:Z
    :try_start_0
    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPreInstalled:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    .local v3, storedDigest:[B
    if-eqz v3, :cond_0

    .line 592
    const/4 v1, 0x0

    .line 594
    .local v1, pi:Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 595
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v4}, Lcom/baidu/server/dp/DynamicPermissionService;->getSignatureDigest([Landroid/content/pm/Signature;)[B

    move-result-object v0

    .line 596
    .local v0, digest:[B
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    const/4 v2, 0x1

    .line 603
    .end local v0           #digest:[B
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5

    return v2

    .line 604
    .end local v3           #storedDigest:[B
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 599
    .restart local v1       #pi:Landroid/content/pm/PackageInfo;
    .restart local v3       #storedDigest:[B
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public isTrusted(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 582
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    monitor-enter v1

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryPackagePermission(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 669
    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    monitor-enter v1

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "pkgName"
    .parameter "perm"

    .prologue
    .line 652
    iget-object v4, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    monitor-enter v4

    .line 653
    :try_start_0
    iget-object v3, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 654
    .local v2, perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v2, :cond_0

    .line 655
    const/4 v1, 0x0

    .line 664
    .local v1, grant:I
    :goto_0
    monitor-exit v4

    .line 665
    return v1

    .line 657
    .end local v1           #grant:I
    :cond_0
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 658
    .local v0, g:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 659
    const/4 v1, 0x0

    .restart local v1       #grant:I
    goto :goto_0

    .line 661
    .end local v1           #grant:I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #grant:I
    goto :goto_0

    .line 664
    .end local v0           #g:Ljava/lang/Integer;
    .end local v1           #grant:I
    .end local v2           #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public savePackage(Ljava/lang/String;)I
    .locals 9
    .parameter "pkgName"

    .prologue
    .line 1955
    sget-object v0, Lcom/baidu/server/dp/DynamicPermissionManager;->sDynPerms:[Ljava/lang/String;

    .line 1956
    .local v0, allPerm:[Ljava/lang/String;
    const/4 v5, -0x1

    .line 1958
    .local v5, res:I
    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    monitor-enter v8

    .line 1959
    :try_start_0
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1960
    .local v4, perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v4, :cond_2

    .line 1961
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_2

    .line 1962
    aget-object v7, v0, v1

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1963
    .local v2, ip:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 1964
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1965
    .local v3, p:I
    and-int/lit8 v7, v3, 0x10

    if-eqz v7, :cond_0

    .line 1966
    const/4 v3, 0x2

    .line 1969
    :cond_0
    sget-object v7, Lcom/baidu/server/dp/DynamicPermissionService;->sPermMasks:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v5, v7

    .line 1971
    sget-object v7, Lcom/baidu/server/dp/DynamicPermissionService;->sPermShifts:[I

    aget v7, v7, v1

    shl-int v7, v3, v7

    or-int/2addr v5, v7

    .line 1961
    .end local v3           #p:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1975
    .end local v1           #i:I
    .end local v2           #ip:Ljava/lang/Integer;
    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 1978
    const/4 v6, 0x0

    .line 1979
    .local v6, trust:Z
    iget-object v8, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    monitor-enter v8

    .line 1980
    :try_start_1
    iget-object v7, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mTrustedList:Ljava/util/HashSet;

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 1981
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1982
    const v7, -0x300001

    and-int/2addr v5, v7

    .line 1983
    if-eqz v6, :cond_4

    const/4 v7, 0x0

    :goto_1
    shl-int/lit8 v7, v7, 0x14

    or-int/2addr v5, v7

    .line 1989
    .end local v6           #trust:Z
    :cond_3
    return v5

    .line 1975
    .end local v4           #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1981
    .restart local v4       #perms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6       #trust:Z
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 1983
    :cond_4
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public setPermission(Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 1
    .parameter "pkgName"
    .parameter "perm"
    .parameter "grant"

    .prologue
    .line 706
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->setPermissionWithSrc(Ljava/lang/String;[Ljava/lang/String;[IB)V

    .line 707
    return-void
.end method

.method public setPermissionWithSrc(Ljava/lang/String;[Ljava/lang/String;[IB)V
    .locals 8
    .parameter "pkgName"
    .parameter "perm"
    .parameter "grant"
    .parameter "src"

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->validCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    .line 724
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, p2

    if-ge v6, v0, :cond_2

    .line 725
    aget-object v2, p2, v6

    aget v3, p3, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/server/dp/DynamicPermissionService;->setPermission(Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 724
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 727
    :cond_2
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->writeToPermFile()Z

    .line 730
    iget-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUbcEnabled:Z

    if-eqz v0, :cond_0

    .line 731
    invoke-direct {p0, p2, p3}, Lcom/baidu/server/dp/DynamicPermissionService;->ubcPermToInt([Ljava/lang/String;[I)I

    move-result v7

    .line 732
    .local v7, permInt:I
    invoke-direct {p0, p1, p4, v7}, Lcom/baidu/server/dp/DynamicPermissionService;->ubcReportPermissions(Ljava/lang/String;BI)V

    goto :goto_0
.end method

.method public setTrusted(Ljava/lang/String;Z)V
    .locals 1
    .parameter "pkgName"
    .parameter "trust"

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->validCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 644
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->setTrusted(Ljava/lang/String;ZZ)V

    .line 646
    invoke-direct {p0, p1, p2}, Lcom/baidu/server/dp/DynamicPermissionService;->ubcReportTrusted(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public turnOff()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 565
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->validCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/server/dp/DynamicPermissionService;->turnOff(Z)V

    .line 571
    iget-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUbcEnabled:Z

    if-eqz v0, :cond_0

    .line 572
    invoke-direct {p0, v1}, Lcom/baidu/server/dp/DynamicPermissionService;->ubcReportDisable(Z)V

    goto :goto_0
.end method

.method public turnOn()V
    .locals 1

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/baidu/server/dp/DynamicPermissionService;->validCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->turnOn(Z)V

    .line 549
    iget-boolean v0, p0, Lcom/baidu/server/dp/DynamicPermissionService;->mUbcEnabled:Z

    if-eqz v0, :cond_0

    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/server/dp/DynamicPermissionService;->ubcReportDisable(Z)V

    goto :goto_0
.end method
