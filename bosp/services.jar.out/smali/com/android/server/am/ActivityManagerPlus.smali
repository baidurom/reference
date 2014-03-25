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


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
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

    .line 153
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
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "system"

    aput-object v1, v0, v3

    const-string v1, "com.mediatek.bluetooth"

    aput-object v1, v0, v4

    const-string v1, "android.process.acore"

    aput-object v1, v0, v5

    const-string v1, "com.android.wallpaper"

    aput-object v1, v0, v6

    const-string v1, "com.android.systemui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.mediatek.mobilelog"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 13
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "AMPlus"

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    .line 90
    iput-object v12, p0, Lcom/android/server/am/ActivityManagerPlus;->mTarget:Lcom/android/server/am/ActivityRecord;

    .line 95
    iput-boolean v11, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    .line 100
    iput-boolean v11, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    .line 105
    iput-boolean v11, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    .line 110
    iput-object v12, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 115
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    .line 127
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    .line 162
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    .line 175
    const-string v7, "ActivityManagerPlus"

    const-string v8, "start ActivityManagerPlus"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 179
    iput-boolean v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    .line 180
    iput-boolean v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    .line 181
    iput-boolean v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    .line 182
    const-string v7, "ActivityManagerPlus"

    const-string v8, "support wl!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 184
    new-instance v7, Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    .line 186
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPlus;->startHandler()V

    .line 188
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    sget-object v7, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 189
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/am/ActivityManagerPlus;->mProcessList:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_0
    const-string v7, "persist.ipo.shutdown.process.wl"

    invoke-static {v7, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, processList:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 196
    const-string v7, "ActivityManagerPlus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Process whitelist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v4, processArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "/"

    invoke-direct {p0, v7, v5, v4}, Lcom/android/server/am/ActivityManagerPlus;->parseStringIntoArrary(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 201
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 202
    .local v3, item:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 203
    const-string v7, "!"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 204
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 200
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_2
    const-string v7, "!"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 206
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 212
    .end local v0           #i:I
    .end local v3           #item:Ljava/lang/String;
    .end local v4           #processArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 213
    .local v6, target:Ljava/lang/String;
    const-string v7, "ActivityManagerPlus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 233
    .end local v6           #target:Ljava/lang/String;
    :cond_4
    return-void
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
    .line 428
    .local p3, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, str:[Ljava/lang/String;
    array-length v1, v2

    .line 430
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 431
    aget-object v3, v2, v0

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_0
    return-void
.end method


# virtual methods
.method public IPOBootCompletedLocked()V
    .locals 2

    .prologue
    .line 539
    const-string v0, "ActivityManagerPlus"

    const-string v1, "IPOBootCompletedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    const-string v0, "ActivityManagerPlus"

    const-string v1, "sys.boot_completed is not set"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v0, "sys.boot_completed"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->sendFullBootCompletedIntentLocked()V

    .line 603
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ActivityManagerPlus$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerPlus$2;-><init>(Lcom/android/server/am/ActivityManagerPlus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setBootingVal(Z)V
    .locals 1
    .parameter "val"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 608
    return-void
.end method

.method final startHandler()V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v0, itFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOST_DOWNLOADING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "android.intent.action.black.mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 245
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v1, "ActivityManagerPlus"

    const-string v2, "startHandler!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/ActivityManagerPlus$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/ActivityManagerPlus$1;-><init>(Lcom/android/server/am/ActivityManagerPlus;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 425
    return-void
.end method

.method public updateOomAdjPlus(Lcom/android/server/am/ProcessRecord;)I
    .locals 12
    .parameter "app"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v6, 0x7

    .line 466
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mOomAdjEnabled:Z

    if-nez v9, :cond_0

    .line 467
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 535
    :goto_0
    return v6

    .line 470
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 471
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

    .line 473
    .local v1, boostApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 474
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-le v7, v6, :cond_2

    .line 475
    iput v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 478
    :cond_2
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 485
    .end local v1           #boostApp:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget v9, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_b

    .line 488
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasInHouseWL:Z

    if-eqz v9, :cond_5

    .line 489
    sget-object v0, Lcom/android/server/am/ActivityManagerPlus;->mInHouseAppWhiteList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v3, v0, v2

    .line 491
    .local v3, inHouseApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 492
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 489
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 496
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #inHouseApp:Ljava/lang/String;
    .end local v4           #len$:I
    :cond_5
    iget-boolean v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mHasThirdPartyWL:Z

    if-eqz v9, :cond_a

    .line 498
    sget-object v0, Lcom/android/server/am/ActivityManagerPlus;->mThirdPartyAppWhiteList:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v4, :cond_a

    aget-object v5, v0, v2

    .line 500
    .local v5, thirdPartyApp:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 505
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 506
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 507
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    .line 522
    :goto_3
    iput v7, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move v6, v7

    .line 523
    goto :goto_0

    .line 509
    :cond_6
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 511
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    goto :goto_3

    .line 512
    :cond_7
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iget-wide v10, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 514
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinner:Ljava/lang/String;

    .line 515
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v8, p0, Lcom/android/server/am/ActivityManagerPlus;->mThirdParyAppWinnerTime:J

    goto :goto_3

    .line 518
    :cond_8
    iput v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto/16 :goto_0

    .line 498
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 530
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #thirdPartyApp:Ljava/lang/String;
    :cond_a
    iput v8, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move v6, v8

    .line 531
    goto/16 :goto_0

    .line 535
    :cond_b
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto/16 :goto_0
.end method

.method public updateRegisterReceivers(Ljava/util/List;Landroid/content/Intent;)V
    .locals 0
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
    .line 459
    .local p1, receivers:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    return-void
.end method
