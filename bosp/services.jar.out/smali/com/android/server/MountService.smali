.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$QuickbootBroadcastReceiver;,
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$SdType;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$VolumeState;,
        Lcom/android/server/MountService$CDRomState;
    }
.end annotation


# static fields
.field private static final CDRomShareLock:Ljava/lang/Object; = null

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final LOCAL_LOGD:Z = false

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_UNMOUNT_RETRIES:I = 0x1

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final OMADMSyncLock:Ljava/lang/Object; = null

.field private static final OMADM_SD_FORMAT:Ljava/lang/String; = "com.mediatek.dm.LAWMO_WIPE"

.field private static final OMADM_USB_DISABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_LOCK"

.field private static final OMADM_USB_ENABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_UNLOCK"

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_AUTO:Ljava/lang/String; = "storage_auto"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final TurnOnUsbSyncLock:Ljava/lang/Object; = null

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z


# instance fields
.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBooted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mEmulateExternalStorage:Z

.field private mExternalStoragePath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsTurnOnUsb:Z

.field private mIsUsbConnected:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPrimaryVolume:Landroid/os/storage/StorageVolume;

.field private final mQuickbootReceiver:Landroid/content/BroadcastReceiver;

.field private mReady:Z

.field private mSendUmsConnectedOnBoot:Z

.field private mSetDefaultEnable:Z

.field private mShutdownCount:I

.field private mShutdownSD:Z

.field private mUMSCount:I

.field private mUmsAvailable:Z

.field private mUmsEnabling:Z

.field private final mVolumeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->OMADMSyncLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->TurnOnUsbSyncLock:Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->CDRomShareLock:Ljava/lang/Object;

    .line 384
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1722
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    .line 268
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    .line 269
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    .line 273
    iput-boolean v6, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 277
    iput-boolean v6, p0, Lcom/android/server/MountService;->mBooted:Z

    .line 278
    iput-boolean v6, p0, Lcom/android/server/MountService;->mReady:Z

    .line 279
    iput-boolean v6, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 281
    iput-boolean v6, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    .line 282
    iput v6, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 283
    iput-boolean v6, p0, Lcom/android/server/MountService;->mIsTurnOnUsb:Z

    .line 284
    iput-boolean v7, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    .line 285
    iput v6, p0, Lcom/android/server/MountService;->mUMSCount:I

    .line 286
    iput-boolean v6, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 287
    iput-boolean v6, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 296
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 314
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 315
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 316
    iput-object v5, p0, Lcom/android/server/MountService;->resources:Landroid/content/res/Resources;

    .line 387
    new-instance v2, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v2, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v2, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 404
    iput-object v5, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 627
    new-instance v2, Lcom/android/server/MountService$1;

    invoke-direct {v2, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v2, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3339
    new-instance v2, Lcom/android/server/MountService$QuickbootBroadcastReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/MountService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$1;)V

    iput-object v2, p0, Lcom/android/server/MountService;->mQuickbootReceiver:Landroid/content/BroadcastReceiver;

    .line 1723
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 1724
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/MountService;->resources:Landroid/content/res/Resources;

    .line 1725
    iget-object v2, p0, Lcom/android/server/MountService;->resources:Landroid/content/res/Resources;

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->readStorageList(Landroid/content/res/Resources;)V

    .line 1727
    iget-object v2, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_0

    .line 1728
    iget-object v2, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    .line 1729
    iget-object v2, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    .line 1730
    iget-boolean v2, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    if-eqz v2, :cond_0

    .line 1731
    const-string v2, "MountService"

    const-string v3, "using emulated external storage"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    const-string v4, "mounted"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->setupHash()V

    .line 1742
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1744
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1745
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1746
    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1747
    const-string v2, "android.action.AMS_SYSTEM_READY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1748
    const-string v2, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1749
    const-string v2, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1750
    const-string v2, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1751
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1752
    const-string v2, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1754
    iget-object v2, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1755
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1757
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1759
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MountService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1760
    iget-object v2, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1761
    new-instance v2, Lcom/android/server/MountService$MountServiceHandler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 1763
    invoke-direct {p0}, Lcom/android/server/MountService;->registerQbReceiver()V

    .line 1767
    new-instance v2, Lcom/android/server/MountService$ObbActionHandler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1773
    const-string v2, "simulator"

    const-string v3, "ro.product.device"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1774
    iput-boolean v7, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1775
    iput-boolean v7, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1793
    :goto_0
    return-void

    .line 1784
    :cond_2
    new-instance v2, Lcom/android/server/NativeDaemonConnector;

    const-string v3, "vold"

    const/16 v4, 0x1f4

    const-string v5, "VoldConnector"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1785
    iput-boolean v6, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1786
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "VoldConnector"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1787
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBooted:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->readStorageList(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V

    return-void
.end method

.method static synthetic access$2900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/MountService;->OMADMSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->enableUSBFuction(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/server/MountService;->mReady:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$4400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/MountService;->CDRomShareLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/server/MountService;->doGetCDRomState()I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doShareUnshareCDRom(Z)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/server/MountService;->TurnOnUsbSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$710(Lcom/android/server/MountService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsTurnOnUsb:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method static synthetic access$910(Lcom/android/server/MountService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 7
    .parameter "obbState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2667
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2668
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2670
    .local v4, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    .line 2671
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2672
    .restart local v4       #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2682
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2684
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2699
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2700
    return-void

    .line 2674
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 2675
    .local v3, o:Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2676
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2685
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #o:Lcom/android/server/MountService$ObbState;
    :catch_0
    move-exception v1

    .line 2690
    .local v1, e:Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2691
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2692
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    :cond_3
    throw v1
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .locals 7
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 1500
    :try_start_0
    const-string v4, "volume format %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    .local v0, cmd:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    .end local v0           #cmd:Ljava/lang/String;
    :goto_0
    return v3

    .line 1503
    :catch_0
    move-exception v2

    .line 1504
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1505
    .local v1, code:I
    const/16 v3, 0x191

    if-ne v1, v3, :cond_0

    .line 1506
    const/4 v3, -0x2

    goto :goto_0

    .line 1507
    :cond_0
    const/16 v3, 0x193

    if-ne v1, v3, :cond_1

    .line 1508
    const/4 v3, -0x4

    goto :goto_0

    .line 1510
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private doGetCDRomState()I
    .locals 15

    .prologue
    const/4 v11, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 3253
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v13, "cd-rom status"

    new-array v14, v9, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3257
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v12, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v12, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3263
    .local v6, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3264
    .local v4, line:Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3265
    .local v7, tok:[Ljava/lang/String;
    array-length v12, v7

    if-ge v12, v11, :cond_1

    .line 3266
    const-string v9, "MountService"

    const-string v10, "Malformed response get CD rom ststus"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tok:[Ljava/lang/String;
    :goto_0
    return v8

    .line 3258
    :catch_0
    move-exception v2

    .line 3259
    .local v2, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v9, "MountService"

    const-string v10, "Failed to get CD rom ststus!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3272
    .end local v2           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #tok:[Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    :try_start_1
    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 3277
    .local v1, code:I
    const/16 v12, 0xd6

    if-ne v1, v12, :cond_6

    .line 3278
    const-string v12, "Shared"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v8, v9

    .line 3279
    goto :goto_0

    .line 3273
    .end local v1           #code:I
    :catch_1
    move-exception v5

    .line 3274
    .local v5, nfe:Ljava/lang/NumberFormatException;
    const-string v11, "MountService"

    const-string v12, "Error parsing code %s"

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v13, v7, v9

    aput-object v13, v10, v9

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3280
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_2
    const-string v12, "Unshared"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v8, v10

    .line 3281
    goto :goto_0

    .line 3282
    :cond_3
    const-string v12, "Sharing"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v8, v11

    .line 3283
    goto :goto_0

    .line 3284
    :cond_4
    const-string v12, "Unsharing"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3285
    const/4 v8, 0x3

    goto :goto_0

    .line 3286
    :cond_5
    const-string v12, "Not_Exist"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3287
    const/4 v8, 0x4

    goto :goto_0

    .line 3290
    :cond_6
    const-string v11, "MountService"

    const-string v12, "Unexpected response code %d"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v9

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3294
    .end local v1           #code:I
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    :cond_7
    const-string v9, "MountService"

    const-string v10, "Got an empty response"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doGetSDExist()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3308
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v10, "volume is_2sd_swapped"

    invoke-virtual {v9, v10}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 3314
    .local v5, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3315
    .local v3, line:Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3316
    .local v6, tok:[Ljava/lang/String;
    array-length v9, v6

    if-ge v9, v8, :cond_1

    .line 3317
    const-string v8, "MountService"

    const-string v9, "Malformed response to doGetSDExist"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tok:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v7

    .line 3309
    :catch_0
    move-exception v1

    .line 3310
    .local v1, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v8, "MountService"

    const-string v9, "Failed to determine whether External SD exist."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3323
    .end local v1           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #tok:[Ljava/lang/String;
    :cond_1
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 3328
    .local v0, code:I
    if-ne v0, v8, :cond_0

    move v7, v8

    .line 3329
    goto :goto_0

    .line 3324
    .end local v0           #code:I
    :catch_1
    move-exception v4

    .line 3325
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v9, "MountService"

    const-string v10, "Error parsing code %s"

    new-array v11, v8, [Ljava/lang/Object;

    aget-object v8, v6, v8

    aput-object v8, v11, v7

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3334
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_2
    const-string v8, "MountService"

    const-string v9, "Got an empty response"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "path"
    .parameter "method"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 1516
    const-string v9, "volume shared %s %s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object p1, v10, v8

    aput-object p2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1520
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v9, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1526
    .local v6, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1527
    .local v4, line:Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1528
    .local v7, tok:[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    .line 1529
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Malformed response to volume shared "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " command"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tok:[Ljava/lang/String;
    :goto_0
    return v8

    .line 1521
    :catch_0
    move-exception v2

    .line 1522
    .local v2, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read response to volume shared "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1535
    .end local v2           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1540
    .local v1, code:I
    const/16 v9, 0xd4

    if-ne v1, v9, :cond_1

    .line 1541
    const-string v8, "enabled"

    aget-object v9, v7, v12

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_0

    .line 1536
    .end local v1           #code:I
    :catch_1
    move-exception v5

    .line 1537
    .local v5, nfe:Ljava/lang/NumberFormatException;
    const-string v9, "MountService"

    const-string v10, "Error parsing code %s"

    new-array v11, v11, [Ljava/lang/Object;

    aget-object v12, v7, v8

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1543
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_1
    const-string v9, "MountService"

    const-string v10, "Unexpected response code %d"

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1547
    .end local v1           #code:I
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    :cond_2
    const-string v9, "MountService"

    const-string v10, "Got an empty response"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .locals 8
    .parameter "path"

    .prologue
    .line 1396
    const/4 v3, 0x0

    .line 1398
    .local v3, rc:I
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doMountVolume: Mouting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume mount %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :cond_0
    :goto_0
    return v3

    .line 1401
    :catch_0
    move-exception v2

    .line 1405
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 1406
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1407
    .local v1, code:I
    const/16 v4, 0x191

    if-ne v1, v4, :cond_1

    .line 1411
    const/4 v3, -0x2

    .line 1436
    :goto_1
    if-eqz v0, :cond_0

    .line 1437
    invoke-direct {p0, v0, p1}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1412
    :cond_1
    const/16 v4, 0x192

    if-ne v1, v4, :cond_2

    .line 1413
    const-string v4, "MountService"

    const-string v5, " updating volume state :: media nofs"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string v4, "nofs"

    invoke-direct {p0, p1, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 1419
    const/4 v3, -0x3

    goto :goto_1

    .line 1420
    :cond_2
    const/16 v4, 0x193

    if-ne v1, v4, :cond_3

    .line 1421
    const-string v4, "MountService"

    const-string v5, "updating volume state media corrupt"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1426
    const-string v4, "unmountable"

    invoke-direct {p0, p1, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 1428
    const/4 v3, -0x4

    goto :goto_1

    .line 1430
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private doSDSwapVolumeUpdate()V
    .locals 2

    .prologue
    .line 1058
    const-string v0, "MountService"

    const-string v1, "swap_volume_attribute"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    return-void
.end method

.method private doShareUnshareCDRom(Z)V
    .locals 7
    .parameter "share"

    .prologue
    .line 3243
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShareUnshareCDRom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "cd-rom %sshare"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    :goto_0
    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3250
    :goto_1
    return-void

    .line 3245
    :cond_0
    const-string v1, "un"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3247
    :catch_0
    move-exception v0

    .line 3248
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare CD Rom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "path"
    .parameter "method"
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 996
    const-string v1, "ums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 997
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Method %s not supported"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1001
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume %sshare %s %s"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    const-string v1, ""

    :goto_0
    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v1, 0x2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1006
    :goto_1
    return-void

    .line 1001
    :cond_1
    const-string v1, "un"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v2, "Failed to share/unshare"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private doUnmountVolume(Ljava/lang/String;ZZ)I
    .locals 9
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    const/16 v3, 0x194

    const/4 v4, 0x0

    .line 1456
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1493
    :goto_0
    return v3

    .line 1466
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 1470
    iget-object v5, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1471
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4, v4}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1475
    :cond_1
    if-eqz p3, :cond_2

    :try_start_0
    const-string v0, " force_and_revert"

    .line 1478
    .local v0, arg:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "volume unmount %s%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1480
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1482
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 1483
    goto :goto_0

    .line 1475
    .end local v0           #arg:Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    :try_start_2
    const-string v0, " force"

    goto :goto_1

    :cond_3
    const-string v0, ""
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1482
    .restart local v0       #arg:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1484
    .end local v0           #arg:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1487
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1488
    .local v1, code:I
    if-ne v1, v3, :cond_4

    .line 1489
    const/4 v3, -0x5

    goto :goto_0

    .line 1490
    :cond_4
    const/16 v3, 0x195

    if-ne v1, v3, :cond_5

    .line 1491
    const/4 v3, -0x7

    goto :goto_0

    .line 1493
    :cond_5
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private enableUSBFuction(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 2000
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2002
    const/4 v0, 0x0

    .line 2003
    .local v0, cmd:Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "USB enable"

    .line 2004
    :goto_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2009
    :goto_1
    return-void

    .line 2003
    :cond_0
    const-string v0, "USB disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2005
    :catch_0
    move-exception v2

    .line 2006
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2007
    .local v1, code:I
    const-string v3, "MountService"

    const-string v4, "enableUSBFunction failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getUmsEnabling()Z
    .locals 2

    .prologue
    .line 1913
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1914
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 1915
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 4
    .parameter "packageName"
    .parameter "callerUid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2389
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_1

    .line 2404
    :cond_0
    :goto_0
    return v1

    .line 2393
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 2394
    goto :goto_0

    .line 2397
    :cond_2
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;)I

    move-result v0

    .line 2404
    .local v0, packageUid:I
    if-eq p2, v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private notifyShareAvailabilityChange(Z)V
    .locals 9
    .parameter "avail"

    .prologue
    const/4 v8, 0x1

    .line 1552
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyShareAvailabilityChange avail="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1554
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 1555
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 1556
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v5, p1}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1555
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1559
    :catch_0
    move-exception v4

    .line 1560
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MountService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1566
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1562
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 1563
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "MountService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1566
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1568
    iget-boolean v5, p0, Lcom/android/server/MountService;->mBooted:Z

    if-ne v5, v8, :cond_3

    .line 1569
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 1574
    :goto_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1575
    .local v3, path:Ljava/lang/String;
    if-nez p1, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "shared"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/MountService;->mIsTurnOnUsb:Z

    if-ne v5, v8, :cond_2

    .line 1579
    :cond_1
    new-instance v5, Lcom/android/server/MountService$5;

    invoke-direct {v5, p0}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v5}, Lcom/android/server/MountService$5;->start()V

    .line 1604
    :cond_2
    return-void

    .line 1571
    .end local v3           #path:Ljava/lang/String;
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_2
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v5, 0x7

    .line 1319
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1320
    .local v1, vs:Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyVolumeStateChanged::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const/4 v0, 0x0

    .line 1324
    .local v0, action:Ljava/lang/String;
    if-ne p3, v5, :cond_0

    if-eq p4, p3, :cond_0

    .line 1326
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-direct {p0, v2, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    :cond_0
    const/4 v2, -0x1

    if-ne p4, v2, :cond_3

    .line 1390
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1391
    invoke-direct {p0, v0, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    :cond_2
    :goto_1
    return-void

    .line 1330
    :cond_3
    if-eqz p4, :cond_1

    .line 1332
    const/4 v2, 0x1

    if-ne p4, v2, :cond_5

    .line 1337
    const-string v2, "bad_removal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "nofs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "unmountable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1341
    const-string v2, "MountService"

    const-string v3, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const-string v2, "unmounted"

    invoke-direct {p0, p2, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-boolean v2, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/MountService;->mIsTurnOnUsb:Z

    if-nez v2, :cond_4

    .line 1344
    const-string v2, "MountService"

    const-string v3, "updateDefaultpath VolumeState.Idle"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1347
    :cond_4
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_0

    .line 1349
    :cond_5
    const/4 v2, 0x2

    if-eq p4, v2, :cond_1

    .line 1350
    const/4 v2, 0x3

    if-ne p4, v2, :cond_6

    .line 1351
    const-string v2, "MountService"

    const-string v3, "updating volume state checking"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const-string v2, "checking"

    invoke-direct {p0, p2, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto :goto_0

    .line 1354
    :cond_6
    const/4 v2, 0x4

    if-ne p4, v2, :cond_8

    .line 1355
    const-string v2, "MountService"

    const-string v3, "updating volume state mounted"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const-string v2, "mounted"

    invoke-direct {p0, p2, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-boolean v2, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/MountService;->mIsTurnOnUsb:Z

    if-nez v2, :cond_7

    .line 1358
    const-string v2, "MountService"

    const-string v3, "updateDefaultpath VolumeState.Mounted"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1361
    :cond_7
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto/16 :goto_0

    .line 1362
    :cond_8
    const/4 v2, 0x5

    if-eq p4, v2, :cond_1

    .line 1372
    const/4 v2, 0x6

    if-eq p4, v2, :cond_1

    .line 1373
    if-ne p4, v5, :cond_9

    .line 1374
    const-string v2, "MountService"

    const-string v3, "Updating volume state media mounted"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const-string v2, "unmounted"

    invoke-direct {p0, p2, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {p0, v2, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v2, "MountService"

    const-string v3, "Updating media shared"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const-string v2, "shared"

    invoke-direct {p0, p2, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v0, "android.intent.action.MEDIA_SHARED"

    goto/16 :goto_0

    .line 1383
    :cond_9
    const/16 v2, 0x8

    if-ne p4, v2, :cond_a

    .line 1384
    const-string v2, "MountService"

    const-string v3, "Live shared mounts not supported yet!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1387
    :cond_a
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled VolumeState {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readStorageList(Landroid/content/res/Resources;)V
    .locals 27
    .parameter "resources"

    .prologue
    .line 1634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1636
    const v17, #xml@storage_list#t

    .line 1638
    .local v17, id:I
    sget-object v4, Lcom/android/server/MountService$SdType;->TYPE:Ljava/lang/String;

    const-string v23, "4"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v22, "storage_auto"

    .line 1640
    .local v22, storage:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 1641
    .local v19, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v19 .. v19}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    .line 1644
    .local v12, attrs:Landroid/util/AttributeSet;
    :try_start_0
    const-string v4, "StorageList"

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1646
    :cond_0
    :goto_1
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1648
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 1649
    .local v15, element:Ljava/lang/String;
    if-nez v15, :cond_2

    .line 1709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1710
    .local v18, length:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 1711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1710
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1638
    .end local v12           #attrs:Landroid/util/AttributeSet;
    .end local v15           #element:Ljava/lang/String;
    .end local v16           #i:I
    .end local v18           #length:I
    .end local v19           #parser:Landroid/content/res/XmlResourceParser;
    .end local v22           #storage:Ljava/lang/String;
    :cond_1
    const-string v22, "storage"

    goto :goto_0

    .line 1651
    .restart local v12       #attrs:Landroid/util/AttributeSet;
    .restart local v15       #element:Ljava/lang/String;
    .restart local v19       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v22       #storage:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "storage"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1652
    sget-object v4, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 1655
    .local v11, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1657
    .local v20, path:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1659
    .local v13, description:Ljava/lang/CharSequence;
    const/4 v4, 0x2

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    .line 1661
    .local v21, primary:Z
    const/4 v4, 0x3

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1663
    .local v5, removable:Z
    const/4 v4, 0x4

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1665
    .local v6, emulated:Z
    const/4 v4, 0x5

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1667
    .local v7, mtpReserve:I
    const/4 v4, 0x6

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1670
    .local v8, allowMassStorage:Z
    const/4 v4, 0x7

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x400

    mul-long v23, v23, v25

    const-wide/16 v25, 0x400

    mul-long v9, v23, v25

    .line 1673
    .local v9, maxFileSize:J
    const-string v4, "MountService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "got storage path: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " description: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " primary: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " removable: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " emulated: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mtpReserve: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " allowMassStorage: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " maxFileSize: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    if-eqz v20, :cond_3

    if-nez v13, :cond_4

    .line 1679
    :cond_3
    const-string v4, "MountService"

    const-string v23, "path or description is null in readStorageList"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :goto_3
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1703
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v11           #a:Landroid/content/res/TypedArray;
    .end local v13           #description:Ljava/lang/CharSequence;
    .end local v15           #element:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/CharSequence;
    .end local v21           #primary:Z
    :catch_0
    move-exception v14

    .line 1704
    .local v14, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1709
    .end local v14           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    move-object/from16 v23, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1710
    .restart local v18       #length:I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 1711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageVolume;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1710
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1681
    .end local v16           #i:I
    .end local v18           #length:I
    .restart local v5       #removable:Z
    .restart local v6       #emulated:Z
    .restart local v7       #mtpReserve:I
    .restart local v8       #allowMassStorage:Z
    .restart local v9       #maxFileSize:J
    .restart local v11       #a:Landroid/content/res/TypedArray;
    .restart local v13       #description:Ljava/lang/CharSequence;
    .restart local v15       #element:Ljava/lang/String;
    .restart local v20       #path:Ljava/lang/CharSequence;
    .restart local v21       #primary:Z
    :cond_4
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1682
    .local v3, pathString:Ljava/lang/String;
    new-instance v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v2 .. v10}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIZJ)V

    .line 1685
    .local v2, volume:Landroid/os/storage/StorageVolume;
    if-eqz v21, :cond_5

    .line 1686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-nez v4, :cond_6

    .line 1687
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 1692
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-ne v4, v2, :cond_7

    .line 1694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1698
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 1705
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v3           #pathString:Ljava/lang/String;
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v11           #a:Landroid/content/res/TypedArray;
    .end local v13           #description:Ljava/lang/CharSequence;
    .end local v15           #element:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/CharSequence;
    .end local v21           #primary:Z
    :catch_1
    move-exception v14

    .line 1706
    .local v14, e:Ljava/io/IOException;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1689
    .end local v14           #e:Ljava/io/IOException;
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    .restart local v3       #pathString:Ljava/lang/String;
    .restart local v5       #removable:Z
    .restart local v6       #emulated:Z
    .restart local v7       #mtpReserve:I
    .restart local v8       #allowMassStorage:Z
    .restart local v9       #maxFileSize:J
    .restart local v11       #a:Landroid/content/res/TypedArray;
    .restart local v13       #description:Ljava/lang/CharSequence;
    .restart local v15       #element:Ljava/lang/String;
    .restart local v20       #path:Ljava/lang/CharSequence;
    .restart local v21       #primary:Z
    :cond_6
    :try_start_5
    const-string v4, "MountService"

    const-string v23, "multiple primary volumes in storage list"

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1696
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    .line 1713
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v3           #pathString:Ljava/lang/String;
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v11           #a:Landroid/content/res/TypedArray;
    .end local v13           #description:Ljava/lang/CharSequence;
    .end local v15           #element:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/CharSequence;
    .end local v21           #primary:Z
    .restart local v16       #i:I
    .restart local v18       #length:I
    :cond_8
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1709
    throw v23

    .line 1713
    .restart local v15       #element:Ljava/lang/String;
    :cond_9
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1715
    return-void
.end method

.method private registerQbReceiver()V
    .locals 5

    .prologue
    .line 3342
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3343
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3344
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MountService;->mQuickbootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3345
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 4
    .parameter "obbState"

    .prologue
    .line 2703
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2704
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2705
    .local v1, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    .line 2706
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2707
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 2709
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2710
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2715
    return-void
.end method

.method private sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "action"
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    .line 1607
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1609
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    if-lez v1, :cond_1

    .line 1610
    :cond_0
    const-string v1, "mount_unmount_all"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1612
    :cond_1
    const-string v2, "storage_volume"

    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1613
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1615
    return-void
.end method

.method private sendUmsIntent(Z)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1618
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1620
    return-void

    .line 1618
    :cond_0
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_0
.end method

.method private setUmsEnabling(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1919
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1920
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1921
    monitor-exit v1

    .line 1922
    return-void

    .line 1921
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setupHash()V
    .locals 6

    .prologue
    .line 1795
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1796
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 1797
    .local v3, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1798
    .local v2, path:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    .line 1799
    .local v0, emulate:Z
    if-eqz v0, :cond_0

    .line 1800
    const-string v4, "MountService"

    const-string v5, "using emulated external storage"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    const-string v5, "mounted"

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1804
    .end local v0           #emulate:Z
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    return-void
.end method

.method private updateDefaultpath()V
    .locals 8

    .prologue
    .line 3197
    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 3198
    .local v0, defaultPath:Ljava/lang/String;
    move-object v4, v0

    .line 3199
    .local v4, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3200
    .local v3, needChange:Z
    const-string v5, "mounted"

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3201
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v6

    .line 3202
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3203
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3204
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 3205
    const-string v5, "mounted"

    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3206
    const/4 v3, 0x1

    .line 3210
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3211
    if-eqz v3, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3212
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDefaultPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    invoke-static {v4}, Landroid/os/storage/StorageManager;->setDefaultPath(Ljava/lang/String;)V

    .line 3216
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_1
    return-void

    .line 3203
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3210
    .end local v1           #i:I
    .end local v2           #length:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "path"
    .parameter "state"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1010
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v6

    .line 1011
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1012
    .local v3, oldState:Ljava/lang/String;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1014
    const-string v5, "MountService"

    const-string v6, "Duplicate state transition (%s -> %s) for %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    aput-object p2, v7, v9

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :goto_0
    return-void

    .line 1012
    .end local v3           #oldState:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1019
    .restart local v3       #oldState:Ljava/lang/String;
    :cond_0
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "volume state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v5, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1022
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path equals mExternalStoragePath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-boolean v5, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    if-nez v5, :cond_1

    .line 1025
    const-string v5, "unmounted"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1026
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v8, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1033
    iget-object v5, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, p1}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1042
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1043
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_4

    .line 1044
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1046
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_3
    iget-object v5, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v5, p1, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1043
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1035
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    :cond_2
    const-string v5, "mounted"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1036
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v9, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_1

    .line 1040
    :cond_3
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path not equals mExternalStoragePath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1047
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_0
    move-exception v4

    .line 1048
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "MountService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1054
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1050
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 1051
    .local v1, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "MountService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1054
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .parameter "perm"

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1626
    :cond_0
    return-void
.end method

.method private waitForReady()V
    .locals 3

    .prologue
    .line 616
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/MountService;->mReady:Z

    if-nez v1, :cond_0

    .line 617
    const/4 v0, 0x5

    .local v0, retries:I
    :goto_1
    if-lez v0, :cond_2

    .line 618
    iget-boolean v1, p0, Lcom/android/server/MountService;->mReady:Z

    if-eqz v1, :cond_1

    .line 625
    .end local v0           #retries:I
    :cond_0
    return-void

    .line 621
    .restart local v0       #retries:I
    :cond_1
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 617
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 623
    :cond_2
    const-string v1, "MountService"

    const-string v2, "Waiting too long for mReady!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private warnOnNotMounted()V
    .locals 2

    .prologue
    .line 2130
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2131
    const-string v0, "MountService"

    const-string v1, "getSecureContainerList() called when storage not mounted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    :cond_0
    return-void
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .locals 6
    .parameter "password"

    .prologue
    .line 2579
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2580
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2583
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2589
    const-string v3, "MountService"

    const-string v4, "changing encryption password..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cryptfs changepw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2595
    .local v1, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2597
    .local v2, tokens:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 2598
    :cond_1
    const/4 v3, -0x1

    .line 2604
    .end local v1           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #tokens:[Ljava/lang/String;
    :goto_0
    return v3

    .line 2601
    .restart local v1       #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #tokens:[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 2602
    .end local v1           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2604
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v3

    goto :goto_0
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter "id"
    .parameter "sizeMb"
    .parameter "fstype"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2157
    const-string v3, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2158
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2159
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2161
    const/4 v2, 0x0

    .line 2162
    .local v2, rc:I
    const-string v3, "asec create %s %d %s %s %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2164
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2169
    :goto_0
    if-nez v2, :cond_0

    .line 2170
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2171
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2172
    monitor-exit v4

    .line 2174
    :cond_0
    return v2

    .line 2165
    :catch_0
    move-exception v1

    .line 2166
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, -0x1

    goto :goto_0

    .line 2172
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 8
    .parameter "password"

    .prologue
    .line 2514
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2515
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "password cannot be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2518
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.CRYPT_KEEPER"

    const-string v6, "no permission to access the crypt keeper"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2524
    const-string v4, "MountService"

    const-string v5, "decrypting storage..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cryptfs checkpw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2529
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2531
    .local v3, tokens:[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 2532
    :cond_1
    const/4 v0, -0x1

    .line 2550
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tokens:[Ljava/lang/String;
    :cond_2
    :goto_0
    return v0

    .line 2535
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tokens:[Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2537
    .local v0, code:I
    if-nez v0, :cond_2

    .line 2540
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/MountService$7;

    invoke-direct {v5, p0}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2548
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2550
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    goto :goto_0
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2195
    const-string v3, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2196
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2197
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2205
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 2207
    const/4 v2, 0x0

    .line 2209
    .local v2, rc:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "asec destroy %s%s"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    const/4 v7, 0x1

    if-eqz p2, :cond_2

    const-string v3, " force"

    :goto_0
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2219
    :goto_1
    if-nez v2, :cond_1

    .line 2220
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2221
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2222
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2224
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2227
    :cond_1
    return v2

    .line 2209
    :cond_2
    :try_start_2
    const-string v3, ""
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2210
    :catch_0
    move-exception v1

    .line 2211
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2212
    .local v0, code:I
    const/16 v3, 0x195

    if-ne v0, v3, :cond_3

    .line 2213
    const/4 v2, -0x7

    goto :goto_1

    .line 2215
    :cond_3
    const/4 v2, -0x1

    goto :goto_1

    .line 2224
    .end local v0           #code:I
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3145
    iget-object v10, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 3146
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " without permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3187
    :goto_0
    return-void

    .line 3152
    :cond_0
    iget-object v11, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v11

    .line 3153
    :try_start_0
    const-string v10, "  mObbMounts:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3155
    iget-object v10, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3156
    .local v1, binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3158
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    const-string v10, "    Key="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3160
    .local v8, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/MountService$ObbState;

    .line 3161
    .local v7, obbState:Lcom/android/server/MountService$ObbState;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3173
    .end local v1           #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #obbState:Lcom/android/server/MountService$ObbState;
    .end local v8           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3165
    .restart local v1       #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_2
    :try_start_1
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3166
    const-string v10, "  mObbPathToStateMap:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    iget-object v10, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3168
    .local v6, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3169
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3170
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3171
    const-string v10, " -> "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/MountService$ObbState;

    invoke-virtual {v10}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3173
    .end local v3           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3175
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v11

    .line 3178
    :try_start_2
    const-string v10, "  mVolumes:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3181
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_4

    .line 3182
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageVolume;

    .line 3183
    .local v9, v:Landroid/os/storage/StorageVolume;
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3184
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3186
    .end local v9           #v:Landroid/os/storage/StorageVolume;
    :cond_4
    monitor-exit v11

    goto/16 :goto_0

    .end local v0           #N:I
    .end local v4           #i:I
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 6
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 2555
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2556
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2559
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2565
    const-string v2, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs enablecrypto inplace %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2575
    :goto_0
    return v1

    .line 2570
    :catch_0
    move-exception v0

    .line 2572
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 6
    .parameter "id"

    .prologue
    .line 2178
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2179
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2181
    const/4 v1, 0x0

    .line 2183
    .local v1, rc:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec finalize %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2191
    :goto_0
    return v1

    .line 2188
    :catch_0
    move-exception v0

    .line 2189
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2386
    return-void
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 2070
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2071
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2073
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEncryptionState()I
    .locals 3

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    const-string v0, "MountService"

    const-string v1, "getEncryptionState MTK_EMMC_SUPPORT"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    const/4 v0, 0x1

    return v0
.end method

.method public getMediaProcessStorageUser(Ljava/lang/String;)I
    .locals 13
    .parameter "path"

    .prologue
    const/4 v7, -0x1

    .line 2102
    const-string v8, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v8}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2103
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2104
    const/4 v4, -0x1

    .line 2106
    .local v4, pid:I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v9, "storage users %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x70

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 2110
    .local v5, r:[Ljava/lang/String;
    array-length v8, v5

    new-array v0, v8, [I

    .line 2111
    .local v0, data:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v5

    if-ge v2, v8, :cond_0

    .line 2112
    aget-object v8, v5, v2

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2113
    .local v6, tok:[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v6, v8

    const-string v9, "android.process.media"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_1

    .line 2115
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    move v7, v4

    .line 2126
    .end local v0           #data:[I
    .end local v2           #i:I
    .end local v5           #r:[Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 2116
    .restart local v0       #data:[I
    .restart local v2       #i:I
    .restart local v5       #r:[Ljava/lang/String;
    .restart local v6       #tok:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2117
    .local v3, nfe:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v8, "MountService"

    const-string v9, "Error parsing pid %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v6, v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2123
    .end local v0           #data:[I
    .end local v2           #i:I
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .end local v5           #r:[Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2124
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v8, "MountService"

    const-string v9, "Failed to retrieve storage users list"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2111
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0       #data:[I
    .restart local v2       #i:I
    .restart local v5       #r:[Ljava/lang/String;
    .restart local v6       #tok:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filename"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2408
    if-nez p1, :cond_0

    .line 2409
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "filename cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2412
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2413
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2416
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "obb path %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2417
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2418
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2419
    .local v0, code:I
    const/16 v4, 0xd3

    if-eq v0, v4, :cond_1

    .line 2420
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2423
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2424
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2425
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_2

    .line 2426
    const/4 v4, 0x0

    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :goto_0
    return-object v4

    .line 2422
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, v3, v4
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2428
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    .restart local v1       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2361
    const-string v4, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2362
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2363
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2366
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "asec fspath %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2367
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2368
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2369
    .local v0, code:I
    const/16 v4, 0xd3

    if-eq v0, v4, :cond_0

    .line 2370
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2373
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2374
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2375
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_1

    .line 2376
    const-string v4, "MountService"

    const-string v5, "Container \'%s\' not found"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    const/4 v4, 0x0

    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :goto_0
    return-object v4

    .line 2372
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, v3, v4
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2379
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    .restart local v1       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 2136
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2137
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2138
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2141
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "asec list"

    const/16 v3, 0x6f

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2143
    :goto_0
    return-object v1

    .line 2142
    :catch_0
    move-exception v0

    .line 2143
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2337
    const-string v4, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2338
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2339
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2342
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "asec path %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2343
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2344
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2345
    .local v0, code:I
    const/16 v4, 0xd3

    if-eq v0, v4, :cond_0

    .line 2346
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2349
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2350
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2351
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_1

    .line 2352
    const-string v4, "MountService"

    const-string v5, "Container \'%s\' not found"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    const/4 v4, 0x0

    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :goto_0
    return-object v4

    .line 2348
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, v3, v4
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2355
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    .restart local v1       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 12
    .parameter "path"

    .prologue
    const/4 v11, 0x0

    .line 2077
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2078
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2080
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "storage users %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x70

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 2084
    .local v4, r:[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 2085
    .local v0, data:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 2086
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2088
    .local v5, tok:[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2085
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2089
    :catch_0
    move-exception v3

    .line 2090
    .local v3, nfe:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v6, "MountService"

    const-string v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2097
    .end local v0           #data:[I
    .end local v2           #i:I
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #r:[Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 2095
    :catch_1
    move-exception v1

    .line 2096
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2097
    new-array v0, v11, [I

    goto :goto_1
.end method

.method public getVolumeList()[Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 2656
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2657
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2658
    .local v2, size:I
    new-array v1, v2, [Landroid/os/Parcelable;

    .line 2659
    .local v1, result:[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2660
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    aput-object v3, v1, v0

    .line 2659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2662
    :cond_0
    monitor-exit v4

    return-object v1

    .line 2663
    .end local v0           #i:I
    .end local v1           #result:[Landroid/os/Parcelable;
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "mountPoint"

    .prologue
    .line 2020
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2021
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2022
    .local v0, state:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2023
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2025
    const-string v0, "removed"

    .line 2032
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 2028
    :cond_1
    const-string v0, "not_present"

    goto :goto_0

    .line 2033
    .end local v0           #state:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isExternalStorageEmulated()Z
    .locals 1

    .prologue
    .line 2037
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    return v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "filename"

    .prologue
    .line 2434
    if-nez p1, :cond_0

    .line 2435
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2438
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2439
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSDExist()Z
    .locals 4

    .prologue
    .line 3299
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3300
    invoke-direct {p0}, Lcom/android/server/MountService;->doGetSDExist()Z

    move-result v0

    .line 3301
    .local v0, exist:Z
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSDExist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    return v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 2301
    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2302
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2303
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2305
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2306
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 2

    .prologue
    .line 1929
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    const/4 v0, 0x1

    .line 1933
    :goto_0
    return v0

    .line 1932
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1933
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v1

    goto :goto_0

    .line 1934
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 2

    .prologue
    .line 2012
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2013
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ums"

    invoke-direct {p0, v0, v1}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 3191
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 3192
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3194
    :cond_0
    return-void
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .locals 7
    .parameter "filename"
    .parameter "key"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2445
    if-nez p1, :cond_0

    .line 2446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2449
    :cond_0
    if-nez p3, :cond_1

    .line 2450
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "token cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2453
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2454
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2455
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;)V

    .line 2456
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2460
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2231
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2232
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2233
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2235
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2236
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2237
    const/4 v3, -0x6

    monitor-exit v5

    .line 2257
    :cond_0
    :goto_0
    return v3

    .line 2239
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2241
    const/4 v3, 0x0

    .line 2242
    .local v3, rc:I
    const-string v4, "asec mount %s %s %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2244
    .local v0, cmd:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2252
    :cond_2
    :goto_1
    if-nez v3, :cond_0

    .line 2253
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2254
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2255
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2239
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #rc:I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 2245
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v3       #rc:I
    :catch_0
    move-exception v2

    .line 2246
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2247
    .local v1, code:I
    const/16 v4, 0x195

    if-eq v1, v4, :cond_2

    .line 2248
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 2041
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2043
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2044
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 1

    .prologue
    .line 1120
    new-instance v0, Lcom/android/server/MountService$2;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$2;->start()V

    .line 1186
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 23
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 1193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1194
    .local v7, builder:Ljava/lang/StringBuilder;
    const-string v18, "onEvent::"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " raw= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    if-eqz p3, :cond_0

    .line 1197
    const-string v18, " cooked = "

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    move-object/from16 v6, p3

    .local v6, arr$:[Ljava/lang/String;
    array-length v13, v6

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v17, v6, v11

    .line 1199
    .local v17, str:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1202
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v17           #str:Ljava/lang/String;
    :cond_0
    const-string v18, "MountService"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const/16 v18, 0x25d

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1210
    const/16 v18, 0x2

    aget-object v18, p3, v18

    const/16 v19, 0x3

    aget-object v19, p3, v19

    const/16 v20, 0x7

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0xa

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1315
    :cond_1
    :goto_1
    const/16 v18, 0x1

    :goto_2
    return v18

    .line 1213
    :cond_2
    const/16 v18, 0x276

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x277

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x278

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1232
    :cond_3
    new-instance v18, Lcom/android/server/MountService$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/MountService$3;->start()V

    .line 1250
    const/4 v5, 0x0

    .line 1251
    .local v5, action:Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v12, p3, v18

    .line 1252
    .local v12, label:Ljava/lang/String;
    const/16 v18, 0x3

    aget-object v16, p3, v18

    .line 1253
    .local v16, path:Ljava/lang/String;
    const/4 v14, -0x1

    .line 1254
    .local v14, major:I
    const/4 v15, -0x1

    .line 1257
    .local v15, minor:I
    const/16 v18, 0x6

    :try_start_0
    aget-object v18, p3, v18

    const/16 v19, 0x1

    const/16 v20, 0x6

    aget-object v20, p3, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1258
    .local v8, devComp:Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1259
    .local v9, devTok:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1260
    const/16 v18, 0x1

    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 1265
    .end local v8           #devComp:Ljava/lang/String;
    .end local v9           #devTok:[Ljava/lang/String;
    :goto_3
    const/16 v18, 0x276

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1266
    new-instance v18, Lcom/android/server/MountService$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/MountService$4;->start()V

    .line 1279
    const-string v5, "android.intent.action.SD_INSERTED"

    .line 1308
    :goto_4
    if-eqz v5, :cond_1

    .line 1309
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1261
    :catch_0
    move-exception v10

    .line 1262
    .local v10, ex:Ljava/lang/Exception;
    const-string v18, "MountService"

    const-string v19, "Failed to parse major/minor"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1280
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_4
    const/16 v18, 0x277

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1284
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "bad_removal"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1285
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 1288
    :cond_5
    const-string v18, "MountService"

    const-string v19, "Sending unmounted event first"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const-string v18, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const-string v18, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const-string v18, "MountService"

    const-string v19, "Sending media removed"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const-string v18, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string v5, "android.intent.action.MEDIA_REMOVED"

    goto :goto_4

    .line 1295
    :cond_6
    const/16 v18, 0x278

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1296
    const-string v18, "MountService"

    const-string v19, "Sending unmounted event first"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const-string v18, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string v18, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v18, "MountService"

    const-string v19, "Sending media bad removal"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const-string v18, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v5, "android.intent.action.MEDIA_BAD_REMOVAL"

    goto/16 :goto_4

    .line 1305
    :cond_7
    const-string v18, "MountService"

    const-string v19, "Unknown code {%d}"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1312
    .end local v5           #action:Ljava/lang/String;
    .end local v12           #label:Ljava/lang/String;
    .end local v14           #major:I
    .end local v15           #minor:I
    .end local v16           #path:Ljava/lang/String;
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1810
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1811
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1813
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1814
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1818
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 1819
    return-void

    .line 1815
    :catch_0
    move-exception v1

    .line 1816
    .local v1, rex:Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1818
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "oldId"
    .parameter "newId"

    .prologue
    .line 2311
    const-string v3, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2312
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2313
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2315
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2320
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2321
    :cond_0
    const/4 v2, -0x6

    monitor-exit v4

    .line 2333
    :goto_0
    return v2

    .line 2323
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2325
    const/4 v2, 0x0

    .line 2326
    .local v2, rc:I
    const-string v3, "asec rename %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2328
    .local v0, cmd:Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2329
    :catch_0
    move-exception v1

    .line 2330
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, -0x1

    goto :goto_0

    .line 2323
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v2           #rc:I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 14
    .parameter "enable"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1938
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1939
    const-string v9, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v9}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1951
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v10

    .line 1952
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1953
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 1954
    .local v0, count:I
    new-array v9, v0, [Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1955
    .local v5, paths:[Ljava/lang/String;
    new-array v7, v0, [Ljava/lang/String;

    .line 1956
    .local v7, states:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1957
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    aget-object v11, v5, v1

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v1

    .line 1956
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1959
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 1962
    aget-object v4, v5, v1

    .line 1963
    .local v4, path:Ljava/lang/String;
    aget-object v6, v7, v1

    .line 1964
    .local v6, state:Ljava/lang/String;
    const-string v3, "ums"

    .line 1966
    .local v3, method:Ljava/lang/String;
    if-eqz p1, :cond_5

    const-string v9, "mounted"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1967
    iput-boolean v12, p0, Lcom/android/server/MountService;->mIsTurnOnUsb:Z

    .line 1969
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1970
    iget v9, p0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/MountService;->mUMSCount:I

    .line 1971
    new-instance v8, Lcom/android/server/MountService$UmsEnableCallBack;

    invoke-direct {v8, p0, v4, v3, v12}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1972
    .local v8, umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    iget-object v9, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v12, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1974
    invoke-direct {p0, v13}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1981
    .end local v8           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_1
    :goto_2
    if-nez p1, :cond_4

    const-string v9, "shared"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "unmounted"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1982
    :cond_2
    iput-boolean v12, p0, Lcom/android/server/MountService;->mIsTurnOnUsb:Z

    .line 1983
    invoke-direct {p0, v4, v3, p1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1984
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_3

    .line 1985
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to remount "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " after disabling share method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_3
    iput-boolean v13, p0, Lcom/android/server/MountService;->mIsTurnOnUsb:Z

    .line 1961
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1959
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #method:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #paths:[Ljava/lang/String;
    .end local v6           #state:Ljava/lang/String;
    .end local v7           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1975
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3       #method:Ljava/lang/String;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #paths:[Ljava/lang/String;
    .restart local v6       #state:Ljava/lang/String;
    .restart local v7       #states:[Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_1

    const-string v9, "unmounted"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1976
    invoke-direct {p0, v4, v3, p1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1996
    .end local v3           #method:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v6           #state:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public shareCDRom(Z)V
    .locals 4
    .parameter "share"

    .prologue
    .line 3219
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareCDRom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    move v0, p1

    .line 3221
    .local v0, doShare:Z
    new-instance v1, Lcom/android/server/MountService$8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/MountService$8;-><init>(Lcom/android/server/MountService;Z)V

    invoke-virtual {v1}, Lcom/android/server/MountService$8;->start()V

    .line 3240
    return-void
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 13
    .parameter "observer"

    .prologue
    const/4 v11, 0x0

    .line 1833
    const-string v9, "android.permission.SHUTDOWN"

    invoke-direct {p0, v9}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1835
    const-string v9, "MountService"

    const-string v10, "Shutting down"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iput v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 1837
    iput-boolean v11, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 1838
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v10

    .line 1841
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 1842
    .local v3, mState:Ljava/lang/String;
    const-string v9, "shared"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "mounted"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1843
    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 1846
    :cond_1
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1847
    .local v4, path:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1849
    .local v7, state:Ljava/lang/String;
    const-string v9, "shared"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1857
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 1879
    :cond_3
    :goto_1
    const-string v9, "mounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1880
    iget v9, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 1882
    new-instance v8, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v8, p0, v4, p1}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 1883
    .local v8, ucb:Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v9, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1909
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mState:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    .end local v8           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 1858
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #mState:Ljava/lang/String;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v7       #state:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v9, "checking"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1864
    const/16 v5, 0x1e

    .local v5, retries:I
    move v6, v5

    .line 1865
    .end local v5           #retries:I
    .local v6, retries:I
    :goto_2
    const-string v9, "checking"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_8

    add-int/lit8 v5, v6, -0x1

    .end local v6           #retries:I
    .restart local v5       #retries:I
    if-ltz v6, :cond_5

    .line 1867
    const-wide/16 v11, 0x3e8

    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1872
    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    move v6, v5

    .end local v5           #retries:I
    .restart local v6       #retries:I
    goto :goto_2

    .line 1868
    .end local v6           #retries:I
    .restart local v5       #retries:I
    :catch_0
    move-exception v2

    .line 1869
    .local v2, iex:Ljava/lang/InterruptedException;
    const-string v9, "MountService"

    const-string v11, "Interrupted while waiting for media"

    invoke-static {v9, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1874
    .end local v2           #iex:Ljava/lang/InterruptedException;
    :cond_5
    :goto_3
    if-nez v5, :cond_3

    .line 1875
    const-string v9, "MountService"

    const-string v11, "Timed out waiting for media to check"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1886
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #retries:I
    .end local v7           #state:Ljava/lang/String;
    :cond_6
    iget v9, p0, Lcom/android/server/MountService;->mShutdownCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-gtz v9, :cond_7

    if-eqz p1, :cond_7

    .line 1893
    const/4 v9, 0x0

    :try_start_4
    invoke-interface {p1, v9}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1898
    :cond_7
    :goto_4
    :try_start_5
    new-instance v9, Lcom/android/server/MountService$6;

    invoke-direct {v9, p0}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v9}, Lcom/android/server/MountService$6;->start()V

    .line 1909
    monitor-exit v10

    .line 1910
    return-void

    .line 1894
    :catch_1
    move-exception v0

    .line 1895
    .local v0, e:Landroid/os/RemoteException;
    const-string v9, "MountService"

    const-string v11, "RemoteException when shutting down"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v6       #retries:I
    .restart local v7       #state:Ljava/lang/String;
    :cond_8
    move v5, v6

    .end local v6           #retries:I
    .restart local v5       #retries:I
    goto :goto_3
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 7
    .parameter "filename"
    .parameter "force"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2464
    if-nez p1, :cond_0

    .line 2465
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2468
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2469
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2470
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2471
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2475
    return-void
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2261
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2262
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2263
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2265
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2266
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2267
    const/4 v3, -0x5

    monitor-exit v5

    .line 2297
    :cond_0
    :goto_0
    return v3

    .line 2269
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2277
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2279
    const/4 v3, 0x0

    .line 2280
    .local v3, rc:I
    const-string v5, "asec unmount %s%s"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v6, v4

    const/4 v7, 0x1

    if-eqz p2, :cond_2

    const-string v4, " force"

    :goto_1
    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2282
    .local v0, cmd:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2292
    :goto_2
    if-nez v3, :cond_0

    .line 2293
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2294
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2295
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2269
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #rc:I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 2280
    .restart local v3       #rc:I
    :cond_2
    const-string v4, ""

    goto :goto_1

    .line 2283
    .restart local v0       #cmd:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2284
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2285
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 2286
    const/4 v3, -0x7

    goto :goto_2

    .line 2288
    :cond_3
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    .line 2048
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2049
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2051
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2053
    .local v1, volState:Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unmounting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " removeEncryption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2067
    :cond_0
    :goto_0
    return-void

    .line 2065
    :cond_1
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 2066
    .local v0, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1822
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1823
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 1824
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v2, p1, :cond_0

    .line 1825
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1826
    monitor-exit v3

    .line 1830
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_0
    return-void

    .line 1829
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .locals 8
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2614
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_0

    .line 2615
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "no permission to access the crypt keeper"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2618
    :cond_0
    iget-object v5, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.CRYPT_KEEPER"

    const-string v7, "no permission to access the crypt keeper"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2622
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "password cannot be empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2625
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2628
    const-string v5, "MountService"

    const-string v6, "validating encryption password..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cryptfs verifypw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2633
    .local v3, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2635
    .local v4, tokens:[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    .line 2636
    :cond_2
    const-string v2, "Unexpected result from cryptfs verifypw: {"

    .line 2637
    .local v2, msg:Ljava/lang/String;
    if-nez v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2642
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2643
    const-string v5, "MountService"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    const/4 v5, -0x1

    .line 2651
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #tokens:[Ljava/lang/String;
    :goto_0
    return v5

    .line 2638
    .restart local v2       #msg:Ljava/lang/String;
    .restart local v3       #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #tokens:[Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 2639
    if-eqz v1, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2640
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2638
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2647
    .end local v1           #i:I
    .end local v2           #msg:Ljava/lang/String;
    :cond_6
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cryptfs verifypw => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 2649
    .end local v3           #response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2651
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_0
.end method
