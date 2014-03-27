.class public final Lcom/android/server/am/QuickbootActivityManagerServiceHook;
.super Ljava/lang/Object;
.source "QuickbootActivityManagerServiceHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;
    }
.end annotation


# static fields
.field private static final CHARGER_PICTURE_SHOW_TIMES:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "QuickbootActivityManagerServiceHook"

.field private static final mBatteryLevels:[I

.field private static final mChargerPicIds:[I

.field private static final mDefaultWhiteList:[Ljava/lang/String;

.field private static mHook:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

.field private static mInitPicIndex:I

.field private static mIsQbShutdown:Z


# instance fields
.field private final ACTION_QUICKBOOT_BOOT:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_BOOT_NOTICE:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_SHUTDOWN:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_SHUTDOWN_DONE:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_START_CHARGE:Ljava/lang/String;

.field private final ACTION_QUICKBOOT_STOP_CHARGE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mMainHandler:Landroid/os/Handler;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHook:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "system"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.process.acore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.wallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.baidu.home2"

    aput-object v2, v0, v1

    const-string v1, "com.baidu.baiduclock"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mDefaultWhiteList:[Ljava/lang/String;

    .line 57
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mBatteryLevels:[I

    .line 58
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mChargerPicIds:[I

    .line 64
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mInitPicIndex:I

    .line 65
    sput-boolean v4, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mIsQbShutdown:Z

    return-void

    .line 57
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
    .end array-data

    .line 58
    :array_1
    .array-data 0x4
        #drawable@battery_0#a
        #drawable@battery_1#a
        #drawable@battery_2#a
        #drawable@battery_3#a
        #drawable@battery_4#a
        #drawable@battery_5#a
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .parameter "context"
    .parameter "service"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "QbAmsHook"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_SHUTDOWN:Ljava/lang/String;

    .line 44
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN_DONE"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_SHUTDOWN_DONE:Ljava/lang/String;

    .line 45
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_BOOT:Ljava/lang/String;

    .line 46
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_START_CHARGE"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_START_CHARGE:Ljava/lang/String;

    .line 47
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_STOP_CHARGE"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_STOP_CHARGE:Ljava/lang/String;

    .line 48
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_BOOT_NOTICE"

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->ACTION_QUICKBOOT_BOOT_NOTICE:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;-><init>(Lcom/android/server/am/QuickbootActivityManagerServiceHook;Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;)V

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    .line 70
    iput-object p1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 73
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mMainHandler:Landroid/os/Handler;

    .line 77
    invoke-direct {p0}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->init()V

    .line 78
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    sput-boolean p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mIsQbShutdown:Z

    return p0
.end method

.method static synthetic access$1100()[I
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mChargerPicIds:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mDefaultWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->resetActivityStack()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->notifyBootCompleted()V

    return-void
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mInitPicIndex:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    sput p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mInitPicIndex:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/am/QuickbootActivityManagerServiceHook;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->getChargerPicIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/QuickbootActivityManagerServiceHook;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->setQbChargerBackground(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    return-object v0
.end method

.method public static createHook(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHook:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHook:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    .line 83
    :cond_0
    return-void
.end method

.method static filterReceiversForQbShutdown(Ljava/util/List;Landroid/content/Intent;)V
    .locals 9
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
    .line 302
    .local p0, receivers:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mIsQbShutdown:Z

    if-eqz v7, :cond_3

    .line 303
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 304
    .local v5, size:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 305
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    .line 306
    .local v1, filter:Lcom/android/server/am/BroadcastFilter;
    sget-object v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mDefaultWhiteList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 307
    .local v6, target:Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v7, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 308
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 309
    add-int/lit8 v5, v5, -0x1

    .line 310
    add-int/lit8 v2, v2, -0x1

    .line 304
    .end local v6           #target:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 303
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #filter:Lcom/android/server/am/BroadcastFilter;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #size:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 306
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #filter:Lcom/android/server/am/BroadcastFilter;
    .restart local v2       #i:I
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #size:I
    .restart local v6       #target:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 316
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #filter:Lcom/android/server/am/BroadcastFilter;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #size:I
    .end local v6           #target:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private getChargerPicIndex(I)I
    .locals 4
    .parameter "level"

    .prologue
    .line 162
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mBatteryLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 163
    sget-object v2, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mBatteryLevels:[I

    aget v2, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge p1, v2, :cond_1

    .line 167
    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 171
    :goto_1
    return v2

    .line 162
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "QuickbootActivityManagerServiceHook"

    const-string v3, "getChargerPicId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .locals 5
    .parameter "pendingResult"

    .prologue
    const/4 v3, 0x0

    .line 88
    instance-of v2, p0, Lcom/android/server/am/PendingIntentRecord;

    if-nez v2, :cond_0

    .line 96
    :goto_0
    return-object v3

    .line 92
    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    move-object v1, v0

    .line 93
    .local v1, res:Lcom/android/server/am/PendingIntentRecord;
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_1

    .line 94
    .end local v1           #res:Lcom/android/server/am/PendingIntentRecord;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT_NOTICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_START_CHARGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_STOP_CHARGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 114
    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;-><init>(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    return-void
.end method

.method private notifyBootCompleted()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/QuickbootActivityManagerServiceHook$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/QuickbootActivityManagerServiceHook$2;-><init>(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method private resetActivityStack()V
    .locals 10

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 217
    .local v8, size:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v7, list:Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 220
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 218
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 228
    iget-object v9, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 229
    add-int/lit8 v6, v8, -0x1

    :goto_2
    if-ltz v6, :cond_2

    .line 230
    :try_start_0
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 231
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 232
    .local v2, idx:I
    const-string v0, "QuickbootActivityManagerServiceHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHistory.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " list.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "clear"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 229
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 235
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    .end local v2           #idx:I
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 237
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    return-void

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setQbChargerBackground(II)V
    .locals 4
    .parameter "PicIndex"
    .parameter "delay"

    .prologue
    .line 176
    if-ltz p2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    iput p1, v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;->nextIndex:I

    .line 178
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    const-string v0, "QuickbootActivityManagerServiceHook"

    const-string v1, "Delay time is invalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
