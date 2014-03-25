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
        Lcom/android/server/MountService$CDRomState;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field private static final EXTERNAL_OTG:Ljava/lang/String; = "/mnt/usbotg"

.field private static final EXTERNAL_SD1:Ljava/lang/String; = "/storage/emulated/0"

.field private static final EXTERNAL_SD2:Ljava/lang/String; = "/storage/sdcard1"

.field private static final FIRST_BOOT_MOUNTED:Ljava/lang/String; = "first_boot_mounted"

.field private static final H_SYSTEM_READY:I = 0x4

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final INSERT_OTG:Ljava/lang/String; = "insert_otg"

.field private static final INTENT_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final LABEL_SD1:Ljava/lang/String; = "sdcard"

.field private static final LABEL_SD2:Ljava/lang/String; = "sdcard2"

.field private static final LABLE_OTG:Ljava/lang/String; = "usbotg"

.field private static final LABLE_SD:Ljava/lang/String; = "sdcard"

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_FILE_SIZE:J = 0xffffffffL

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final MEDIA_EJECT_SHUTDOWN_TIME:I = 0x1f4

.field private static final MEDIA_EJECT_TIME:I = 0x5dc

.field private static final MOUNT_UNMOUNT_ALL:Ljava/lang/String; = "mount_unmount_all"

.field private static final MTP_RESERVE_SPACE:I = 0xa00000

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final OMADM_SD_FORMAT:Ljava/lang/String; = "com.mediatek.dm.LAWMO_WIPE"

.field private static final OMADM_SYNC_LOCK:Ljava/lang/Object; = null

.field private static final OMADM_USB_DISABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_LOCK"

.field private static final OMADM_USB_ENABLE:Ljava/lang/String; = "com.mediatek.dm.LAWMO_UNLOCK"

.field private static final OTG_EVENT605_LENGTH:I = 0xd

.field private static final OTG_EVENT632_LENGTH:I = 0x7

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final PROP_SD_SWAP:Ljava/lang/String; = "vold_swap_state"

.field private static final PROP_SD_SWAP_FALSE:Ljava/lang/String; = "0"

.field private static final PROP_SD_SWAP_TRUE:Ljava/lang/String; = "1"

.field private static final PROP_SWAPPING:Ljava/lang/String; = "sys.sd.swapping"

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final SD_EXIST:Ljava/lang/String; = "SD_EXIST"

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_AUTO:Ljava/lang/String; = "storage_auto"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final TURNONUSB_SYNC_LOCK:Ljava/lang/Object; = null

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

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private mBootCompleted:Z

.field private final mBootIPOReceiver:Landroid/content/BroadcastReceiver;

.field private mCheckedSDExist:Z

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDMReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mEmulatedTemplate:Landroid/os/storage/StorageVolume;

.field private mFirstTimeSDSwapIntent:Z

.field private mFirstTime_SwapStateForSDSwapMountPoint:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAnyAllowUMS:Z

.field private mIsSDExist:Z

.field private mIsTurnOnOffUsb:Z

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

.field private mMountAll:Z

.field private mMountSwap:Z

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

.field private mOldUserId:I

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private final mQuickbootReceiver:Landroid/content/BroadcastReceiver;

.field private mSD1BootMounted:Z

.field private mSD2BootMounted:Z

.field private mSendUmsConnectedOnBoot:Z

.field private mSetDefaultEnable:Z

.field private mShutdownCount:I

.field private mShutdownRet:I

.field private mShutdownSD:Z

.field private mSwapStateForSDSwapIntent:Z

.field private mSwapStateForSDSwapMountPoint:Z

.field private volatile mSystemReady:Z

.field private mUMSCount:I

.field private mUmountSdByUserSwitch:Z

.field private mUmsAvailable:Z

.field private mUmsEnabling:Z

.field private mUnmountPrimary:Z

.field private mUnmountSwap:Z

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumePrimary:Landroid/os/storage/StorageVolume;

.field private mVolumeSecondary:Landroid/os/storage/StorageVolume;

.field private final mVolumeStates:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesByPath:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVolumesLock"
    .end annotation

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

.field private final mVolumesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

    .line 330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;

    .line 440
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 2161
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 253
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    .line 258
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    .line 261
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    .line 264
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 275
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 276
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mIsAnyAllowUMS:Z

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MountService;->mShutdownRet:I

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mIsSDExist:Z

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mCheckedSDExist:Z

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mMountAll:Z

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mMountSwap:Z

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapMountPoint:Z

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z

    .line 334
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/MountService;->mOldUserId:I

    .line 335
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/MountService;->mUserId:I

    .line 343
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 443
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 855
    new-instance v0, Lcom/android/server/MountService$2;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 894
    new-instance v0, Lcom/android/server/MountService$3;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 905
    new-instance v0, Lcom/android/server/MountService$4;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDMReceiver:Landroid/content/BroadcastReceiver;

    .line 985
    new-instance v0, Lcom/android/server/MountService$5;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mBootIPOReceiver:Landroid/content/BroadcastReceiver;

    .line 4257
    new-instance v0, Lcom/android/server/MountService$QuickbootBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$1;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mQuickbootReceiver:Landroid/content/BroadcastReceiver;

    .line 2162
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 2164
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2165
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/MountService;->readStorageListLocked()V

    .line 2166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 2171
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 2172
    .local v13, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 2173
    .local v10, path:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    .line 2174
    .local v7, emulate:Z
    if-eqz v7, :cond_0

    .line 2175
    const-string v0, "MountService"

    const-string v1, "using emulated external storage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    const-string v1, "mounted"

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2170
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2166
    .end local v7           #emulate:Z
    .end local v8           #i:I
    .end local v10           #path:Ljava/lang/String;
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2182
    .restart local v8       #i:I
    :cond_1
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 2184
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MountService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2185
    iget-object v0, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2186
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 2189
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 2190
    .local v12, userFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2191
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2194
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2199
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2200
    :try_start_2
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 2201
    .restart local v13       #volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2202
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MountService;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2207
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2219
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 2220
    .local v6, bootIPOFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2221
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2222
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mBootIPOReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2224
    invoke-direct {p0}, Lcom/android/server/MountService;->registerQbReceiver()V

    .line 2227
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 2234
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 2236
    new-instance v11, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector"

    invoke-direct {v11, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2237
    .local v11, thread:Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 2243
    return-void

    .line 2207
    .end local v6           #bootIPOFilter:Landroid/content/IntentFilter;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #thread:Ljava/lang/Thread;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
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
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$1010(Lcom/android/server/MountService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mShutdownRet:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/MountService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/server/MountService;->mShutdownRet:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method static synthetic access$1410(Lcom/android/server/MountService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/MountService;->mShutdownCount:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->handleSystemReady()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;Landroid/os/UserHandle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/server/MountService;->mIsUsbConnected:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeVolumeLocked(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/MountService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/server/MountService;->mOldUserId:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/MountService;->mUserId:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/MountService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/server/MountService;->mUserId:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V

    return-void
.end method

.method static synthetic access$2600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->enableUSBFuction(Z)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/MountService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->enableDefaultPathDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/MountService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/MountService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->doGetCDRomState()I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doShareUnshareCDRom(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
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
    .line 3210
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3211
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3213
    .local v4, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_1

    .line 3214
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3215
    .restart local v4       #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3225
    :cond_0
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3227
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3242
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3243
    return-void

    .line 3217
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

    .line 3218
    .local v3, o:Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3219
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3228
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #o:Lcom/android/server/MountService$ObbState;
    :catch_0
    move-exception v1

    .line 3233
    .local v1, e:Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3234
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3235
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3239
    :cond_3
    throw v1
.end method

.method private addVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .locals 4
    .parameter "volume"

    .prologue
    .line 2128
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVolumeLocked() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2130
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 2131
    .local v0, existing:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 2132
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    :cond_0
    return-void
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 8
    .parameter "canonicalPath"
    .parameter "userId"
    .parameter "forVold"

    .prologue
    .line 3671
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3711
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 3675
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3678
    .local v4, path:Ljava/lang/String;
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3681
    .local v5, userEnv:Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3683
    .local v0, externalPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3686
    .local v1, legacyExternalPath:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3687
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3695
    :goto_1
    const-string v2, "Android/obb"

    .line 3696
    .local v2, obbPath:Ljava/lang/String;
    const-string v6, "Android/obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3697
    const-string v6, "Android/obb"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3699
    if-eqz p2, :cond_3

    .line 3700
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getEmulatedStorageObbSource()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3688
    .end local v2           #obbPath:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3689
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3702
    .restart local v2       #obbPath:Ljava/lang/String;
    :cond_3
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3703
    .local v3, ownerEnv:Landroid/os/Environment$UserEnvironment;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/os/Environment$UserEnvironment;->getExternalStorageObbDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3708
    .end local v3           #ownerEnv:Landroid/os/Environment$UserEnvironment;
    :cond_4
    if-eqz p2, :cond_5

    .line 3709
    new-instance v6, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getEmulatedStorageSource(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 3711
    :cond_5
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    .locals 6
    .parameter "user"

    .prologue
    .line 2109
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_0

    .line 2110
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Missing emulated volume multi-user template"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2113
    :cond_0
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 2114
    .local v1, userEnv:Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2115
    .local v0, path:Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    invoke-static {v3, v0, p1}, Landroid/os/storage/StorageVolume;->fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 2116
    .local v2, volume:Landroid/os/storage/StorageVolume;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 2117
    invoke-direct {p0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2119
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSystemReady:Z

    if-eqz v3, :cond_1

    .line 2120
    const-string v3, "mounted"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 2125
    :goto_0
    return-void

    .line 2123
    :cond_1
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .locals 8
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 1845
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "format"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1854
    :goto_0
    return v2

    .line 1847
    :catch_0
    move-exception v1

    .line 1848
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1849
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_0

    .line 1850
    const/4 v2, -0x2

    goto :goto_0

    .line 1851
    :cond_0
    const/16 v2, 0x193

    if-ne v0, v2, :cond_1

    .line 1852
    const/4 v2, -0x4

    goto :goto_0

    .line 1854
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private doGetCDRomState()I
    .locals 15

    .prologue
    const/4 v11, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 3826
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v13, "cd-rom status"

    new-array v14, v9, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3830
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v12, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v12, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3836
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

    .line 3837
    .local v4, line:Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3838
    .local v7, tok:[Ljava/lang/String;
    array-length v12, v7

    if-ge v12, v11, :cond_1

    .line 3839
    const-string v9, "MountService"

    const-string v10, "Malformed response get CD rom ststus"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tok:[Ljava/lang/String;
    :goto_0
    return v8

    .line 3831
    :catch_0
    move-exception v2

    .line 3832
    .local v2, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v9, "MountService"

    const-string v10, "Failed to get CD rom ststus!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3845
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

    .line 3850
    .local v1, code:I
    const/16 v12, 0xd6

    if-ne v1, v12, :cond_6

    .line 3851
    const-string v12, "Shared"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v8, v9

    .line 3852
    goto :goto_0

    .line 3846
    .end local v1           #code:I
    :catch_1
    move-exception v5

    .line 3847
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

    .line 3853
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_2
    const-string v12, "Unshared"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v8, v10

    .line 3854
    goto :goto_0

    .line 3855
    :cond_3
    const-string v12, "Sharing"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v8, v11

    .line 3856
    goto :goto_0

    .line 3857
    :cond_4
    const-string v12, "Unsharing"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3858
    const/4 v8, 0x3

    goto :goto_0

    .line 3859
    :cond_5
    const-string v12, "Not_Exist"

    aget-object v13, v7, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3860
    const/4 v8, 0x4

    goto :goto_0

    .line 3863
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

    .line 3867
    .end local v1           #code:I
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    :cond_7
    const-string v9, "MountService"

    const-string v10, "Got an empty response"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "path"
    .parameter "method"

    .prologue
    const/4 v2, 0x0

    .line 1862
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "shared"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1868
    .local v0, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0xd4

    if-ne v3, v4, :cond_0

    .line 1869
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1871
    .end local v0           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_0
    :goto_0
    return v2

    .line 1863
    :catch_0
    move-exception v1

    .line 1864
    .local v1, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read response to volume shared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .locals 10
    .parameter "path"

    .prologue
    .line 1719
    const/4 v4, 0x0

    .line 1722
    .local v4, rc:I
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1723
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 1724
    .local v5, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMountVolume: Mouting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :try_start_1
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "mount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1732
    .local v1, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doMountVolume  cmd:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1773
    .end local v1           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :cond_0
    :goto_0
    return v4

    .line 1724
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1734
    .restart local v5       #volume:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v3

    .line 1738
    .local v3, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 1739
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    .line 1740
    .local v2, code:I
    const/16 v6, 0x191

    if-ne v2, v6, :cond_1

    .line 1744
    const/4 v4, -0x2

    .line 1768
    :goto_1
    if-eqz v0, :cond_0

    .line 1769
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1745
    :cond_1
    const/16 v6, 0x192

    if-ne v2, v6, :cond_2

    .line 1746
    const-string v6, "MountService"

    const-string v7, " updating volume state :: media nofs"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    const-string v6, "nofs"

    invoke-direct {p0, v5, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1751
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 1752
    const/4 v4, -0x3

    goto :goto_1

    .line 1753
    :cond_2
    const/16 v6, 0x193

    if-ne v2, v6, :cond_3

    .line 1754
    const-string v6, "MountService"

    const-string v7, "updating volume state media corrupt"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const-string v6, "unmountable"

    invoke-direct {p0, v5, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1759
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 1760
    const/4 v4, -0x4

    goto :goto_1

    .line 1762
    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private doSDSwapVolumeUpdate()V
    .locals 2

    .prologue
    .line 3923
    const-string v0, "MountService"

    const-string v1, "doSDSwapVolumeUpdate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    const-string v0, "MountService"

    const-string v1, "MTK_2SDCARD_SWAP not enable!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    return-void
.end method

.method private doShareSDVolumeUpdate()V
    .locals 0

    .prologue
    .line 3905
    return-void
.end method

.method private doShareUnshareCDRom(Z)V
    .locals 7
    .parameter "share"

    .prologue
    .line 3813
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

    .line 3815
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

    .line 3820
    :goto_1
    return-void

    .line 3815
    :cond_0
    const-string v1, "un"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3817
    :catch_0
    move-exception v0

    .line 3818
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

    .line 1086
    const-string v1, "ums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1087
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Method %s not supported"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1091
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    const-string v1, "share"

    :goto_0
    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v1, 0x2

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1095
    :goto_1
    return-void

    .line 1091
    :cond_1
    const-string v1, "unshare"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
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

    .line 1788
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1838
    :goto_0
    return v3

    .line 1798
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 1802
    const-string v5, "/storage/emulated/0"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1803
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4, v4}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1807
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1808
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_2

    .line 1812
    const-string v5, "force_and_revert"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1823
    :goto_1
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 1825
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1827
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 1828
    goto :goto_0

    .line 1814
    :cond_2
    if-eqz p2, :cond_3

    .line 1818
    :try_start_2
    const-string v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1829
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v2

    .line 1832
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1833
    .local v1, code:I
    if-ne v1, v3, :cond_4

    .line 1834
    const/4 v3, -0x5

    goto :goto_0

    .line 1821
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0       #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :cond_3
    :try_start_3
    const-string v5, "swap"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1827
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1835
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v1       #code:I
    .restart local v2       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_4
    const/16 v3, 0x195

    if-ne v1, v3, :cond_5

    .line 1836
    const/4 v3, -0x7

    goto :goto_0

    .line 1838
    :cond_5
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private enableDefaultPathDialog()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 4185
    const/4 v2, 0x0

    .line 4186
    .local v2, mountCount:I
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4187
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4188
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4190
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4191
    .local v3, state:Ljava/lang/String;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableDefaultPathDialog state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4196
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v3           #state:Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 4197
    if-le v2, v4, :cond_2

    :goto_1
    return v4

    .line 4196
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4197
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private enableDefaultToast()Z
    .locals 5

    .prologue
    .line 4205
    const/4 v1, 0x0

    .line 4206
    .local v1, internal:Z
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4207
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 4208
    .local v2, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4209
    const/4 v1, 0x1

    .line 4213
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    monitor-exit v4

    .line 4214
    return v1

    .line 4213
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private enableUSBFuction(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 3798
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3800
    const/4 v0, 0x0

    .line 3801
    .local v0, cmd:Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "USB enable"

    .line 3802
    :goto_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3807
    :goto_1
    return-void

    .line 3801
    :cond_0
    const-string v0, "USB disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3803
    :catch_0
    move-exception v2

    .line 3804
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3805
    .local v1, code:I
    const-string v3, "MountService"

    const-string v4, "enableUSBFunction failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4167
    const-class v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getDefaultPath"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    .locals 4

    .prologue
    .line 2146
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2147
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 2148
    .local v1, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2149
    monitor-exit v3

    .line 2153
    .end local v1           #volume:Landroid/os/storage/StorageVolume;
    :goto_0
    return-object v1

    .line 2152
    :cond_1
    monitor-exit v3

    .line 2153
    const/4 v1, 0x0

    goto :goto_0

    .line 2152
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getSwapState()Z
    .locals 4

    .prologue
    .line 4176
    const-class v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getSdSwapState"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private getUMSPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3913
    const-string v0, "/storage/sdcard1"

    return-object v0
.end method

.method private getUmsEnabling()Z
    .locals 2

    .prologue
    .line 2386
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2387
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 2388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSystemReady()V
    .locals 18

    .prologue
    .line 762
    const-string v13, "MountService"

    const-string v14, "handleSystemReady"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 765
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v9, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 766
    .local v9, snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 776
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 777
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    .line 778
    .local v1, count:I
    new-array v13, v1, [Ljava/lang/String;

    invoke-interface {v4, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 779
    .local v7, rawPaths:[Ljava/lang/String;
    new-array v6, v1, [Ljava/lang/String;

    .line 780
    .local v6, paths:[Ljava/lang/String;
    new-array v11, v1, [Ljava/lang/String;

    .line 787
    .local v11, states:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 788
    add-int/lit8 v13, v1, -0x1

    sub-int/2addr v13, v2

    aget-object v13, v7, v13

    aput-object v13, v6, v2

    .line 789
    aget-object v13, v6, v2

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v11, v2

    .line 787
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 766
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #paths:[Ljava/lang/String;
    .end local v7           #rawPaths:[Ljava/lang/String;
    .end local v9           #snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 794
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #paths:[Ljava/lang/String;
    .restart local v7       #rawPaths:[Ljava/lang/String;
    .restart local v9       #snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11       #states:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 795
    aget-object v5, v6, v2

    .line 796
    .local v5, path:Ljava/lang/String;
    aget-object v10, v11, v2

    .line 798
    .local v10, state:Ljava/lang/String;
    const-string v13, "unmounted"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 799
    const-string v13, "/storage/emulated/0"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 800
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 801
    const-string v13, "MountService"

    const-string v14, "mSD1BootMounted = true"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v8

    .line 807
    .local v8, rc:I
    if-eqz v8, :cond_2

    .line 808
    const-string v13, "MountService"

    const-string v14, "Boot-time mount failed (%d)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V

    .line 813
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->sendSDSwapIntent()V

    .line 794
    .end local v8           #rc:I
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 802
    :cond_4
    const-string v13, "/storage/sdcard1"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 803
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 804
    const-string v13, "MountService"

    const-string v14, "mSD2BootMounted = true"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 814
    :cond_5
    const-string v13, "shared"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 819
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v14, v15}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    .line 825
    .end local v5           #path:Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 826
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 827
    .local v12, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 828
    const-string v13, "mounted"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto :goto_4

    .line 831
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v12           #volume:Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v13

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_8
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 837
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    if-eqz v13, :cond_9

    .line 838
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 839
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 844
    :cond_9
    new-instance v13, Lcom/android/server/MountService$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v13}, Lcom/android/server/MountService$1;->start()V

    .line 850
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 851
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 852
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 853
    return-void
.end method

.method private handleUserSwitch()V
    .locals 0

    .prologue
    .line 4254
    return-void
.end method

.method private isExternalStorage(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 4055
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4056
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 4057
    .local v0, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4058
    if-nez v0, :cond_0

    .line 4059
    const-string v1, "MountService"

    const-string v2, "isExternalStorage error, invalid path!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    const/4 v1, 0x0

    .line 4062
    :goto_0
    return v1

    .line 4057
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4062
    .restart local v0       #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    goto :goto_0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .locals 5
    .parameter "packageName"
    .parameter "callerUid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2948
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_1

    .line 2963
    :cond_0
    :goto_0
    return v1

    .line 2952
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 2953
    goto :goto_0

    .line 2956
    :cond_2
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 2963
    .local v0, packageUid:I
    if-eq p2, v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isVolumeRegistered(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 1546
    const/4 v1, 0x0

    .line 1547
    .local v1, isVolumeRegistered:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1548
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1549
    const/4 v1, 0x1

    .line 1553
    :cond_0
    return v1

    .line 1547
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyShareAvailabilityChange(Z)V
    .locals 9
    .parameter "avail"

    .prologue
    .line 1876
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1877
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 1878
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 1879
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1881
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    iget-object v6, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1878
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1882
    :catch_0
    move-exception v4

    .line 1883
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1889
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1885
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 1886
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1889
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1891
    iget-boolean v6, p0, Lcom/android/server/MountService;->mSystemReady:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1892
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 1897
    :goto_2
    if-nez p1, :cond_1

    .line 1901
    const/4 v3, 0x0

    .line 1902
    .local v3, needTurnOff:Z
    iget-boolean v6, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-eqz v6, :cond_3

    .line 1903
    const/4 v3, 0x1

    .line 1918
    :goto_3
    if-eqz v3, :cond_1

    .line 1919
    new-instance v6, Lcom/android/server/MountService$8;

    invoke-direct {v6, p0}, Lcom/android/server/MountService$8;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v6}, Lcom/android/server/MountService$8;->start()V

    .line 1929
    .end local v3           #needTurnOff:Z
    :cond_1
    return-void

    .line 1894
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_2

    .line 1905
    .restart local v3       #needTurnOff:Z
    :cond_3
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1906
    :try_start_4
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1907
    .local v5, size:I
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_4

    .line 1908
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "shared"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1909
    const/4 v3, 0x1

    .line 1913
    :cond_4
    monitor-exit v7

    goto :goto_3

    .end local v5           #size:I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 1907
    .restart local v5       #size:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private notifyVolumeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "label"
    .parameter "path"

    .prologue
    .line 1604
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:disk bad removal"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1606
    :cond_0
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:invalid lable or invalid path"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :goto_0
    return-void

    .line 1609
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v15

    .line 1610
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1611
    const-string v2, "MountService"

    const-string v3, "usbotg: mountservice notifyVolumeChange:volumes is null... "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    monitor-exit v15

    goto :goto_0

    .line 1629
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1614
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1615
    .local v14, size:I
    const/4 v13, 0x0

    .line 1616
    .local v13, idx_incd:I
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:before mVolumes size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    new-instance v1, Landroid/os/storage/StorageVolume;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 1618
    .local v1, volume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1619
    const/4 v2, -0x1

    if-eq v13, v2, :cond_3

    .line 1620
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:remove volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1625
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usbotg: mountservice notifyVolumeChange:after mVolumes size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v12}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1626
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1623
    .end local v12           #i:I
    :cond_3
    monitor-exit v15

    goto/16 :goto_0

    .line 1629
    .restart local v12       #i:I
    :cond_4
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private notifyVolumeChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 17
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1558
    const-string v3, "MountService"

    const-string v4, "otg patition state change"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1560
    :cond_0
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange:invalid lable or invalid path"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :goto_0
    return-void

    .line 1564
    :cond_1
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    .line 1565
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange:oldState=newState,don\'t care"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1568
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1569
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 1570
    const-string v3, "MountService"

    const-string v4, "usbotg: mountservice notifyVolumeChange: volumes is null... "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    monitor-exit v16

    goto :goto_0

    .line 1598
    :catchall_0
    move-exception v3

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1573
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1574
    .local v15, size:I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:before mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 1576
    .local v2, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->isVolumeRegistered(Ljava/lang/String;)Z

    move-result v13

    .line 1577
    .local v13, bPathIncluded:Z
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:otg path is registered? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 1579
    if-nez v13, :cond_4

    .line 1580
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:add volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    :cond_4
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1594
    :goto_1
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:after mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_8

    .line 1596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3, v14}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1595
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1586
    .end local v14           #i:I
    :cond_5
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_6

    .line 1587
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange,Volume state is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 1589
    :cond_6
    const/4 v3, 0x5

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_7

    .line 1590
    invoke-direct/range {p0 .. p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 1592
    :cond_7
    monitor-exit v16

    goto/16 :goto_0

    .line 1598
    .restart local v14       #i:I
    :cond_8
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1633
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1634
    return-void
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 7
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"
    .parameter "bValue"

    .prologue
    const/4 v6, 0x7

    .line 1639
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1640
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 1641
    .local v2, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1642
    .local v1, state:Ljava/lang/String;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyVolumeStateChange::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bValue::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    const/4 v0, 0x0

    .line 1648
    .local v0, action:Ljava/lang/String;
    if-ne p3, v6, :cond_0

    if-eq p4, p3, :cond_0

    .line 1649
    const-string v3, "MountService"

    const-string v4, "Sending ACTION_MEDIA_UNSHARED intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1653
    :cond_0
    const/4 v3, -0x1

    if-ne p4, v3, :cond_3

    .line 1713
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1714
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1716
    :cond_2
    :goto_1
    return-void

    .line 1642
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/String;
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1654
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #state:Ljava/lang/String;
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    :cond_3
    if-eqz p4, :cond_1

    .line 1656
    const/4 v3, 0x1

    if-ne p4, v3, :cond_5

    .line 1661
    const-string v3, "bad_removal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "nofs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "unmountable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1665
    const-string v3, "MountService"

    const-string v4, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const-string v3, "unmounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v3, :cond_4

    .line 1668
    const-string v3, "MountService"

    const-string v4, "updateDefaultpath VolumeState.Idle"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1671
    :cond_4
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_0

    .line 1673
    :cond_5
    const/4 v3, 0x2

    if-eq p4, v3, :cond_1

    .line 1674
    const/4 v3, 0x3

    if-ne p4, v3, :cond_6

    .line 1675
    const-string v3, "MountService"

    const-string v4, "updating volume state checking"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const-string v3, "checking"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1677
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto :goto_0

    .line 1678
    :cond_6
    const/4 v3, 0x4

    if-ne p4, v3, :cond_9

    .line 1679
    const-string v3, "MountService"

    const-string v4, "updating volume state mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    if-eqz p5, :cond_8

    .line 1681
    const-string v3, "MountService"

    const-string v4, "the filesystem of the mounted storage is FAT32. update maxFileSize to 4G"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const-wide v3, 0xffffffffL

    invoke-virtual {v2, v3, v4}, Landroid/os/storage/StorageVolume;->setMaxFileSize(J)V

    .line 1687
    :goto_2
    const-string v3, "mounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    iget-boolean v3, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/MountService;->mMountSwap:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/MountService;->mUnmountSwap:Z

    if-nez v3, :cond_7

    .line 1689
    const-string v3, "MountService"

    const-string v4, "updateDefaultpath VolumeState.Mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-direct {p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1692
    :cond_7
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto/16 :goto_0

    .line 1684
    :cond_8
    const-string v3, "MountService"

    const-string v4, "the filesystem of the mounted storage is not FAT32. update maxFileSize to 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/storage/StorageVolume;->setMaxFileSize(J)V

    goto :goto_2

    .line 1693
    :cond_9
    const/4 v3, 0x5

    if-eq p4, v3, :cond_1

    .line 1695
    const/4 v3, 0x6

    if-eq p4, v3, :cond_1

    .line 1696
    if-ne p4, v6, :cond_a

    .line 1697
    const-string v3, "MountService"

    const-string v4, "Updating volume state media mounted"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const-string v3, "unmounted"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1702
    const-string v3, "MountService"

    const-string v4, "Updating media shared"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const-string v3, "shared"

    invoke-direct {p0, v2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1704
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1705
    const-string v3, "MountService"

    const-string v4, "Sending ACTION_MEDIA_SHARED intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1706
    :cond_a
    const/16 v3, 0x8

    if-ne p4, v3, :cond_b

    .line 1707
    const-string v3, "MountService"

    const-string v4, "Live shared mounts not supported yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1710
    :cond_b
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled VolumeState {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readStorageListLocked()V
    .locals 34

    .prologue
    .line 1978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 1984
    .local v25, resources:Landroid/content/res/Resources;
    const v20, #xml@storage_list#t

    .line 1986
    .local v20, id:I
    sget-object v3, Lcom/android/server/MountService$SdType;->TYPE:Ljava/lang/String;

    const-string v12, "4"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v27, "storage_auto"

    .line 1988
    .local v27, storage:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v23

    .line 1989
    .local v23, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v23 .. v23}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    .line 1990
    .local v14, attrs:Landroid/util/AttributeSet;
    const/16 v18, 0x0

    .line 1993
    .local v18, hasPhoneStorage:Z
    :try_start_0
    const-string v3, "StorageList"

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1995
    :cond_0
    :goto_1
    invoke-static/range {v23 .. v23}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1997
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    .line 1998
    .local v17, element:Ljava/lang/String;
    if-nez v17, :cond_3

    .line 2091
    invoke-static/range {v18 .. v18}, Landroid/os/Environment;->setHasPhoneMemory(Z)V

    .line 2094
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v21, 0x1

    .line 2095
    .local v21, index:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2096
    .local v2, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2097
    add-int/lit8 v22, v21, 0x1

    .end local v21           #index:I
    .local v22, index:I
    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v21, v22

    .end local v22           #index:I
    .restart local v21       #index:I
    goto :goto_3

    .line 1986
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v14           #attrs:Landroid/util/AttributeSet;
    .end local v17           #element:Ljava/lang/String;
    .end local v18           #hasPhoneStorage:Z
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #index:I
    .end local v23           #parser:Landroid/content/res/XmlResourceParser;
    .end local v27           #storage:Ljava/lang/String;
    :cond_2
    const-string v27, "storage"

    goto :goto_0

    .line 2000
    .restart local v14       #attrs:Landroid/util/AttributeSet;
    .restart local v17       #element:Ljava/lang/String;
    .restart local v18       #hasPhoneStorage:Z
    .restart local v23       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v27       #storage:Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2001
    sget-object v3, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 2004
    .local v13, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2006
    .local v24, path:Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v12, -0x1

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 2008
    .local v4, descriptionId:I
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 2010
    .local v15, description:Ljava/lang/CharSequence;
    const/4 v3, 0x2

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 2012
    .local v5, primary:Z
    const/4 v3, 0x3

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 2014
    .local v6, removable:Z
    if-nez v6, :cond_4

    const/16 v18, 0x1

    .line 2015
    :cond_4
    const/4 v3, 0x4

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 2017
    .local v7, emulated:Z
    const/4 v3, 0x5

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 2019
    .local v8, mtpReserve:I
    const/4 v3, 0x6

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 2022
    .local v9, allowMassStorage:Z
    const/4 v3, 0x7

    const/4 v12, 0x0

    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x400

    mul-long v30, v30, v32

    const-wide/16 v32, 0x400

    mul-long v10, v30, v32

    .line 2027
    .local v10, maxFileSize:J
    if-eqz v5, :cond_5

    .line 2028
    const/16 v24, 0x0

    .line 2030
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2031
    const/4 v5, 0x1

    .line 2032
    const/4 v6, 0x0

    .line 2033
    const/4 v7, 0x1

    .line 2034
    const/high16 v8, 0xa0

    .line 2037
    :cond_5
    const-string v3, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "got storage path: "

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v30, " description: "

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v30, " primary: "

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v30, " removable: "

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v30, " emulated: "

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v30, " mtpReserve: "

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v30, " allowMassStorage: "

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v30, " maxFileSize: "

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    if-eqz v7, :cond_9

    .line 2046
    new-instance v2, Landroid/os/storage/StorageVolume;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .end local v5           #primary:Z
    .end local v6           #removable:Z
    .end local v7           #emulated:Z
    .end local v9           #allowMassStorage:Z
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    .line 2049
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v29

    .line 2050
    .local v29, userManager:Lcom/android/server/pm/UserManagerService;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    .line 2051
    .local v28, user:Landroid/content/pm/UserInfo;
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/MountService;->createEmulatedVolumeForUserLocked(Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 2086
    .end local v4           #descriptionId:I
    .end local v8           #mtpReserve:I
    .end local v10           #maxFileSize:J
    .end local v13           #a:Landroid/content/res/TypedArray;
    .end local v15           #description:Ljava/lang/CharSequence;
    .end local v17           #element:Ljava/lang/String;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v24           #path:Ljava/lang/String;
    .end local v28           #user:Landroid/content/pm/UserInfo;
    .end local v29           #userManager:Lcom/android/server/pm/UserManagerService;
    :catch_0
    move-exception v16

    .line 2087
    .local v16, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2091
    .end local v16           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    invoke-static/range {v18 .. v18}, Landroid/os/Environment;->setHasPhoneMemory(Z)V

    .line 2094
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService;->isExternalStorageEmulated()Z

    move-result v12

    if-eqz v12, :cond_11

    const/16 v21, 0x1

    .line 2095
    .restart local v21       #index:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 2096
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v12

    if-nez v12, :cond_6

    .line 2097
    add-int/lit8 v22, v21, 0x1

    .end local v21           #index:I
    .restart local v22       #index:I
    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    move/from16 v21, v22

    .end local v22           #index:I
    .restart local v21       #index:I
    goto :goto_6

    .line 2054
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v21           #index:I
    .restart local v4       #descriptionId:I
    .restart local v8       #mtpReserve:I
    .restart local v10       #maxFileSize:J
    .restart local v13       #a:Landroid/content/res/TypedArray;
    .restart local v15       #description:Ljava/lang/CharSequence;
    .restart local v17       #element:Ljava/lang/String;
    .restart local v24       #path:Ljava/lang/String;
    .restart local v29       #userManager:Lcom/android/server/pm/UserManagerService;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_b

    .line 2055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_8
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/storage/StorageVolume;

    .line 2056
    .local v26, shareVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v26 .. v26}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v12, "/storage/emulated/0"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2057
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    .line 2088
    .end local v4           #descriptionId:I
    .end local v8           #mtpReserve:I
    .end local v10           #maxFileSize:J
    .end local v13           #a:Landroid/content/res/TypedArray;
    .end local v15           #description:Ljava/lang/CharSequence;
    .end local v17           #element:Ljava/lang/String;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v24           #path:Ljava/lang/String;
    .end local v26           #shareVolume:Landroid/os/storage/StorageVolume;
    .end local v29           #userManager:Lcom/android/server/pm/UserManagerService;
    :catch_1
    move-exception v16

    .line 2089
    .local v16, e:Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2063
    .end local v16           #e:Ljava/io/IOException;
    .restart local v4       #descriptionId:I
    .restart local v5       #primary:Z
    .restart local v6       #removable:Z
    .restart local v7       #emulated:Z
    .restart local v8       #mtpReserve:I
    .restart local v9       #allowMassStorage:Z
    .restart local v10       #maxFileSize:J
    .restart local v13       #a:Landroid/content/res/TypedArray;
    .restart local v15       #description:Ljava/lang/CharSequence;
    .restart local v17       #element:Ljava/lang/String;
    .restart local v24       #path:Ljava/lang/String;
    :cond_9
    if-eqz v24, :cond_a

    if-nez v15, :cond_c

    .line 2064
    :cond_a
    :try_start_5
    const-string v3, "MountService"

    const-string v12, "Missing storage path or description in readStorageList"

    invoke-static {v3, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    .end local v5           #primary:Z
    .end local v6           #removable:Z
    .end local v7           #emulated:Z
    .end local v9           #allowMassStorage:Z
    :cond_b
    :goto_8
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 2066
    .restart local v5       #primary:Z
    .restart local v6       #removable:Z
    .restart local v7       #emulated:Z
    .restart local v9       #allowMassStorage:Z
    :cond_c
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 2069
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MountService;->addVolumeLocked(Landroid/os/storage/StorageVolume;)V

    .line 2071
    if-eqz v9, :cond_d

    .line 2072
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/MountService;->mIsAnyAllowUMS:Z

    .line 2075
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_e

    const-string v3, "/storage/emulated/0"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2076
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumePrimary:Landroid/os/storage/StorageVolume;

    goto :goto_8

    .line 2077
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_b

    const-string v3, "/storage/sdcard1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2078
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mVolumeSecondary:Landroid/os/storage/StorageVolume;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    .line 2100
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v4           #descriptionId:I
    .end local v5           #primary:Z
    .end local v6           #removable:Z
    .end local v7           #emulated:Z
    .end local v8           #mtpReserve:I
    .end local v9           #allowMassStorage:Z
    .end local v10           #maxFileSize:J
    .end local v13           #a:Landroid/content/res/TypedArray;
    .end local v15           #description:Ljava/lang/CharSequence;
    .end local v17           #element:Ljava/lang/String;
    .end local v24           #path:Ljava/lang/String;
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v21       #index:I
    :cond_f
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2091
    throw v3

    .line 2100
    .restart local v17       #element:Ljava/lang/String;
    :cond_10
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2102
    return-void

    .line 2094
    .end local v17           #element:Ljava/lang/String;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #index:I
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_5

    .restart local v17       #element:Ljava/lang/String;
    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_2
.end method

.method private registerQbReceiver()V
    .locals 5

    .prologue
    .line 4260
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4261
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4262
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MountService;->mQuickbootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4263
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .locals 4
    .parameter "obbState"

    .prologue
    .line 3246
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3247
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3248
    .local v1, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_1

    .line 3249
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3250
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 3252
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3253
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3257
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3258
    return-void
.end method

.method private removeVolumeLocked(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 2139
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVolumeLocked() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2141
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    return-void
.end method

.method private sendSDSwapIntent()V
    .locals 5

    .prologue
    .line 4034
    invoke-direct {p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v1

    .line 4035
    .local v1, sdSwapStatus:Z
    iget-boolean v2, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    if-eq v1, v2, :cond_1

    .line 4036
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSwapStateForSDSwapIntent:Z

    .line 4043
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.SD_SWAP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4044
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "SD_EXIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4045
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSDSwapIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4047
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/MountService;->mFirstTimeSDSwapIntent:Z

    .line 4048
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 4039
    :cond_1
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSDSwapIntent: already sent INTENT_SD_SWAP, Just skip this. status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .locals 5
    .parameter "action"
    .parameter "volume"
    .parameter "user"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1932
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1934
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/MountService;->mUMSCount:I

    if-gtz v1, :cond_1

    :cond_0
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/MountService;->mMountAll:Z

    if-ne v1, v3, :cond_1

    .line 1940
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1941
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/emulated/0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1942
    iput-boolean v4, p0, Lcom/android/server/MountService;->mSD1BootMounted:Z

    .line 1943
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    if-nez v1, :cond_3

    .line 1944
    const-string v1, "first_boot_mounted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1945
    const-string v1, "MountService"

    const-string v2, "sendStorageIntent mSD1BootMounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_3
    :goto_0
    const-string v1, "storage_volume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1956
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1958
    return-void

    .line 1947
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/sdcard1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1948
    iput-boolean v4, p0, Lcom/android/server/MountService;->mSD2BootMounted:Z

    .line 1949
    iget-boolean v1, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    if-nez v1, :cond_3

    .line 1950
    const-string v1, "first_boot_mounted"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1951
    const-string v1, "MountService"

    const-string v2, "sendStorageIntent mSD2BootMounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendUmsIntent(Z)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1961
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1964
    return-void

    .line 1961
    :cond_0
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_0
.end method

.method private setDefaultPath(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 4171
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    const-class v0, Lcom/mediatek/common/storage/IStorageManagerEx;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setDefaultPath"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4173
    return-void
.end method

.method private setUmsEnabling(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2392
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2393
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 2394
    monitor-exit v1

    .line 2395
    return-void

    .line 2394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateDefaultPathForSwap(ZLjava/lang/String;)V
    .locals 0
    .parameter "mount"
    .parameter "path"

    .prologue
    .line 4134
    return-void
.end method

.method private updateDefaultpath()V
    .locals 8

    .prologue
    .line 3774
    invoke-direct {p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 3775
    .local v0, defaultPath:Ljava/lang/String;
    move-object v4, v0

    .line 3776
    .local v4, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3777
    .local v3, needChange:Z
    const-string v5, "mounted"

    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3778
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v6

    .line 3779
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3780
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3781
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 3782
    const-string v5, "mounted"

    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3783
    const/4 v3, 0x1

    .line 3787
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3788
    if-eqz v3, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3789
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

    .line 3790
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->setDefaultPath(Ljava/lang/String;)V

    .line 3793
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_1
    return-void

    .line 3780
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3787
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

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    .locals 1
    .parameter "volume"
    .parameter "state"

    .prologue
    .line 1098
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    return-void
.end method

.method private updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "volume"
    .parameter "state"
    .parameter "label"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1102
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1104
    .local v5, path:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1105
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v7, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1106
    .local v4, oldState:Ljava/lang/String;
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1109
    const-string v7, "MountService"

    const-string v8, "Duplicate state transition (%s -> %s) for %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p2, v9, v10

    aput-object p2, v9, v11

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :goto_0
    return-void

    .line 1106
    .end local v4           #oldState:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1114
    .restart local v4       #oldState:Ljava/lang/String;
    :cond_0
    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "volume state changed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    if-eqz v5, :cond_1

    if-eqz p2, :cond_1

    .line 1116
    const-string v7, "/storage/sdcard1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "removed"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1117
    invoke-static {v10}, Landroid/os/Environment;->setSdcardPrimary(Z)V

    .line 1139
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getAsecVolumeDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, asecPath:Ljava/lang/String;
    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "asecPath is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1144
    invoke-static {}, Landroid/os/Environment;->isAsecVolumeAvailable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1145
    const-string v7, "unmounted"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1146
    iget-object v7, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7, v10, v10}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1153
    iget-object v7, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v8, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v5}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1160
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1161
    :try_start_2
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_4

    .line 1162
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1164
    .local v1, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_3
    iget-object v7, v1, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v7, v5, v4, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1161
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1155
    .end local v1           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v3           #i:I
    :cond_3
    const-string v7, "mounted"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1156
    iget-object v7, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7, v11, v10}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_1

    .line 1165
    .restart local v1       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v3       #i:I
    :catch_0
    move-exception v6

    .line 1166
    .local v6, rex:Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "MountService"

    const-string v9, "Listener dead"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1172
    .end local v1           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v3           #i:I
    .end local v6           #rex:Landroid/os/RemoteException;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 1168
    .restart local v1       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v3       #i:I
    :catch_1
    move-exception v2

    .line 1169
    .local v2, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v7, "MountService"

    const-string v9, "Listener failed"

    invoke-static {v7, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1172
    .end local v1           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_4
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .parameter "perm"

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
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

    .line 1970
    :cond_0
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4
    .parameter "latch"

    .prologue
    .line 747
    :goto_0
    const-wide/16 v1, 0x1388

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    return-void

    .line 750
    :cond_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still waiting for MountService ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForReady()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 742
    return-void
.end method

.method private warnOnNotMounted()V
    .locals 4

    .prologue
    .line 2663
    invoke-direct {p0}, Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 2664
    .local v1, primary:Landroid/os/storage/StorageVolume;
    if-eqz v1, :cond_0

    .line 2665
    const/4 v0, 0x0

    .line 2667
    .local v0, mounted:Z
    :try_start_0
    const-string v2, "mounted"

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2671
    :goto_0
    if-nez v0, :cond_0

    .line 2672
    const-string v2, "MountService"

    const-string v3, "getSecureContainerList() called when storage not mounted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    .end local v0           #mounted:Z
    :cond_0
    return-void

    .line 2668
    .restart local v0       #mounted:Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .locals 7
    .parameter "password"

    .prologue
    .line 3132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3133
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3136
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3139
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3142
    const-string v2, "MountService"

    const-string v3, "changing encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3148
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3151
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 3149
    :catch_0
    move-exception v0

    .line 3151
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 7
    .parameter "id"
    .parameter "sizeMb"
    .parameter "fstype"
    .parameter "key"
    .parameter "ownerUid"
    .parameter "external"

    .prologue
    .line 2700
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2701
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2702
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2704
    const/4 v1, 0x0

    .line 2706
    .local v1, rc:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    aput-object p4, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_1

    const-string v2, "1"

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2712
    :goto_1
    if-nez v1, :cond_0

    .line 2713
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2714
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2715
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2717
    :cond_0
    return v1

    .line 2706
    :cond_1
    :try_start_2
    const-string v2, "0"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2708
    :catch_0
    move-exception v0

    .line 2709
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1

    .line 2715
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .locals 8
    .parameter "password"

    .prologue
    .line 3068
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3069
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3072
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3078
    const-string v3, "MountService"

    const-string v4, "decrypting storage..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "checkpw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3085
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3086
    .local v0, code:I
    if-nez v0, :cond_1

    .line 3089
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$10;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$10;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3103
    .end local v0           #code:I
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_1
    :goto_0
    return v0

    .line 3101
    :catch_0
    move-exception v1

    .line 3103
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
    .line 2755
    const-string v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2756
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2757
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2765
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2767
    const/4 v3, 0x0

    .line 2769
    .local v3, rc:I
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "destroy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2770
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_0

    .line 2771
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2773
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2783
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v3, :cond_2

    .line 2784
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2785
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2786
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2788
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2791
    :cond_2
    return v3

    .line 2774
    :catch_0
    move-exception v2

    .line 2775
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2776
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 2777
    const/4 v3, -0x7

    goto :goto_0

    .line 2779
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 2788
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3717
    iget-object v10, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 3718
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

    .line 3763
    :goto_0
    return-void

    .line 3724
    :cond_0
    iget-object v11, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v11

    .line 3725
    :try_start_0
    const-string v10, "  mObbMounts:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3727
    iget-object v10, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3728
    .local v1, binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3729
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3730
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    const-string v10, "    Key="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3731
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 3732
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

    .line 3733
    .local v7, obbState:Lcom/android/server/MountService$ObbState;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3745
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

    .line 3737
    .restart local v1       #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_2
    :try_start_1
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3738
    const-string v10, "  mObbPathToStateMap:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3739
    iget-object v10, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3740
    .local v6, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3741
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3742
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3743
    const-string v10, " -> "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/MountService$ObbState;

    invoke-virtual {v10}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3745
    .end local v3           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3747
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3749
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 3750
    :try_start_2
    const-string v10, "  mVolumes:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3752
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3753
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_4

    .line 3754
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageVolume;

    .line 3755
    .local v9, v:Landroid/os/storage/StorageVolume;
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3756
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3753
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3758
    .end local v9           #v:Landroid/os/storage/StorageVolume;
    :cond_4
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3760
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3761
    const-string v10, "  mConnection:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3762
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3758
    .end local v0           #N:I
    .end local v4           #i:I
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 7
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 3108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3112
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3118
    const-string v2, "MountService"

    const-string v3, "encrypting storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3128
    :goto_0
    return v1

    .line 3123
    :catch_0
    move-exception v0

    .line 3125
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 7
    .parameter "id"

    .prologue
    .line 2721
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2722
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2724
    const/4 v1, 0x0

    .line 2726
    .local v1, rc:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    :goto_0
    return v1

    .line 2731
    :catch_0
    move-exception v0

    .line 2732
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    .prologue
    .line 2944
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2945
    return-void
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 7
    .parameter "id"
    .parameter "gid"
    .parameter "filename"

    .prologue
    .line 2738
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2739
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2741
    const/4 v1, 0x0

    .line 2743
    .local v1, rc:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2751
    :goto_0
    return v1

    .line 2748
    :catch_0
    move-exception v0

    .line 2749
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 2630
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2631
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2633
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEncryptionState()I
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 3046
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3049
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3053
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3054
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 3062
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 3055
    :catch_0
    move-exception v0

    .line 3057
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3059
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 3061
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "rawPath"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2967
    const-string v5, "rawPath cannot be null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2969
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2970
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2973
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v5

    .line 2974
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 2975
    .local v3, state:Lcom/android/server/MountService$ObbState;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2976
    if-nez v3, :cond_1

    .line 2977
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find OBB mounted at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    :cond_0
    :goto_0
    return-object v4

    .line 2975
    .end local v3           #state:Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2983
    .restart local v3       #state:Lcom/android/server/MountService$ObbState;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "obb"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "path"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2984
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2985
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_0

    .line 2986
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .line 2987
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2988
    .local v0, code:I
    const/16 v5, 0x196

    if-eq v0, v5, :cond_0

    .line 2991
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2923
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2924
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2925
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2929
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fspath"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2930
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2931
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2936
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 2932
    :catch_0
    move-exception v1

    .line 2933
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2934
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 2935
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    const/4 v3, 0x0

    goto :goto_0

    .line 2938
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2678
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2679
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2680
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2683
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "asec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2686
    :goto_0
    return-object v1

    .line 2685
    :catch_0
    move-exception v0

    .line 2686
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-array v1, v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2902
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2903
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2904
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2908
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2909
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2910
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2915
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return-object v3

    .line 2911
    :catch_0
    move-exception v1

    .line 2912
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2913
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_0

    .line 2914
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    const/4 v3, 0x0

    goto :goto_0

    .line 2917
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 12
    .parameter "path"

    .prologue
    const/4 v11, 0x0

    .line 2637
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2638
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2640
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    const/16 v7, 0x70

    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .line 2645
    .local v4, r:[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 2646
    .local v0, data:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 2647
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2649
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

    .line 2646
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2650
    :catch_0
    move-exception v3

    .line 2651
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

    .line 2652
    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2658
    .end local v0           #data:[I
    .end local v2           #i:I
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #r:[Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 2656
    :catch_1
    move-exception v1

    .line 2657
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2658
    new-array v0, v11, [I

    goto :goto_1
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3191
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3192
    .local v1, callingUserId:I
    iget-object v9, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.ACCESS_ALL_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 3196
    .local v0, accessAll:Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3197
    :try_start_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3198
    .local v2, filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 3199
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v4

    .line 3200
    .local v4, owner:Landroid/os/UserHandle;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne v10, v1, :cond_4

    :cond_1
    move v5, v7

    .line 3201
    .local v5, ownerMatch:Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v5, :cond_0

    .line 3202
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3206
    .end local v2           #filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #owner:Landroid/os/UserHandle;
    .end local v5           #ownerMatch:Z
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .end local v0           #accessAll:Z
    :cond_3
    move v0, v8

    .line 3192
    goto :goto_0

    .restart local v0       #accessAll:Z
    .restart local v2       #filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #owner:Landroid/os/UserHandle;
    .restart local v6       #volume:Landroid/os/storage/StorageVolume;
    :cond_4
    move v5, v8

    .line 3200
    goto :goto_2

    .line 3205
    .end local v4           #owner:Landroid/os/UserHandle;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/storage/StorageVolume;

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v7
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "mountPoint"

    .prologue
    .line 2538
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2539
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2540
    .local v0, state:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2541
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

    .line 2542
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2543
    const-string v0, "removed"

    .line 2551
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 2546
    :cond_1
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): ERROR!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    const-string v0, "error"

    goto :goto_0

    .line 2552
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
    .line 2557
    iget-object v0, p0, Lcom/android/server/MountService;->mEmulatedTemplate:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "rawPath"

    .prologue
    .line 2998
    const-string v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2999
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 3000
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3001
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 2867
    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2868
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2869
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2871
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2872
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2873
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
    .line 2398
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2400
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2401
    const/4 v0, 0x1

    .line 2404
    :goto_0
    return v0

    .line 2403
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2404
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v1

    goto :goto_0

    .line 2405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 6

    .prologue
    .line 2509
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2515
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2516
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2517
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 2518
    .local v2, paths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2519
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2521
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2523
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 2524
    aget-object v3, v2, v1

    const-string v4, "ums"

    invoke-direct {p0, v3, v4}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2525
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbMassStorageEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const/4 v3, 0x1

    .line 2531
    :goto_2
    return v3

    .line 2521
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #paths:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2523
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #paths:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2530
    :cond_2
    const-string v3, "MountService"

    const-string v4, "isUsbMassStorageEnabled: false"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 3767
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 3768
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 3770
    :cond_0
    return-void
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .locals 8
    .parameter "rawPath"
    .parameter "canonicalPath"
    .parameter "key"
    .parameter "token"
    .parameter "nonce"

    .prologue
    .line 3007
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    const-string v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3009
    const-string v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3011
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3012
    .local v4, callingUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 3013
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    .line 3014
    .local v7, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3018
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2795
    const-string v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2796
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2797
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2799
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2800
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2801
    const/4 v2, -0x6

    monitor-exit v4

    .line 2820
    :cond_0
    :goto_0
    return v2

    .line 2803
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2805
    const/4 v2, 0x0

    .line 2807
    .local v2, rc:I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2815
    :cond_2
    :goto_1
    if-nez v2, :cond_0

    .line 2816
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2817
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2818
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2803
    .end local v2           #rc:I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2808
    .restart local v2       #rc:I
    :catch_0
    move-exception v1

    .line 2809
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2810
    .local v0, code:I
    const/16 v3, 0x195

    if-eq v0, v3, :cond_2

    .line 2811
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 2561
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2563
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->isExternalStorage(Ljava/lang/String;)Z

    move-result v0

    .line 2575
    .local v0, isExternal:Z
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2576
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v1

    .line 2593
    .local v1, ret:I
    return v1
.end method

.method public mountVolumeNotSwap(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 4121
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 4123
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4124
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 1183
    new-instance v0, Lcom/android/server/MountService$6;

    const-string v1, "MountService#onDaemonConnected"

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$6;->start()V

    .line 1311
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 26
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 1318
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1319
    .local v11, builder:Ljava/lang/StringBuilder;
    const-string v3, "onEvent::"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " raw= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    if-eqz p3, :cond_0

    .line 1322
    const-string v3, " cooked = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    move-object/from16 v10, p3

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v24, v10, v16

    .line 1324
    .local v24, str:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1327
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v19           #len$:I
    .end local v24           #str:Ljava/lang/String;
    :cond_0
    const-string v3, "MountService"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    const/16 v3, 0x25d

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 1351
    const/4 v8, 0x0

    .line 1352
    .local v8, bValue:Z
    const/16 v3, 0xc

    aget-object v3, p3, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1353
    const/4 v8, 0x1

    .line 1355
    :cond_1
    const/4 v3, 0x2

    aget-object v4, p3, v3

    const/4 v3, 0x3

    aget-object v5, p3, v3

    const/4 v3, 0x7

    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v3, 0xa

    aget-object v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1542
    .end local v8           #bValue:Z
    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 1359
    :cond_3
    const/16 v3, 0x276

    move/from16 v0, p1

    if-eq v0, v3, :cond_4

    const/16 v3, 0x277

    move/from16 v0, p1

    if-eq v0, v3, :cond_4

    const/16 v3, 0x278

    move/from16 v0, p1

    if-ne v0, v3, :cond_a

    .line 1365
    :cond_4
    const/4 v9, 0x0

    .line 1366
    .local v9, action:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1367
    .local v18, label:Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1368
    .local v22, path:Ljava/lang/String;
    const/16 v20, -0x1

    .line 1369
    .local v20, major:I
    const/16 v21, -0x1

    .line 1372
    .local v21, minor:I
    const/4 v3, 0x6

    :try_start_0
    aget-object v3, p3, v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1373
    .local v13, devComp:Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1374
    .local v14, devTok:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1375
    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 1382
    .end local v13           #devComp:Ljava/lang/String;
    .end local v14           #devTok:[Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1383
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/storage/StorageVolume;

    .line 1384
    .local v25, volume:Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1385
    .local v23, state:Ljava/lang/String;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1387
    const/16 v3, 0x276

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 1405
    new-instance v3, Lcom/android/server/MountService$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$7;->start()V

    .line 1437
    const-string v9, "android.intent.action.SD_INSERTED"

    .line 1502
    :cond_5
    :goto_4
    if-eqz v9, :cond_2

    .line 1503
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v9, v1, v3}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 1376
    .end local v23           #state:Ljava/lang/String;
    .end local v25           #volume:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v15

    .line 1377
    .local v15, ex:Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v4, "Failed to parse major/minor"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1385
    .end local v15           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1438
    .restart local v23       #state:Ljava/lang/String;
    .restart local v25       #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    const/16 v3, 0x277

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 1450
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bad_removal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1451
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1453
    :cond_7
    const-string v3, "MountService"

    const-string v4, "Sending eject event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1456
    const-string v3, "MountService"

    const-string v4, "Sending unmounted event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const-string v3, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1460
    const-string v3, "MountService"

    const-string v4, "Sending media removed"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v3, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1462
    const-string v9, "android.intent.action.MEDIA_REMOVED"

    goto :goto_4

    .line 1463
    :cond_8
    const/16 v3, 0x278

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    .line 1473
    const-string v3, "MountService"

    const-string v4, "Sending eject event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1483
    const-string v3, "MountService"

    const-string v4, "Sending unmounted event first"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const-string v3, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1488
    const-string v3, "MountService"

    const-string v4, "Sending media bad removal"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const-string v3, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1490
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 1492
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getDefaultPath()Ljava/lang/String;

    move-result-object v12

    .line 1493
    .local v12, defaultPath:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1495
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->enableDefaultToast()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const v5, 0x2050079

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 1499
    .end local v12           #defaultPath:Ljava/lang/String;
    :cond_9
    const-string v3, "MountService"

    const-string v4, "Unknown code {%d}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1505
    .end local v9           #action:Ljava/lang/String;
    .end local v18           #label:Ljava/lang/String;
    .end local v20           #major:I
    .end local v21           #minor:I
    .end local v22           #path:Ljava/lang/String;
    .end local v23           #state:Ljava/lang/String;
    .end local v25           #volume:Landroid/os/storage/StorageVolume;
    :cond_a
    const/16 v3, 0x279

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 1507
    const/4 v9, 0x0

    .line 1508
    .restart local v9       #action:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1509
    .restart local v18       #label:Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1512
    .restart local v22       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1513
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/storage/StorageVolume;

    .line 1514
    .restart local v25       #volume:Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1515
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeEjectBeforeSwap: send eject to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    const-string v3, "android.intent.action.MEDIA_EJECT"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 1514
    .end local v25           #volume:Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 1519
    .end local v9           #action:Ljava/lang/String;
    .end local v18           #label:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/String;
    :cond_b
    const/16 v3, 0x27a

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    .line 1520
    const/4 v9, 0x0

    .line 1521
    .restart local v9       #action:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v18, p3, v3

    .line 1522
    .restart local v18       #label:Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v22, p3, v3

    .line 1525
    .restart local v22       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1526
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/storage/StorageVolume;

    .line 1527
    .restart local v25       #volume:Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1528
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoldResponseCode.VolumeUnmountable: send MEDIA_UNMOUNTABLE to volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    const-string v3, "unmountable"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1530
    const-string v3, "android.intent.action.MEDIA_UNMOUNTABLE"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 1531
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->updateDefaultpath()V

    .line 1533
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.mediatek.SD_SWAP"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1534
    .local v17, intent:Landroid/content/Intent;
    const-string v3, "SD_EXIST"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->getSwapState()Z

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1535
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSDSwapIntent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1527
    .end local v17           #intent:Landroid/content/Intent;
    .end local v25           #volume:Landroid/os/storage/StorageVolume;
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .line 1539
    .end local v9           #action:Ljava/lang/String;
    .end local v18           #label:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/String;
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 2255
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2256
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2258
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2259
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2263
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 2264
    return-void

    .line 2260
    :catch_0
    move-exception v1

    .line 2261
    .local v1, rex:Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2263
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
    .locals 7
    .parameter "oldId"
    .parameter "newId"

    .prologue
    .line 2877
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2878
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2879
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2881
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2886
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2887
    :cond_0
    const/4 v1, -0x6

    monitor-exit v3

    .line 2898
    :goto_0
    return v1

    .line 2889
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2891
    const/4 v1, 0x0

    .line 2893
    .local v1, rc:I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2894
    :catch_0
    move-exception v0

    .line 2895
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0

    .line 2889
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v1           #rc:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 18
    .parameter "enable"

    .prologue
    .line 2409
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2410
    const-string v14, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2424
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 2425
    .local v5, mState:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v14, "mounted"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2429
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v15

    .line 2430
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2431
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 2432
    .local v2, count:I
    new-array v14, v2, [Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 2433
    .local v8, paths:[Ljava/lang/String;
    new-array v11, v2, [Ljava/lang/String;

    .line 2434
    .local v11, states:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    aget-object v16, v8, v3

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v11, v3

    .line 2434
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2437
    :cond_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2439
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 2440
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_9

    .line 2441
    aget-object v7, v8, v3

    .line 2442
    .local v7, path:Ljava/lang/String;
    aget-object v10, v11, v3

    .line 2443
    .local v10, state:Ljava/lang/String;
    const-string v6, "ums"

    .line 2445
    .local v6, method:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2446
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 2447
    .local v13, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2448
    const-string v14, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Emulated volume: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", no need share!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2440
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2437
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6           #method:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #paths:[Ljava/lang/String;
    .end local v10           #state:Ljava/lang/String;
    .end local v11           #states:[Ljava/lang/String;
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 2452
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #method:Ljava/lang/String;
    .restart local v7       #path:Ljava/lang/String;
    .restart local v8       #paths:[Ljava/lang/String;
    .restart local v10       #state:Ljava/lang/String;
    .restart local v11       #states:[Ljava/lang/String;
    .restart local v13       #volume:Landroid/os/storage/StorageVolume;
    :cond_3
    :try_start_3
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    const-string v16, "/mnt/udisk/folder1"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2453
    const-string v14, "MountService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ICUSB: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", no need share!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    monitor-exit v15

    goto :goto_2

    .line 2456
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    .restart local v13       #volume:Landroid/os/storage/StorageVolume;
    :cond_4
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2458
    if-eqz p1, :cond_6

    const-string v14, "mounted"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2459
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 2460
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    .line 2472
    invoke-direct/range {p0 .. p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 2473
    new-instance v12, Lcom/android/server/MountService$UmsEnableCallBack;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7, v6, v14}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2474
    .local v12, umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2476
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 2483
    .end local v12           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_5
    :goto_3
    if-nez p1, :cond_2

    const-string v14, "removed"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "bad_removal"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 2485
    const/16 v9, 0xf

    .line 2486
    .local v9, retry:I
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/MountService;->mUMSCount:I

    if-lez v14, :cond_7

    if-lez v9, :cond_7

    .line 2487
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 2488
    add-int/lit8 v9, v9, -0x1

    .line 2489
    const-string v14, "MountService"

    const-string v15, "Turn off UMS, wait for turn on UMS done!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2477
    .end local v9           #retry:I
    :cond_6
    if-eqz p1, :cond_5

    const-string v14, "unmounted"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2478
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 2491
    .restart local v9       #retry:I
    :cond_7
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    .line 2492
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v6, v1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2493
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->mountVolume(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_8

    .line 2494
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to remount "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " after disabling share method "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z

    goto/16 :goto_2

    .line 2505
    .end local v6           #method:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    .end local v9           #retry:I
    .end local v10           #state:Ljava/lang/String;
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/MountService;->mMountAll:Z

    .line 2506
    return-void
.end method

.method public shareCDRom(Z)V
    .locals 4
    .parameter "share"

    .prologue
    .line 4071
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

    .line 4072
    move v0, p1

    .line 4073
    .local v0, doShare:Z
    new-instance v1, Lcom/android/server/MountService$11;

    invoke-direct {v1, p0, v0}, Lcom/android/server/MountService$11;-><init>(Lcom/android/server/MountService;Z)V

    invoke-virtual {v1}, Lcom/android/server/MountService$11;->start()V

    .line 4089
    return-void
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 14
    .parameter "observer"

    .prologue
    .line 2279
    const-string v11, "android.permission.SHUTDOWN"

    invoke-direct {p0, v11}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2281
    const-string v11, "MountService"

    const-string v12, "Shutting down"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 2283
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mSetDefaultEnable:Z

    .line 2284
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mBootCompleted:Z

    .line 2286
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2287
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-direct {v7, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2288
    .local v7, snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2291
    const-string v11, "/storage/emulated/0"

    invoke-virtual {p0, v11}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2292
    .local v3, mState:Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2293
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    .line 2294
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    .line 2299
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2300
    .local v4, path:Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2302
    .local v8, state:Ljava/lang/String;
    const-string v11, "shared"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2312
    const-string v11, "ums"

    const/4 v12, 0x0

    invoke-direct {p0, v4, v11, v12}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2334
    :cond_2
    :goto_2
    const-string v11, "mounted"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2342
    iget-object v12, p0, Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2343
    :try_start_1
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageVolume;

    .line 2344
    .local v10, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2345
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2346
    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2347
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/MountService;->mUnmountPrimary:Z

    goto :goto_1

    .line 2288
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mState:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #state:Ljava/lang/String;
    .end local v10           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 2295
    .restart local v3       #mState:Ljava/lang/String;
    .restart local v7       #snapshot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v11, "shared"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2296
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/MountService;->mShutdownSD:Z

    goto :goto_0

    .line 2313
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v8       #state:Ljava/lang/String;
    :cond_4
    const-string v11, "checking"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2319
    const/16 v5, 0x1e

    .line 2320
    .local v5, retries:I
    :goto_3
    const-string v11, "checking"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    add-int/lit8 v6, v5, -0x1

    .end local v5           #retries:I
    .local v6, retries:I
    if-ltz v5, :cond_9

    .line 2322
    const-wide/16 v11, 0x3e8

    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2327
    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v5, v6

    .end local v6           #retries:I
    .restart local v5       #retries:I
    goto :goto_3

    .line 2323
    .end local v5           #retries:I
    .restart local v6       #retries:I
    :catch_0
    move-exception v2

    .line 2324
    .local v2, iex:Ljava/lang/InterruptedException;
    const-string v11, "MountService"

    const-string v12, "Interrupted while waiting for media"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 2329
    .end local v2           #iex:Ljava/lang/InterruptedException;
    .end local v6           #retries:I
    .restart local v5       #retries:I
    :cond_5
    :goto_4
    if-nez v5, :cond_2

    .line 2330
    const-string v11, "MountService"

    const-string v12, "Timed out waiting for media to check"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2344
    .end local v5           #retries:I
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 2352
    .restart local v10       #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    iget v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    .line 2354
    new-instance v9, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v9, p0, v4, p1}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 2355
    .local v9, ucb:Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v11, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 2358
    .end local v4           #path:Ljava/lang/String;
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    .end local v10           #volume:Landroid/os/storage/StorageVolume;
    :cond_7
    iget v11, p0, Lcom/android/server/MountService;->mShutdownCount:I

    if-gtz v11, :cond_8

    if-eqz p1, :cond_8

    .line 2365
    const/4 v11, 0x0

    :try_start_5
    invoke-interface {p1, v11}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2383
    :cond_8
    :goto_5
    return-void

    .line 2366
    :catch_1
    move-exception v0

    .line 2367
    .local v0, e:Landroid/os/RemoteException;
    const-string v11, "MountService"

    const-string v12, "RemoteException when shutting down"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v4       #path:Ljava/lang/String;
    .restart local v6       #retries:I
    .restart local v8       #state:Ljava/lang/String;
    :cond_9
    move v5, v6

    .end local v6           #retries:I
    .restart local v5       #retries:I
    goto :goto_4
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 2246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MountService;->mSystemReady:Z

    .line 2247
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2248
    return-void
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 9
    .parameter "rawPath"
    .parameter "force"
    .parameter "token"
    .parameter "nonce"

    .prologue
    .line 3022
    const-string v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3025
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 3026
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;

    .line 3027
    .local v8, existingState:Lcom/android/server/MountService$ObbState;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3029
    if-eqz v8, :cond_0

    .line 3031
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3032
    .local v4, callingUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 3034
    .local v0, newState:Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 3035
    .local v7, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3042
    .end local v0           #newState:Lcom/android/server/MountService$ObbState;
    .end local v4           #callingUid:I
    .end local v7           #action:Lcom/android/server/MountService$ObbAction;
    :goto_0
    return-void

    .line 3027
    .end local v8           #existingState:Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3040
    .restart local v8       #existingState:Lcom/android/server/MountService$ObbState;
    :cond_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2824
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2825
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2826
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2828
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2829
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2830
    const/4 v3, -0x5

    monitor-exit v5

    .line 2863
    :cond_0
    :goto_0
    return v3

    .line 2832
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2840
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2842
    const/4 v3, 0x0

    .line 2844
    .local v3, rc:I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2845
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_2

    .line 2846
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2848
    :cond_2
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2858
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :goto_1
    if-nez v3, :cond_0

    .line 2859
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2860
    :try_start_2
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2861
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2832
    .end local v3           #rc:I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 2849
    .restart local v3       #rc:I
    :catch_0
    move-exception v2

    .line 2850
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2851
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    .line 2852
    const/4 v3, -0x7

    goto :goto_1

    .line 2854
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    .line 2597
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2598
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2600
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2602
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

    .line 2617
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

    .line 2627
    :cond_0
    :goto_0
    return-void

    .line 2625
    :cond_1
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 2626
    .local v0, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public unmountVolumeNotSwap(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    .line 4095
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 4096
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 4098
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4100
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

    .line 4105
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

    .line 4115
    :cond_0
    :goto_0
    return-void

    .line 4113
    :cond_1
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 4114
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
    .line 2267
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2268
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

    .line 2269
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v2, p1, :cond_0

    .line 2270
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2271
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2272
    monitor-exit v3

    .line 2276
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_0
    return-void

    .line 2275
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
    .locals 7
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 3162
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3165
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3169
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3172
    :cond_1
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 3175
    const-string v2, "MountService"

    const-string v3, "validating encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3181
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3185
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_0
    return v2

    .line 3183
    :catch_0
    move-exception v0

    .line 3185
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_0
.end method

.method waitForAsecScan()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 738
    return-void
.end method
