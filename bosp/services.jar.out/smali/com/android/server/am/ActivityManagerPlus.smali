.class public final Lcom/android/server/am/ActivityManagerPlus;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"


# static fields
.field static final BOOST_DOWNLOADING_ADJ:I = 0x7

.field private static final DEBUG_OOM:Z = false

.field private static final DEBUG_OOM_BOOST:Z = false

.field static final OTHER_SERVER_ADJ:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ActivityManagerPlus"

.field static final THIRD_PARTY_HIGHEST_SERVER_ADJ:I = 0x6

.field static final THIRD_PARTY_SERVER_ADJ:I = 0x7

.field static final mInHouseAppWhiteList:[Ljava/lang/String;

.field public static final mProcessList:[Ljava/lang/String;

.field static final mThirdPartyAppWhiteList:[Ljava/lang/String;

.field private static view:Landroid/view/View;


# instance fields
.field final mBoostDownloadingAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mHandlerThread:Landroid/os/HandlerThread;

.field private mHasInHouseWL:Z

.field private mHasThirdPartyWL:Z

.field private mOomAdjEnabled:Z

.field final mProcessWL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mTarget:Lcom/android/server/am/ActivityRecord;

.field private mThirdParyAppWinner:Ljava/lang/String;

.field private mThirdParyAppWinnerTime:J

.field private postDelay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.aol.mobile.aim"

    aput-object v1, v0, v3

    const-string v1, "com.facebook.katana"

    aput-object v1, v0, v4

    const-string v1, "cn.com.fetion7"

    aput-object v1, v0, v5

    const-string v1, "com.fring"

    aput-object v1, v0, v6

    const-string v1, "android.process.hiyahoo"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.process.msn.service"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.nimbuzz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mobi.qiss.plurq"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.tencent.qq"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.renren.mobile.android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.skype.raider"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.kaixin001.activity"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.ebuddy.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerPlus;->mThirdPartyAppWhiteList:[Ljava/lang/String;

    .line 154
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.music"

    aput-object v1, v0, v3

    const-string v1, "android.process.media"

    aput-object v1, v0, v4

    const-string v1, "com.mediatek.FMRadio:remote"

    aput-object v1, v0, v5

    const-string v1, "com.mediatek.apst.target"

    aput-object v1, v0, v6

    const-string v1, "android.process.acore"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerPlus;->mInHouseAppWhiteList:[Ljava/lang/String;

    .line 165
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "system"

    aput-object v1, v0, v3

    const-string v1, "com.mediatek.bluetooth"

    aput-object v1, v0, v4

    const-string v1, "android.process.acore"

    aput-object v1, v0, v5

    const-string v1, "com.android.phone"

    aput-object v1, v0, v6

    const-string v1, "com.mediatek.engineermode"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.wallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.mediatek.mobilelog"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 12
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "AMPlus"

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    .line 90
    iput-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->postDelay:Z

    .line 91
    iput-object v11, p0, Lcom/android/server/am/ActivityManagerPlus;->mTarget:Lcom/android/server/am/ActivityRecord;

    .line 96
    iput-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    .line 101
    iput-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    .line 106
    iput-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    .line 111
    iput-object v11, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 116
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    .line 128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    .line 163
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    .line 177
    const-string v6, "ActivityManagerPlus"

    const-string v7, "start ActivityManagerPlus"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 181
    iput-boolean v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    .line 182
    iput-boolean v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    .line 183
    iput-boolean v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    .line 184
    const-string v6, "ActivityManagerPlus"

    const-string v7, "support wl!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 186
    new-instance v6, Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    .line 188
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPlus;->startHandler()V

    .line 190
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    sget-object v6, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 191
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_0
    const-string v6, "persist.ipo.shutdown.process.wl"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, processList:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 198
    const-string v6, "ActivityManagerPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process whitelist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v6, "/"

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v3, v7}, Lcom/android/server/am/ActivityManagerPlus;->parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 202
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 203
    .local v4, target:Ljava/lang/String;
    const-string v6, "ActivityManagerPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "app = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v4           #target:Ljava/lang/String;
    :cond_2
    const-string v6, "1"

    const-string v7, "persist.sys.ipo.wifi"

    invoke-static {v7, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    const-string v6, "ActivityManagerPlus"

    const-string v7, "enable wifi due to ipo"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v6, "persist.sys.ipo.wifi"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v6, "wifi"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v5

    .line 212
    .local v5, wifiMgr:Landroid/net/wifi/IWifiManager;
    if-eqz v5, :cond_4

    .line 213
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v5, v6}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z

    .line 221
    .end local v5           #wifiMgr:Landroid/net/wifi/IWifiManager;
    :cond_3
    :goto_2
    return-void

    .line 215
    .restart local v5       #wifiMgr:Landroid/net/wifi/IWifiManager;
    :cond_4
    const-string v6, "ActivityManagerPlus"

    const-string v7, " can not get the IWifiManager binder"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "ActivityManagerPlus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wi-Fi operation failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityManagerPlus;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerPlus;->postDelay:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/ActivityManagerPlus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerPlus;->postDelay:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mTarget:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/am/ActivityManagerPlus;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus;->mTarget:Lcom/android/server/am/ActivityRecord;

    return-object p1
.end method

.method private parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "split"
    .parameter "strings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p3, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, str:[Ljava/lang/String;
    array-length v1, v2

    .line 367
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 368
    aget-object v3, v2, v0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method public IPOBootCompletedLocked()V
    .locals 2

    .prologue
    .line 524
    const-string v0, "ActivityManagerPlus"

    const-string v1, "IPOBootCompletedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    const-string v0, "ActivityManagerPlus"

    const-string v1, "sys.boot_completed is not set"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v0, "sys.boot_completed"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->sendFullBootCompletedIntentLocked()V

    .line 584
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ActivityManagerPlus$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerPlus$2;-><init>(Lcom/android/server/am/ActivityManagerPlus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final startHandler()V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v0, itFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOST_DOWNLOADING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.intent.action.black.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 233
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v1, "ActivityManagerPlus"

    const-string v2, "startHandler!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/ActivityManagerPlus$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActivityManagerPlus$1;-><init>(Lcom/android/server/am/ActivityManagerPlus;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 362
    return-void
.end method

.method public updateOomAdjPlus(Lcom/android/server/am/ProcessRecord;)I
    .locals 12
    .parameter "app"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v6, 0x7

    .line 403
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    if-nez v9, :cond_0

    .line 404
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 472
    :goto_0
    return v6

    .line 407
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 408
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 410
    .local v1, boostApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 411
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-le v7, v6, :cond_2

    .line 412
    iput v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 415
    :cond_2
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 422
    .end local v1           #boostApp:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget v9, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_b

    .line 425
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    if-eqz v9, :cond_5

    .line 426
    sget-object v0, Lcom/android/server/am/ActivityManagerPlus;->mInHouseAppWhiteList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v3, v0, v2

    .line 428
    .local v3, inHouseApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 429
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 426
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 433
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #inHouseApp:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_5
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    if-eqz v9, :cond_a

    .line 435
    sget-object v0, Lcom/android/server/am/ActivityManagerPlus;->mThirdPartyAppWhiteList:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v4, :cond_a

    aget-object v5, v0, v2

    .line 437
    .local v5, thirdPartyApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 442
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 443
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 444
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    .line 459
    :goto_3
    iput v7, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move v6, v7

    .line 460
    goto :goto_0

    .line 446
    :cond_6
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 448
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    goto :goto_3

    .line 449
    :cond_7
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iget-wide v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 451
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 452
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    goto :goto_3

    .line 455
    :cond_8
    iput v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto/16 :goto_0

    .line 435
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 467
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #thirdPartyApp:Ljava/lang/String;
    :cond_a
    iput v8, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move v6, v8

    .line 468
    goto/16 :goto_0

    .line 472
    :cond_b
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto/16 :goto_0
.end method

.method public updateRegisterReceivers(Ljava/util/List;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, receivers:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    const/4 v3, 0x0

    .line 375
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 378
    const-string v5, "_mode"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 379
    const-string v5, "ActivityManagerPlus"

    const-string v6, "normal shutdown"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    return-void

    .line 383
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 384
    .local v3, size:I
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 385
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 386
    .local v0, curr:Lcom/android/server/am/BroadcastFilter;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 387
    .local v4, target:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 388
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 389
    add-int/lit8 v3, v3, -0x1

    .line 390
    add-int/lit8 v1, v1, -0x1

    .line 384
    .end local v4           #target:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
