.class Lcom/android/server/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$4;,
        Lcom/android/server/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/BackupManagerService$PerformClearTask;,
        Lcom/android/server/BackupManagerService$PerformRestoreTask;,
        Lcom/android/server/BackupManagerService$RestoreState;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask;,
        Lcom/android/server/BackupManagerService$RestorePolicy;,
        Lcom/android/server/BackupManagerService$FileMetadata;,
        Lcom/android/server/BackupManagerService$PerformFullBackupTask;,
        Lcom/android/server/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/BackupManagerService$BackupState;,
        Lcom/android/server/BackupManagerService$BackupRestoreTask;,
        Lcom/android/server/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/BackupManagerService$BaiduConnection;,
        Lcom/android/server/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/BackupManagerService$BackupHandler;,
        Lcom/android/server/BackupManagerService$Operation;,
        Lcom/android/server/BackupManagerService$FullRestoreParams;,
        Lcom/android/server/BackupManagerService$FullBackupParams;,
        Lcom/android/server/BackupManagerService$FullParams;,
        Lcom/android/server/BackupManagerService$ClearParams;,
        Lcom/android/server/BackupManagerService$RestoreParams;,
        Lcom/android/server/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/BackupManagerService$BackupRequest;,
        Lcom/android/server/BackupManagerService$ObserveBaiduTransport;
    }
.end annotation


# static fields
.field static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field static final BACKUP_FILE_VERSION:I = 0x1

.field private static final BACKUP_INTERVAL:J = 0x36ee80L

.field static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field static final BACKUP_MANIFEST_VERSION:I = 0x1

.field static final COMPRESS_FULL_BACKUPS:Z = true

.field static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field private static final FIRST_BACKUP_INTERVAL:J = 0x2932e00L

.field private static final FUZZ_MILLIS:I = 0x493e0

.field static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field private static final MORE_DEBUG:Z = false

.field static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field private static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field static final MSG_OP_COMPLETE:I = 0x15

.field private static final MSG_RESTART_BAIDU_BACKUP_AGENT:I = 0xb

.field private static final MSG_RESTORE_TIMEOUT:I = 0x8

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_BACKUP:I = 0x2

.field private static final MSG_RUN_FULL_RESTORE:I = 0xa

.field private static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field private static final MSG_RUN_INITIALIZE:I = 0x5

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x7

.field static final OP_ACKNOWLEDGED:I = 0x1

.field static final OP_PENDING:I = 0x0

.field static final OP_TIMEOUT:I = -0x1

.field static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field static final PBKDF2_KEY_SIZE:I = 0x100

.field static final PBKDF2_SALT_SIZE:I = 0x200

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field private static final RUN_CLEAR_ACTION:Ljava/lang/String; = "android.app.backup.intent.CLEAR"

.field private static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field static final TIMEOUT_INTERVAL:J = 0x2710L

.field static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L


# instance fields
.field mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAncestralToken:J

.field mAutoRestore:Z

.field mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

.field mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field volatile mBackupRunning:Z

.field mBaiduConnection:Lcom/android/server/BackupManagerService$BaiduConnection;

.field mBaiduLocalTransport:Lcom/android/internal/backup/IBackupTransport;

.field mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClearDataLock:Ljava/lang/Object;

.field volatile mClearingData:Z

.field mConnectedAgent:Landroid/app/IBackupAgent;

.field volatile mConnecting:Z

.field private mContext:Landroid/content/Context;

.field final mCurrentOpLock:Ljava/lang/Object;

.field final mCurrentOperations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/BackupManagerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentToken:J

.field mCurrentTransport:Ljava/lang/String;

.field mDataDir:Ljava/io/File;

.field mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFullConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/BackupManagerService$FullParams;",
            ">;"
        }
    .end annotation
.end field

.field mGoogleConnection:Landroid/content/ServiceConnection;

.field mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

.field mHandlerThread:Landroid/os/HandlerThread;

.field mJournal:Ljava/io/File;

.field mJournalDir:Ljava/io/File;

.field volatile mLastBackupPass:J

.field mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

.field private mMountService:Landroid/os/storage/IMountService;

.field volatile mNextBackupPass:J

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordHashFile:Ljava/io/File;

.field private mPasswordSalt:[B

.field mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInits:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mProvisioned:Z

.field final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field mRunBackupIntent:Landroid/app/PendingIntent;

.field mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field mRunInitIntent:Landroid/app/PendingIntent;

.field mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field mTokenFile:Ljava/io/File;

.field final mTokenGenerator:Ljava/util/Random;

.field final mTransports:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/backup/IBackupTransport;",
            ">;"
        }
    .end annotation
.end field

.field mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 22
    .parameter "context"

    .prologue
    .line 691
    invoke-direct/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 230
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 245
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 252
    new-instance v19, Ljava/lang/Object;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 258
    new-instance v19, Ljava/lang/Object;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 266
    new-instance v19, Ljava/lang/Object;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 270
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    .line 394
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    .line 395
    new-instance v19, Ljava/lang/Object;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 396
    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 398
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    .line 412
    new-instance v19, Ljava/security/SecureRandom;

    invoke-direct/range {v19 .. v19}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 427
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    .line 431
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 432
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 433
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 437
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    .line 1326
    new-instance v19, Lcom/android/server/BackupManagerService$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$1;-><init>(Lcom/android/server/BackupManagerService;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1386
    new-instance v19, Lcom/android/server/BackupManagerService$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$2;-><init>(Lcom/android/server/BackupManagerService;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mGoogleConnection:Landroid/content/ServiceConnection;

    .line 1424
    new-instance v19, Lcom/android/server/BackupManagerService$BaiduConnection;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$BaiduConnection;-><init>(Lcom/android/server/BackupManagerService;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBaiduConnection:Lcom/android/server/BackupManagerService$BaiduConnection;

    .line 692
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    .line 693
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 694
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 695
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 697
    const-string v19, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/AlarmManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 698
    const-string v19, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 699
    const-string v19, "mount"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/server/BackupManagerService;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 704
    new-instance v19, Landroid/os/HandlerThread;

    const-string v20, "backup"

    const/16 v21, 0xa

    invoke-direct/range {v19 .. v21}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->start()V

    .line 706
    new-instance v19, Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "backup_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_3

    const/4 v4, 0x1

    .line 711
    .local v4, areEnabled:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "backup_provisioned"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "backup_auto_restore"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    .line 717
    new-instance v19, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v20

    const-string v21, "backup"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 719
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    .line 721
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "pwhash"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 723
    const/4 v8, 0x0

    .line 724
    .local v8, fin:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 726
    .local v10, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v8           #fin:Ljava/io/FileInputStream;
    .local v9, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v19, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 730
    .end local v10           #in:Ljava/io/DataInputStream;
    .local v11, in:Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 731
    .local v17, saltLen:I
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 732
    .local v16, salt:[B
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 733
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 734
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 739
    if-eqz v11, :cond_0

    :try_start_3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 740
    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 748
    .end local v9           #fin:Ljava/io/FileInputStream;
    .end local v11           #in:Ljava/io/DataInputStream;
    .end local v16           #salt:[B
    .end local v17           #saltLen:I
    :cond_1
    :goto_3
    new-instance v19, Lcom/android/server/BackupManagerService$RunBackupReceiver;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 749
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 750
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v19, "android.app.backup.intent.RUN"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    const-string v20, "android.permission.BACKUP"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 754
    new-instance v19, Lcom/android/server/BackupManagerService$RunInitializeReceiver;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 755
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7           #filter:Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 756
    .restart local v7       #filter:Landroid/content/IntentFilter;
    const-string v19, "android.app.backup.intent.INIT"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    const-string v20, "android.permission.BACKUP"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 760
    new-instance v5, Landroid/content/Intent;

    const-string v19, "android.app.backup.intent.RUN"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    .local v5, backupIntent:Landroid/content/Intent;
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 762
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 764
    new-instance v13, Landroid/content/Intent;

    const-string v19, "android.app.backup.intent.INIT"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .local v13, initIntent:Landroid/content/Intent;
    const/high16 v19, 0x4000

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 766
    const/16 v19, 0x5

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 769
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "pending"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 771
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 774
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->initPackageTracking()V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 780
    const/16 v19, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 781
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 786
    new-instance v19, Lcom/android/internal/backup/LocalTransport;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/backup/LocalTransport;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 787
    new-instance v15, Landroid/content/ComponentName;

    const-class v19, Lcom/android/internal/backup/LocalTransport;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 788
    .local v15, localName:Landroid/content/ComponentName;
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 790
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 791
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "backup_transport"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 793
    const-string v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 794
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 801
    :cond_2
    new-instance v18, Landroid/content/ComponentName;

    const-string v19, "com.google.android.backup"

    const-string v20, "com.google.android.backup.BackupTransportService"

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .local v18, transportComponent:Landroid/content/ComponentName;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 809
    .local v12, info:Landroid/content/pm/ApplicationInfo;
    iget v0, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_9

    .line 811
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 812
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mGoogleConnection:Landroid/content/ServiceConnection;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 820
    .end local v12           #info:Landroid/content/pm/ApplicationInfo;
    .end local v14           #intent:Landroid/content/Intent;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->registerBaiduTransport()V

    .line 823
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->parseLeftoverJournals()V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const-string v21, "*backup*"

    invoke-virtual/range {v19 .. v21}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 829
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService;->setBackupEnabled(Z)V

    .line 830
    return-void

    .line 709
    .end local v4           #areEnabled:Z
    .end local v5           #backupIntent:Landroid/content/Intent;
    .end local v7           #filter:Landroid/content/IntentFilter;
    .end local v13           #initIntent:Landroid/content/Intent;
    .end local v15           #localName:Landroid/content/ComponentName;
    .end local v18           #transportComponent:Landroid/content/ComponentName;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 711
    .restart local v4       #areEnabled:Z
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 713
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 735
    .restart local v8       #fin:Ljava/io/FileInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v6

    .line 736
    .local v6, e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to read saved backup pw hash"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 739
    if-eqz v10, :cond_6

    :try_start_7
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 740
    :cond_6
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 741
    :catch_1
    move-exception v6

    .line 742
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to close streams"

    .end local v8           #fin:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    :goto_6
    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 738
    .end local v6           #e:Ljava/io/IOException;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    :catchall_0
    move-exception v19

    .line 739
    :goto_7
    if-eqz v10, :cond_7

    :try_start_8
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 740
    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 738
    :cond_8
    :goto_8
    throw v19

    .line 781
    .end local v8           #fin:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    .restart local v5       #backupIntent:Landroid/content/Intent;
    .restart local v7       #filter:Landroid/content/IntentFilter;
    .restart local v13       #initIntent:Landroid/content/Intent;
    :catchall_1
    move-exception v19

    :try_start_9
    monitor-exit v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v19

    .line 814
    .restart local v12       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v15       #localName:Landroid/content/ComponentName;
    .restart local v18       #transportComponent:Landroid/content/ComponentName;
    :cond_9
    :try_start_a
    const-string v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Possible Google transport spoof: ignoring "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    .line 816
    .end local v12           #info:Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v19

    goto :goto_4

    .line 741
    .end local v5           #backupIntent:Landroid/content/Intent;
    .end local v7           #filter:Landroid/content/IntentFilter;
    .end local v13           #initIntent:Landroid/content/Intent;
    .end local v15           #localName:Landroid/content/ComponentName;
    .end local v18           #transportComponent:Landroid/content/ComponentName;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    :catch_3
    move-exception v6

    .line 742
    .restart local v6       #e:Ljava/io/IOException;
    const-string v20, "BackupManagerService"

    const-string v21, "Unable to close streams"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 741
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #fin:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    .restart local v11       #in:Ljava/io/DataInputStream;
    .restart local v16       #salt:[B
    .restart local v17       #saltLen:I
    :catch_4
    move-exception v6

    .line 742
    .restart local v6       #e:Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to close streams"

    goto :goto_6

    .line 738
    .end local v6           #e:Ljava/io/IOException;
    .end local v11           #in:Ljava/io/DataInputStream;
    .end local v16           #salt:[B
    .end local v17           #saltLen:I
    .restart local v10       #in:Ljava/io/DataInputStream;
    :catchall_2
    move-exception v19

    move-object v8, v9

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v8           #fin:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    .restart local v11       #in:Ljava/io/DataInputStream;
    :catchall_3
    move-exception v19

    move-object v10, v11

    .end local v11           #in:Ljava/io/DataInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    goto :goto_7

    .line 735
    .end local v8           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v8, v9

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v8           #fin:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    .restart local v11       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v6

    move-object v10, v11

    .end local v11           #in:Ljava/io/DataInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method static synthetic access$000(Lcom/android/server/BackupManagerService;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/BackupManagerService;I)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->randomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/BackupManagerService;)Ljava/security/SecureRandom;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/BackupManagerService;[B[BI)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->makeKeyChecksum([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/BackupManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->registerBaiduTransport()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/BackupManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/BackupManagerService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/BackupManagerService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    return-void
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1449
    .local p2, targetPkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1450
    .local v1, pkg:Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1451
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1452
    .local v3, uid:I
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1453
    .local v2, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v2, :cond_2

    .line 1454
    new-instance v2, Ljava/util/HashSet;

    .end local v2           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1455
    .restart local v2       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1457
    :cond_2
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1461
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1464
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_0

    .line 1468
    .end local v1           #pkg:Landroid/content/pm/PackageInfo;
    .end local v2           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3           #uid:I
    :cond_3
    return-void
.end method

.method private buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;
    .locals 5
    .parameter "pwArray"
    .parameter "salt"
    .parameter "rounds"

    .prologue
    .line 1038
    :try_start_0
    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 1039
    .local v1, keyFactory:Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v3, 0x100

    invoke-direct {v2, p1, p2, p3, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 1040
    .local v2, ks:Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1046
    .end local v1           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v2           #ks:Ljava/security/spec/KeySpec;
    :goto_0
    return-object v3

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "BackupManagerService"

    const-string v4, "Invalid key spec for PBKDF2!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    .end local v0           #e:Ljava/security/spec/InvalidKeySpecException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1043
    :catch_1
    move-exception v0

    .line 1044
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "BackupManagerService"

    const-string v4, "PBKDF2 unavailable!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 2
    .parameter "pw"
    .parameter "salt"
    .parameter "rounds"

    .prologue
    .line 1050
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1051
    .local v0, key:Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_0

    .line 1052
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 1054
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .locals 1
    .parameter "pw"
    .parameter "salt"
    .parameter "rounds"

    .prologue
    .line 1033
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/BackupManagerService;->buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .locals 4
    .parameter "data"

    .prologue
    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1059
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1060
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1062
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 4773
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 4774
    .local v0, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 4775
    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 6
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4781
    .local p2, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    const/16 v3, 0xb04

    invoke-static {v3, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4783
    if-nez p2, :cond_0

    .line 4784
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dataChanged but no participant pkg=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4815
    :goto_0
    return-void

    .line 4789
    :cond_0
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4791
    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 4794
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4797
    new-instance v2, Lcom/android/server/BackupManagerService$BackupRequest;

    invoke-direct {v2, p0, p1}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .line 4798
    .local v2, req:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4802
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    goto :goto_1

    .line 4814
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 8
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4821
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 4823
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 4824
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    monitor-exit v5

    .line 4840
    :goto_0
    return-object v4

    .line 4825
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4830
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4831
    .local v3, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 4832
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4833
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 4834
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 4835
    .local v2, s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v2, :cond_1

    .line 4836
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4833
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4839
    .end local v2           #s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :cond_2
    monitor-exit v5

    move-object v4, v3

    .line 4840
    goto :goto_0

    .line 4839
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 26
    .parameter "pw"

    .prologue
    .line 5778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "android.permission.DUMP"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_0

    .line 5780
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Permission Denial: can\'t dump Backup Manager service from from pid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", uid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " without permission "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "android.permission.DUMP"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5850
    :goto_0
    return-void

    .line 5788
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 5789
    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Backup Manager is "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    const-string v22, "enabled"

    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " / "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    const-string v22, "not "

    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "provisioned / "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->size()I

    move-result v22

    if-nez v22, :cond_4

    const-string v22, "not "

    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "pending init"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5792
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Auto-restore is "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    const-string v22, "enabled"

    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5793
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    const-string v22, "Backup currently running"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5794
    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Last backup pass started: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " (now = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x29

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5796
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  next scheduled: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5798
    const-string v22, "Available transports:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5799
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v5

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .local v12, i$:I
    :goto_5
    if-ge v12, v13, :cond_8

    aget-object v19, v5, v12

    .line 5800
    .local v19, t:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    const-string v22, "  * "

    :goto_6
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5802
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v20

    .line 5803
    .local v20, transport:Lcom/android/internal/backup/IBackupTransport;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5804
    .local v7, dir:Ljava/io/File;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       destination: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5805
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       intent: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5806
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .local v6, arr$:[Ljava/io/File;
    array-length v14, v6

    .local v14, len$:I
    const/4 v11, 0x0

    .end local v12           #i$:I
    .restart local v11       #i$:I
    :goto_7
    if-ge v11, v14, :cond_7

    aget-object v9, v6, v11

    .line 5807
    .local v9, f:Ljava/io/File;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " - "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " state bytes"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5806
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 5789
    .end local v6           #arr$:[Ljava/io/File;
    .end local v7           #dir:Ljava/io/File;
    .end local v9           #f:Ljava/io/File;
    .end local v11           #i$:I
    .end local v14           #len$:I
    .end local v19           #t:Ljava/lang/String;
    .end local v20           #transport:Lcom/android/internal/backup/IBackupTransport;
    :cond_2
    :try_start_2
    const-string v22, "disabled"

    goto/16 :goto_1

    :cond_3
    const-string v22, ""

    goto/16 :goto_2

    :cond_4
    const-string v22, ""

    goto/16 :goto_3

    .line 5792
    :cond_5
    const-string v22, "disabled"

    goto/16 :goto_4

    .line 5800
    .restart local v12       #i$:I
    .restart local v19       #t:Ljava/lang/String;
    :cond_6
    const-string v22, "    "

    goto/16 :goto_6

    .line 5809
    .end local v12           #i$:I
    :catch_0
    move-exception v8

    .line 5810
    .local v8, e:Ljava/lang/Exception;
    const-string v22, "BackupManagerService"

    const-string v24, "Error in transport"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5811
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "        Error: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5799
    .end local v8           #e:Ljava/lang/Exception;
    :cond_7
    add-int/lit8 v11, v12, 0x1

    .restart local v11       #i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto/16 :goto_5

    .line 5815
    .end local v19           #t:Ljava/lang/String;
    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Pending init: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5817
    .local v18, s:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 5849
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v18           #s:Ljava/lang/String;
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 5820
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 5821
    .local v3, N:I
    const-string v22, "Participants:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5822
    const/4 v10, 0x0

    .local v10, i:I
    :goto_9
    if-ge v10, v3, :cond_b

    .line 5823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .line 5824
    .local v21, uid:I
    const-string v22, "  uid: "

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5825
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 5827
    .local v15, participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 5828
    .local v4, app:Landroid/content/pm/ApplicationInfo;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 5822
    .end local v4           #app:Landroid/content/pm/ApplicationInfo;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 5832
    .end local v15           #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v21           #uid:I
    :cond_b
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ancestral packages: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    if-nez v22, :cond_c

    const-string v22, "none"

    :goto_b
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 5835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 5836
    .local v16, pkg:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 5832
    .end local v16           #pkg:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    goto :goto_b

    .line 5840
    :cond_d
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ever backed up: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 5842
    .restart local v16       #pkg:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 5845
    .end local v16           #pkg:Ljava/lang/String;
    :cond_e
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Pending backup: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 5847
    .local v17, req:Lcom/android/server/BackupManagerService$BackupRequest;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 5849
    .end local v17           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_f
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 5
    .parameter "transportName"

    .prologue
    .line 1668
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v2

    .line 1669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .line 1670
    .local v0, transport:Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_0

    .line 1671
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested unavailable transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1674
    .end local v0           #transport:Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .locals 6
    .parameter "digits"

    .prologue
    .line 1066
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1067
    .local v0, bytes:I
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1068
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Hex string must have an even number of digits"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1071
    :cond_0
    new-array v2, v0, [B

    .line 1072
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1073
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1072
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1075
    :cond_1
    return-object v2
.end method

.method private initPackageTracking()V
    .locals 22

    .prologue
    .line 914
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "ancestral"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    .line 916
    :try_start_0
    new-instance v17, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 917
    .local v17, tf:Ljava/io/RandomAccessFile;
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v18

    .line 918
    .local v18, version:I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 919
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 920
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 922
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    .line 923
    .local v10, numPackages:I
    if-ltz v10, :cond_0

    .line 924
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 925
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 926
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v12

    .line 927
    .local v12, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 931
    .end local v6           #i:I
    .end local v10           #numPackages:I
    .end local v12           #pkgName:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 942
    .end local v17           #tf:Ljava/io/RandomAccessFile;
    .end local v18           #version:I
    :goto_1
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "processed"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    .line 943
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "processed.new"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 948
    .local v16, tempProcessedFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 949
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 954
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 955
    const/4 v14, 0x0

    .line 956
    .local v14, temp:Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 959
    .local v7, in:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v19, "rws"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 960
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .local v15, temp:Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v8, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 964
    .end local v7           #in:Ljava/io/RandomAccessFile;
    .local v8, in:Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    move-result-object v11

    .line 966
    .local v11, pkg:Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 967
    .local v9, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 968
    invoke-virtual {v15, v11}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    goto :goto_2

    .line 970
    .end local v9           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v19

    goto :goto_2

    .line 932
    .end local v8           #in:Ljava/io/RandomAccessFile;
    .end local v11           #pkg:Ljava/lang/String;
    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .end local v16           #tempProcessedFile:Ljava/io/File;
    :catch_1
    move-exception v5

    .line 934
    .local v5, fnf:Ljava/io/FileNotFoundException;
    const-string v19, "BackupManagerService"

    const-string v20, "No ancestral data"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 935
    .end local v5           #fnf:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 936
    .local v3, e:Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to read token file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 975
    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    .restart local v16       #tempProcessedFile:Ljava/io/File;
    :catch_3
    move-exception v3

    .line 978
    .local v3, e:Ljava/io/EOFException;
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 979
    const-string v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error renaming "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 984
    :cond_2
    if-eqz v14, :cond_3

    :try_start_6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 985
    :cond_3
    :goto_4
    if-eqz v7, :cond_4

    :try_start_7
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 991
    .end local v3           #e:Ljava/io/EOFException;
    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    :cond_4
    :goto_5
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 992
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 993
    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    const-string v19, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    const-string v19, "package"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 998
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 999
    .local v13, sdFilter:Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1002
    return-void

    .line 981
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v13           #sdFilter:Landroid/content/IntentFilter;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v3

    .line 982
    .local v3, e:Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v19, "BackupManagerService"

    const-string v20, "Error in processed file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 984
    if-eqz v14, :cond_5

    :try_start_9
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 985
    :cond_5
    :goto_7
    if-eqz v7, :cond_4

    :try_start_a
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_5

    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v19

    goto :goto_5

    .line 984
    :catchall_0
    move-exception v19

    :goto_8
    if-eqz v14, :cond_6

    :try_start_b
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 985
    :cond_6
    :goto_9
    if-eqz v7, :cond_7

    :try_start_c
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 984
    :cond_7
    :goto_a
    throw v19

    :catch_6
    move-exception v20

    goto :goto_9

    .line 985
    :catch_7
    move-exception v20

    goto :goto_a

    .line 984
    .local v3, e:Ljava/io/EOFException;
    :catch_8
    move-exception v19

    goto/16 :goto_4

    .local v3, e:Ljava/io/IOException;
    :catch_9
    move-exception v19

    goto :goto_7

    .end local v3           #e:Ljava/io/IOException;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v19

    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_8

    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v8       #in:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v19

    move-object v7, v8

    .end local v8           #in:Ljava/io/RandomAccessFile;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 981
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v3

    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v8       #in:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v3

    move-object v7, v8

    .end local v8           #in:Ljava/io/RandomAccessFile;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 975
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v3

    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v8       #in:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_d
    move-exception v3

    move-object v7, v8

    .end local v8           #in:Ljava/io/RandomAccessFile;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

.method private makeKeyChecksum([B[BI)[B
    .locals 4
    .parameter "pwBytes"
    .parameter "salt"
    .parameter "rounds"

    .prologue
    .line 1079
    array-length v3, p1

    new-array v2, v3, [C

    .line 1080
    .local v2, mkAsChar:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 1081
    aget-byte v3, p1, v1

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 1080
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1084
    :cond_0
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/BackupManagerService;->buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1085
    .local v0, checksum:Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

.method private parseLeftoverJournals()V
    .locals 11

    .prologue
    .line 1005
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v2, v0, v3

    .line 1006
    .local v2, f:Ljava/io/File;
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    invoke-virtual {v2, v8}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 1010
    :cond_0
    const/4 v4, 0x0

    .line 1012
    .local v4, in:Ljava/io/RandomAccessFile;
    :try_start_0
    const-string v8, "BackupManagerService"

    const-string v9, "Found stale backup journal, scheduling"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v5, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1015
    .end local v4           #in:Ljava/io/RandomAccessFile;
    .local v5, in:Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 1016
    .local v7, packageName:Ljava/lang/String;
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-direct {p0, v7}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 1019
    .end local v7           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v4, v5

    .line 1025
    .end local v5           #in:Ljava/io/RandomAccessFile;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    :goto_2
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1026
    :cond_1
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1005
    .end local v4           #in:Ljava/io/RandomAccessFile;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1021
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 1022
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1025
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v8

    goto :goto_3

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1026
    :cond_3
    :goto_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1025
    throw v8

    .line 1030
    .end local v2           #f:Ljava/io/File;
    .end local v4           #in:Ljava/io/RandomAccessFile;
    :cond_4
    return-void

    .line 1025
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v9

    goto :goto_6

    .end local v4           #in:Ljava/io/RandomAccessFile;
    .restart local v5       #in:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #in:Ljava/io/RandomAccessFile;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 1021
    .end local v4           #in:Ljava/io/RandomAccessFile;
    .restart local v5       #in:Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5           #in:Ljava/io/RandomAccessFile;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 1019
    :catch_6
    move-exception v8

    goto :goto_2
.end method

.method private randomBytes(I)[B
    .locals 2
    .parameter "bits"

    .prologue
    .line 1090
    div-int/lit8 v1, p1, 0x8

    new-array v0, v1, [B

    .line 1091
    .local v0, array:[B
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1092
    return-object v0
.end method

.method private registerBaiduTransport()V
    .locals 7

    .prologue
    .line 833
    const-string v4, "BackupManagerService"

    const-string v5, "registerBaiduTransport"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-string v4, "BackupManagerService"

    const-string v5, "registerBaiduTransport"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.baidu.bsf.service"

    const-string v5, "com.baidu.backup.service.LocalTransportService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .local v0, componentName:Landroid/content/ComponentName;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 842
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 843
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 844
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBaiduConnection:Lcom/android/server/BackupManagerService$BaiduConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v3

    .line 847
    .local v3, nnf:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Baidu Transport"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not present"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 11
    .parameter "name"
    .parameter "transport"

    .prologue
    .line 1287
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v6

    .line 1289
    if-eqz p2, :cond_1

    .line 1290
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    :try_start_1
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    .line 1306
    .local v4, transportName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1307
    .local v3, stateDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1309
    new-instance v2, Ljava/io/File;

    const-string v5, "_need_init_"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1310
    .local v2, initSentinel:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1311
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1312
    :try_start_2
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1315
    const-wide/32 v0, 0xea60

    .line 1316
    .local v0, delay:J
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v0

    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1318
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1323
    .end local v0           #delay:J
    .end local v2           #initSentinel:Ljava/io/File;
    .end local v3           #stateDir:Ljava/io/File;
    .end local v4           #transportName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1294
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 1297
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 1299
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 1318
    .restart local v2       #initSentinel:Ljava/io/File;
    .restart local v3       #stateDir:Ljava/io/File;
    .restart local v4       #transportName:Ljava/lang/String;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v5
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1320
    .end local v2           #initSentinel:Ljava/io/File;
    .end local v3           #stateDir:Ljava/io/File;
    .end local v4           #transportName:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1493
    .local p2, allPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1494
    .local v3, pkg:Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1505
    :cond_1
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1508
    .local v5, uid:I
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 1509
    .local v4, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v4, :cond_0

    .line 1512
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1514
    .local v0, entry:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1516
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1517
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/BackupManagerService;->removeEverBackedUp(Ljava/lang/String;)V

    .line 1521
    .end local v0           #entry:Landroid/content/pm/ApplicationInfo;
    :cond_3
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1522
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    .line 1529
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pkg:Landroid/content/pm/PackageInfo;
    .end local v4           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5           #uid:I
    :cond_4
    return-void
.end method

.method private signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .locals 10
    .parameter "storedSigs"
    .parameter "target"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4069
    iget-object v8, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 4105
    :cond_0
    :goto_0
    return v6

    .line 4076
    :cond_1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4079
    .local v0, deviceSigs:[Landroid/content/pm/Signature;
    if-eqz p1, :cond_2

    array-length v8, p1

    if-nez v8, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    array-length v8, v0

    if-eqz v8, :cond_0

    .line 4083
    :cond_3
    if-eqz p1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    move v6, v7

    .line 4084
    goto :goto_0

    .line 4090
    :cond_5
    array-length v5, p1

    .line 4091
    .local v5, nStored:I
    array-length v4, v0

    .line 4093
    .local v4, nDevice:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 4094
    const/4 v3, 0x0

    .line 4095
    .local v3, match:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v4, :cond_6

    .line 4096
    aget-object v8, p1, v1

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4097
    const/4 v3, 0x1

    .line 4101
    :cond_6
    if-nez v3, :cond_8

    move v6, v7

    .line 4102
    goto :goto_0

    .line 4095
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4093
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private startBackupAlarmsLocked(J)V
    .locals 10
    .parameter "delayBeforeFirstBackup"

    .prologue
    const v6, 0x493e0

    .line 5252
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 5253
    .local v7, random:Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    add-long v2, v0, v4

    .line 5255
    .local v2, when:J
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v8, v6

    add-long/2addr v4, v8

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 5257
    iput-wide v2, p0, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    .line 5258
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    .line 4844
    const/4 v1, 0x0

    .line 4846
    .local v1, out:Ljava/io/RandomAccessFile;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    if-nez v3, :cond_0

    const-string v3, "journal"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 4847
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    const-string v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4848
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .local v2, out:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4849
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 4854
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .line 4856
    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    :cond_2
    :goto_1
    return-void

    .line 4850
    :catch_0
    move-exception v0

    .line 4851
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to backup journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4852
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4854
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v3

    :catch_2
    move-exception v4

    goto :goto_4

    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 4850
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 10
    .parameter "token"
    .parameter "allow"
    .parameter "curPassword"
    .parameter "encPpassword"
    .parameter "observer"

    .prologue
    const/4 v1, 0x1

    .line 5115
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BACKUP"

    const-string v9, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 5121
    .local v3, oldId:J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5122
    :try_start_1
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/BackupManagerService$FullParams;

    .line 5123
    .local v5, params:Lcom/android/server/BackupManagerService$FullParams;
    if-eqz v5, :cond_5

    .line 5124
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v9, 0x9

    invoke-virtual {v7, v9, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 5125
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 5127
    if-eqz p2, :cond_4

    .line 5128
    instance-of v7, v5, Lcom/android/server/BackupManagerService$FullBackupParams;

    if-eqz v7, :cond_1

    const/4 v6, 0x2

    .line 5132
    .local v6, verb:I
    :goto_0
    iput-object p5, v5, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 5133
    iput-object p3, v5, Lcom/android/server/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5137
    :try_start_2
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v7}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v7

    if-eq v7, v1, :cond_2

    .line 5138
    .local v1, isEncrypted:Z
    :goto_1
    if-eqz v1, :cond_0

    const-string v7, "BackupManagerService"

    const-string v9, "Device is encrypted; forcing enc password"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5144
    :cond_0
    :goto_2
    if-eqz v1, :cond_3

    .end local p3
    :goto_3
    :try_start_3
    iput-object p3, v5, Lcom/android/server/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    .line 5147
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5148
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v7, v6, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5149
    .local v2, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v7, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5158
    .end local v1           #isEncrypted:Z
    .end local v2           #msg:Landroid/os/Message;
    .end local v6           #verb:I
    :goto_4
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5160
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5162
    return-void

    .line 5128
    .restart local p3
    :cond_1
    const/16 v6, 0xa

    goto :goto_0

    .line 5137
    .restart local v6       #verb:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 5139
    :catch_0
    move-exception v0

    .line 5141
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "BackupManagerService"

    const-string v9, "Unable to contact mount service!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5142
    const/4 v1, 0x1

    .restart local v1       #isEncrypted:Z
    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    move-object p3, p4

    .line 5144
    goto :goto_3

    .line 5151
    .end local v1           #isEncrypted:Z
    .end local v6           #verb:I
    :cond_4
    const-string v7, "BackupManagerService"

    const-string v9, "User rejected full backup/restore operation"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5153
    invoke-virtual {p0, v5}, Lcom/android/server/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V

    goto :goto_4

    .line 5158
    .end local v5           #params:Lcom/android/server/BackupManagerService$FullParams;
    .end local p3
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5160
    :catchall_1
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 5156
    .restart local v5       #params:Lcom/android/server/BackupManagerService$FullParams;
    .restart local p3
    :cond_5
    :try_start_6
    const-string v7, "BackupManagerService"

    const-string v9, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method addPackageParticipantsLocked([Ljava/lang/String;)V
    .locals 6
    .parameter "packageNames"

    .prologue
    .line 1431
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v4

    .line 1432
    .local v4, targetApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_0

    .line 1434
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1435
    .local v3, packageName:Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1439
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1441
    :cond_1
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .parameter "packageName"
    .parameter "agentBinder"

    .prologue
    .line 5367
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5368
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    .line 5369
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5370
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 5371
    .local v0, agent:Landroid/app/IBackupAgent;
    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 5372
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 5377
    .end local v0           #agent:Landroid/app/IBackupAgent;
    :goto_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5378
    monitor-exit v2

    .line 5379
    return-void

    .line 5374
    :cond_0
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " claiming agent connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5378
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 5386
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5387
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 5388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 5389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 5394
    :goto_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5395
    monitor-exit v1

    .line 5396
    return-void

    .line 5391
    :cond_0
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method allAgentPackages()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1534
    const/16 v4, 0x40

    .line 1535
    .local v4, flags:I
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 1536
    .local v5, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1537
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, a:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1538
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 1540
    .local v6, pkg:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1541
    .local v2, app:Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 1543
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1537
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1547
    .restart local v2       #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1549
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1551
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 1552
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1555
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #pkg:Landroid/content/pm/PackageInfo;
    :cond_2
    return-object v5
.end method

.method public backupNow()V
    .locals 5

    .prologue
    .line 4927
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "backupNow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4930
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4934
    const-wide/32 v3, 0x36ee80

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4936
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4941
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 4942
    return-void

    .line 4937
    :catch_0
    move-exception v0

    .line 4939
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "BackupManagerService"

    const-string v3, "run-backup intent cancelled!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4941
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 7
    .parameter "packageName"
    .parameter "transport"

    .prologue
    .line 5442
    const/4 v1, 0x1

    .line 5443
    .local v1, needPermission:Z
    if-nez p2, :cond_0

    .line 5444
    iget-object p2, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 5446
    if-eqz p1, :cond_0

    .line 5447
    const/4 v0, 0x0

    .line 5449
    .local v0, app:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5455
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 5459
    const/4 v1, 0x0

    .line 5464
    .end local v0           #app:Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v1, :cond_1

    .line 5465
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string v5, "beginRestoreSession"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5471
    :cond_1
    monitor-enter p0

    .line 5472
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_2

    .line 5473
    const-string v3, "BackupManagerService"

    const-string v4, "Restore session requested but one already active"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5474
    const/4 v3, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5479
    :goto_0
    return-object v3

    .line 5450
    .restart local v0       #app:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 5451
    .local v2, nnf:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5476
    .end local v0           #app:Landroid/content/pm/PackageInfo;
    .end local v2           #nnf:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :try_start_2
    new-instance v3, Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .line 5477
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5478
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5479
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    goto :goto_0

    .line 5478
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .locals 11
    .parameter "app"
    .parameter "mode"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1679
    const/4 v0, 0x0

    .line 1680
    .local v0, agent:Landroid/app/IBackupAgent;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1681
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 1682
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1684
    :try_start_1
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6, p1, p2}, Landroid/app/IActivityManager;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1685
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "awaiting agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 1691
    .local v2, timeoutMark:J
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_0

    .line 1693
    :try_start_2
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1694
    :catch_0
    move-exception v1

    .line 1696
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1711
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #timeoutMark:J
    :goto_1
    return-object v4

    .line 1701
    .restart local v2       #timeoutMark:J
    :cond_0
    :try_start_4
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-ne v6, v10, :cond_1

    .line 1702
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout waiting for agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1703
    :try_start_5
    monitor-exit v5

    goto :goto_1

    .line 1710
    .end local v2           #timeoutMark:J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 1705
    .restart local v2       #timeoutMark:J
    :cond_1
    :try_start_6
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1710
    .end local v2           #timeoutMark:J
    :cond_2
    :goto_2
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v4, v0

    .line 1711
    goto :goto_1

    .line 1707
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .locals 11
    .parameter "packageName"

    .prologue
    .line 1718
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1719
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_0

    .line 1750
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 1724
    :catch_0
    move-exception v0

    .line 1725
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tried to clear data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1729
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v2, Lcom/android/server/BackupManagerService$ClearDataObserver;

    invoke-direct {v2, p0}, Lcom/android/server/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 1731
    .local v2, observer:Lcom/android/server/BackupManagerService$ClearDataObserver;
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1732
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1734
    :try_start_2
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v5, p1, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1740
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x2710

    add-long v3, v7, v9

    .line 1741
    .local v3, timeoutMark:J
    :goto_2
    iget-boolean v5, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v7

    cmp-long v5, v7, v3

    if-gez v5, :cond_1

    .line 1743
    :try_start_4
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1744
    :catch_1
    move-exception v0

    .line 1746
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    :try_start_5
    iput-boolean v5, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    goto :goto_2

    .line 1749
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v3           #timeoutMark:J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .restart local v3       #timeoutMark:J
    :cond_1
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1735
    .end local v3           #timeoutMark:J
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public clearBackupData(Ljava/lang/String;)V
    .locals 19
    .parameter "packageName"

    .prologue
    .line 4880
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 4889
    .local v9, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-virtual/range {v14 .. v17}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    .line 4891
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 4907
    .local v5, apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 4908
    .local v4, app:Landroid/content/pm/ApplicationInfo;
    iget-object v14, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 4911
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v15

    .line 4912
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 4913
    .local v11, oldId:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4914
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v16, 0x4

    new-instance v17, Lcom/android/server/BackupManagerService$ClearParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/BackupManagerService$ClearParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 4916
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v14, v10}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4917
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4918
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4922
    .end local v4           #app:Landroid/content/pm/ApplicationInfo;
    .end local v5           #apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Landroid/content/pm/PackageInfo;
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #oldId:J
    :cond_2
    :goto_0
    return-void

    .line 4881
    :catch_0
    move-exception v6

    .line 4882
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "BackupManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No such package \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' - not clearing backup data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4896
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #info:Landroid/content/pm/PackageInfo;
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 4897
    .restart local v5       #apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4898
    .local v3, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v3, :cond_0

    .line 4899
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    .line 4900
    .local v13, s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v13, :cond_4

    .line 4901
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4898
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4918
    .end local v3           #N:I
    .end local v7           #i:I
    .end local v13           #s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v8       #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14
.end method

.method clearRestoreSession(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V
    .locals 2
    .parameter "currentSession"

    .prologue
    .line 5483
    monitor-enter p0

    .line 5484
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eq p1, v0, :cond_0

    .line 5485
    const-string v0, "BackupManagerService"

    const-string v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    :goto_0
    monitor-exit p0

    .line 5492
    return-void

    .line 5488
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .line 5489
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    goto :goto_0

    .line 5491
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 4861
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 4862
    .local v0, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_0

    .line 4863
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    :goto_0
    return-void

    .line 4868
    :cond_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    new-instance v2, Lcom/android/server/BackupManagerService$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/BackupManagerService$3;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method deviceIsProvisioned()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4945
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4946
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5771
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5773
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5775
    return-void

    .line 5773
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "includeApks"
    .parameter "includeShared"
    .parameter "doAllApps"
    .parameter "includeSystem"
    .parameter "pkgList"

    .prologue
    .line 4954
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "fullBackup"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4957
    if-nez p4, :cond_1

    .line 4958
    if-nez p3, :cond_1

    .line 4962
    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    array-length v2, v0

    if-nez v2, :cond_1

    .line 4963
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Backup requested but neither shared nor any apps named"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4969
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4972
    .local v9, oldId:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4973
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup not supported before setup"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5008
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5012
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5013
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup processing complete."

    :goto_1
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5015
    return-void

    .line 4980
    :cond_2
    :try_start_2
    const-string v2, "BackupManagerService"

    const-string v3, "Beginning full backup..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4982
    new-instance v1, Lcom/android/server/BackupManagerService$FullBackupParams;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/BackupManagerService$FullBackupParams;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V

    .line 4984
    .local v1, params:Lcom/android/server/BackupManagerService$FullBackupParams;
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v11

    .line 4985
    .local v11, token:I
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4986
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v2, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4987
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4991
    :try_start_4
    const-string v2, "fullback"

    invoke-virtual {p0, v11, v2}, Lcom/android/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4992
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to launch full backup confirmation"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4993
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5008
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 5012
    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5013
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup processing complete."

    goto :goto_1

    .line 4987
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5007
    .end local v1           #params:Lcom/android/server/BackupManagerService$FullBackupParams;
    .end local v11           #token:I
    :catchall_1
    move-exception v2

    .line 5008
    :try_start_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 5012
    :goto_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5013
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    throw v2

    .line 4998
    .restart local v1       #params:Lcom/android/server/BackupManagerService$FullBackupParams;
    .restart local v11       #token:I
    :cond_3
    :try_start_9
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 5001
    invoke-virtual {p0, v11, v1}, Lcom/android/server/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V

    .line 5005
    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService;->waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5008
    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 5012
    :goto_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5013
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup processing complete."

    goto :goto_1

    .line 5009
    .end local v1           #params:Lcom/android/server/BackupManagerService$FullBackupParams;
    .end local v11           #token:I
    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_0

    .restart local v1       #params:Lcom/android/server/BackupManagerService$FullBackupParams;
    .restart local v11       #token:I
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_4
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 9
    .parameter "fd"

    .prologue
    .line 5018
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BACKUP"

    const-string v7, "fullRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5020
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5025
    .local v1, oldId:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5026
    const-string v5, "BackupManagerService"

    const-string v6, "Full restore not permitted before setup"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5057
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5061
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5062
    const-string v5, "BackupManagerService"

    const-string v6, "Full restore processing complete."

    :goto_1
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5064
    return-void

    .line 5030
    :cond_0
    :try_start_2
    const-string v5, "BackupManagerService"

    const-string v6, "Beginning full restore..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5032
    new-instance v3, Lcom/android/server/BackupManagerService$FullRestoreParams;

    invoke-direct {v3, p0, p1}, Lcom/android/server/BackupManagerService$FullRestoreParams;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    .line 5033
    .local v3, params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v4

    .line 5034
    .local v4, token:I
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5035
    :try_start_3
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5036
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5040
    :try_start_4
    const-string v5, "fullrest"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5041
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to launch full restore confirmation"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5042
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5057
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 5061
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5062
    const-string v5, "BackupManagerService"

    const-string v6, "Full restore processing complete."

    goto :goto_1

    .line 5036
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 5056
    .end local v3           #params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    .end local v4           #token:I
    :catchall_1
    move-exception v5

    .line 5057
    :try_start_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 5061
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5062
    const-string v6, "BackupManagerService"

    const-string v7, "Full restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5056
    throw v5

    .line 5047
    .restart local v3       #params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    .restart local v4       #token:I
    :cond_1
    :try_start_9
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 5050
    invoke-virtual {p0, v4, v3}, Lcom/android/server/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V

    .line 5054
    invoke-virtual {p0, v3}, Lcom/android/server/BackupManagerService;->waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5057
    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 5061
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5062
    const-string v5, "BackupManagerService"

    const-string v6, "Full restore processing complete."

    goto :goto_1

    .line 5058
    .end local v3           #params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    .end local v4           #token:I
    :catch_0
    move-exception v0

    .line 5059
    .local v0, e:Ljava/io/IOException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5058
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 5059
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to close fd after full restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5058
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    .restart local v4       #token:I
    :catch_2
    move-exception v0

    .line 5059
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to close fd after full restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5058
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 5059
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to close fd after full restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method generateToken()I
    .locals 3

    .prologue
    .line 443
    :cond_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    monitor-enter v2

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 445
    .local v0, token:I
    monitor-exit v2

    .line 446
    if-ltz v0, :cond_0

    .line 447
    return v0

    .line 445
    .end local v0           #token:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 4
    .parameter "packageName"

    .prologue
    .line 1764
    iget-wide v0, p0, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1765
    .local v0, token:J
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1766
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1767
    iget-wide v0, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 1769
    :cond_0
    monitor-exit v3

    .line 1770
    return-wide v0

    .line 1769
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "transportName"

    .prologue
    .line 5319
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getConfigurationIntent"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5322
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v3

    .line 5323
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5324
    .local v1, transport:Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_0

    .line 5326
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 5329
    .local v0, intent:Landroid/content/Intent;
    :try_start_2
    monitor-exit v3

    .line 5336
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 5330
    :catch_0
    move-exception v2

    .line 5334
    :cond_0
    monitor-exit v3

    .line 5336
    const/4 v0, 0x0

    goto :goto_0

    .line 5334
    .end local v1           #transport:Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5268
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5271
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "transportName"

    .prologue
    .line 5345
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getDestinationString"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5348
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v3

    .line 5349
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5350
    .local v1, transport:Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_0

    .line 5352
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 5354
    .local v0, text:Ljava/lang/String;
    :try_start_2
    monitor-exit v3

    .line 5361
    .end local v0           #text:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 5355
    :catch_0
    move-exception v2

    .line 5359
    :cond_0
    monitor-exit v3

    .line 5361
    const/4 v0, 0x0

    goto :goto_0

    .line 5359
    .end local v1           #transport:Lcom/android/internal/backup/IBackupTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method handleTimeout(ILjava/lang/Object;)V
    .locals 5
    .parameter "token"
    .parameter "obj"

    .prologue
    const/4 v2, -0x1

    .line 1833
    const/4 v1, 0x0

    .line 1834
    .local v1, op:Lcom/android/server/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1835
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v1, v0

    .line 1840
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1841
    .local v2, state:I
    :cond_0
    if-nez v2, :cond_1

    .line 1843
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1844
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1846
    :cond_1
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1847
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1850
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_2

    .line 1851
    iget-object v3, v1, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    invoke-interface {v3}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->handleTimeout()V

    .line 1853
    :cond_2
    return-void

    .line 1847
    .end local v2           #state:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public hasBackupPassword()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1206
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "hasBackupPassword"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v1

    .line 1210
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1212
    :catch_0
    move-exception v0

    .line 1215
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isBackupEnabled()Z
    .locals 3

    .prologue
    .line 5262
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5263
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 5276
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string v6, "listAllTransports"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5278
    const/4 v3, 0x0

    .line 5279
    .local v3, list:[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5280
    .local v2, known:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5281
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5286
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 5287
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 5288
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5290
    :cond_2
    return-object v3
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    .line 1579
    const-string v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1595
    :goto_0
    return-void

    .line 1581
    :cond_0
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v4

    .line 1582
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v4

    goto :goto_0

    .line 1594
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1584
    :cond_1
    const/4 v1, 0x0

    .line 1586
    .local v1, out:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    const-string v5, "rws"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1587
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .local v2, out:Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1588
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1592
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_1
    move-object v1, v2

    .line 1594
    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_2
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t log backup of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1592
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    :goto_4
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_5
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_2
    move-exception v5

    goto :goto_5

    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v3

    goto :goto_1

    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 1589
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method public opComplete(I)V
    .locals 6
    .parameter "token"

    .prologue
    .line 5499
    const/4 v2, 0x0

    .line 5500
    .local v2, op:Lcom/android/server/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5501
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v2, v0

    .line 5502
    if-eqz v2, :cond_0

    .line 5503
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 5505
    :cond_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 5506
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5509
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_1

    .line 5510
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v4, 0x15

    iget-object v5, v2, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5511
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5513
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void

    .line 5506
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method passwordMatchesSaved(Ljava/lang/String;I)Z
    .locals 7
    .parameter "candidatePw"
    .parameter "rounds"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1100
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v6}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v6

    if-eq v6, v4, :cond_1

    move v2, v4

    .line 1101
    .local v2, isEncrypted:Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1109
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountService;->verifyEncryptionPassword(Ljava/lang/String;)I

    move-result v3

    .line 1110
    .local v3, result:I
    if-nez v3, :cond_2

    .line 1146
    .end local v2           #isEncrypted:Z
    .end local v3           #result:I
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v2, v5

    .line 1100
    goto :goto_0

    .line 1113
    .restart local v2       #isEncrypted:Z
    .restart local v3       #result:I
    :cond_2
    const/4 v4, -0x2

    if-eq v3, v4, :cond_3

    move v4, v5

    .line 1115
    goto :goto_1

    .line 1121
    :cond_3
    const-string v4, "BackupManagerService"

    const-string v6, "verified encryption state mismatch against query; no match allowed"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 1122
    goto :goto_1

    .line 1125
    .end local v2           #isEncrypted:Z
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move v4, v5

    .line 1128
    goto :goto_1

    .line 1131
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #isEncrypted:Z
    :cond_4
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 1133
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_5
    move v4, v5

    .line 1146
    goto :goto_1

    .line 1138
    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1139
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B

    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/BackupManagerService;->buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, currentPwHash:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1
.end method

.method prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V
    .locals 5
    .parameter "token"
    .parameter "interval"
    .parameter "callback"

    .prologue
    .line 1790
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1791
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/BackupManagerService$Operation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p4}, Lcom/android/server/BackupManagerService$Operation;-><init>(Lcom/android/server/BackupManagerService;ILcom/android/server/BackupManagerService$BackupRestoreTask;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1793
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, p4}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1794
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1795
    monitor-exit v2

    .line 1796
    return-void

    .line 1795
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method recordInitPendingLocked(ZLjava/lang/String;)V
    .locals 5
    .parameter "isPending"
    .parameter "transportName"

    .prologue
    .line 1225
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 1226
    .local v2, transport:Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 1227
    .local v3, transportDirName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1228
    .local v1, stateDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "_need_init_"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1230
    .local v0, initPendingFile:Ljava/io/File;
    if-eqz p1, :cond_0

    .line 1234
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1248
    .end local v0           #initPendingFile:Ljava/io/File;
    .end local v1           #stateDir:Ljava/io/File;
    .end local v2           #transport:Lcom/android/internal/backup/IBackupTransport;
    .end local v3           #transportDirName:Ljava/lang/String;
    :goto_0
    return-void

    .line 1242
    .restart local v0       #initPendingFile:Ljava/io/File;
    .restart local v1       #stateDir:Ljava/io/File;
    .restart local v2       #transport:Lcom/android/internal/backup/IBackupTransport;
    .restart local v3       #transportDirName:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1243
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1245
    .end local v0           #initPendingFile:Ljava/io/File;
    .end local v1           #stateDir:Ljava/io/File;
    .end local v2           #transport:Lcom/android/internal/backup/IBackupTransport;
    .end local v3           #transportDirName:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1237
    .restart local v0       #initPendingFile:Ljava/io/File;
    .restart local v1       #stateDir:Ljava/io/File;
    .restart local v2       #transport:Lcom/android/internal/backup/IBackupTransport;
    .restart local v3       #transportDirName:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .locals 10
    .parameter "packageName"

    .prologue
    .line 1602
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v7

    .line 1606
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v8, "processed.new"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1607
    .local v5, tempKnownFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 1609
    .local v2, known:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rws"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1610
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .local v3, known:Ljava/io/RandomAccessFile;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1611
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1612
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1620
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 1625
    .end local v3           #known:Ljava/io/RandomAccessFile;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_3
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error rewriting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1626
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1627
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1628
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1630
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1632
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1633
    return-void

    .line 1615
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #known:Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1616
    const/4 v2, 0x0

    .line 1617
    .end local v3           #known:Ljava/io/RandomAccessFile;
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    :try_start_7
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1618
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t rename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1620
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1630
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_2
    :goto_4
    :try_start_9
    throw v6

    .line 1632
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .end local v5           #tempKnownFile:Ljava/io/File;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v6

    .line 1630
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    .restart local v5       #tempKnownFile:Ljava/io/File;
    :catch_2
    move-exception v8

    goto :goto_4

    :catch_3
    move-exception v6

    goto :goto_2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz v2, :cond_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .restart local v3       #known:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3           #known:Ljava/io/RandomAccessFile;
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method removePackageParticipantsLocked([Ljava/lang/String;)V
    .locals 7
    .parameter "packageNames"

    .prologue
    .line 1472
    if-nez p1, :cond_1

    .line 1473
    const-string v5, "BackupManagerService"

    const-string v6, "removePackageParticipants with null list"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_0
    return-void

    .line 1478
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v2

    .line 1479
    .local v2, knownPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 1480
    .local v4, pkg:Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method resetBackupState(Ljava/io/File;)V
    .locals 13
    .parameter "stateFileDir"

    .prologue
    .line 1254
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1256
    :try_start_0
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 1257
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1259
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 1260
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1263
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, arr$:[Ljava/io/File;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v2, v4

    .line 1265
    .local v7, sf:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "_need_init_"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1266
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1263
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1269
    .end local v7           #sf:Ljava/io/File;
    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1272
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v10

    .line 1273
    :try_start_1
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1274
    .local v0, N:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1275
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1276
    .local v8, uid:I
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 1277
    .local v6, participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1278
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_2

    .line 1281
    .end local v0           #N:I
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8           #uid:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1269
    .end local v2           #arr$:[Ljava/io/File;
    .end local v5           #len$:I
    :catchall_1
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 1274
    .restart local v0       #N:I
    .restart local v2       #arr$:[Ljava/io/File;
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #len$:I
    .restart local v6       #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v8       #uid:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1281
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8           #uid:I
    :cond_3
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1282
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 10
    .parameter "packageName"
    .parameter "token"

    .prologue
    .line 5401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 5402
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system process uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attemping install-time restore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5435
    :goto_0
    return-void

    .line 5407
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v4

    .line 5411
    .local v4, restoreSet:J
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_1

    .line 5419
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 5420
    .local v6, pkg:Landroid/content/pm/PackageInfo;
    iput-object p1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5422
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5423
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 5424
    .local v9, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/server/BackupManagerService$RestoreParams;

    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5426
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5432
    .end local v6           #pkg:Landroid/content/pm/PackageInfo;
    .end local v9           #msg:Landroid/os/Message;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5433
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "transport"

    .prologue
    .line 5297
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "selectBackupTransport"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5299
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v2

    .line 5300
    const/4 v0, 0x0

    .line 5301
    .local v0, prevTransport:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5302
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 5303
    iput-object p1, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 5304
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "backup_transport"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5306
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectBackupTransport() set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5311
    :goto_0
    monitor-exit v2

    return-object v0

    .line 5309
    :cond_0
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to select unavailable transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5312
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAutoRestore(Z)V
    .locals 3
    .parameter "doAutoRestore"

    .prologue
    .line 5211
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "setAutoRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5214
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto restore => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5216
    monitor-enter p0

    .line 5217
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_auto_restore"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5219
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    .line 5220
    monitor-exit p0

    .line 5221
    return-void

    .line 5217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5220
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBackupEnabled(Z)V
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5166
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BACKUP"

    const-string v8, "setBackupEnabled"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5169
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Backup enabled => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    iget-boolean v3, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 5172
    .local v3, wasEnabled:Z
    monitor-enter p0

    .line 5173
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "backup_enabled"

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5175
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 5176
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5178
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5179
    if-eqz p1, :cond_2

    if-nez v3, :cond_2

    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v4, :cond_2

    .line 5181
    const-wide/32 v6, 0x36ee80

    invoke-direct {p0, v6, v7}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 5206
    :cond_0
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5207
    return-void

    :cond_1
    move v4, v5

    .line 5173
    goto :goto_0

    .line 5176
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 5182
    :cond_2
    if-nez p1, :cond_0

    .line 5186
    :try_start_3
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5191
    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v4, :cond_0

    .line 5195
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5196
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5197
    .local v0, allTransports:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 5199
    :try_start_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5200
    .local v2, transport:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/server/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    goto :goto_2

    .line 5206
    .end local v0           #allTransports:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #transport:Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 5197
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v4

    .line 5202
    .restart local v0       #allTransports:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "currentPw"
    .parameter "newPw"

    .prologue
    .line 1151
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BACKUP"

    const-string v11, "setBackupPassword"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const/16 v9, 0x2710

    invoke-virtual {p0, p1, v9}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1156
    const/4 v9, 0x0

    .line 1201
    :cond_0
    :goto_0
    return v9

    .line 1160
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1161
    :cond_2
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1162
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1164
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to clear backup password"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/4 v9, 0x0

    goto :goto_0

    .line 1168
    :cond_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1169
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B

    .line 1170
    const/4 v9, 0x1

    goto :goto_0

    .line 1175
    :cond_4
    const/16 v9, 0x200

    :try_start_0
    invoke-direct {p0, v9}, Lcom/android/server/BackupManagerService;->randomBytes(I)[B

    move-result-object v8

    .line 1176
    .local v8, salt:[B
    const/16 v9, 0x2710

    invoke-direct {p0, p2, v8, v9}, Lcom/android/server/BackupManagerService;->buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1178
    .local v3, newPwHash:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, pwf:Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 1179
    .local v0, buffer:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 1181
    .local v4, out:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1182
    .end local v6           #pwf:Ljava/io/OutputStream;
    .local v7, pwf:Ljava/io/OutputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1183
    .end local v0           #buffer:Ljava/io/OutputStream;
    .local v1, buffer:Ljava/io/OutputStream;
    :try_start_3
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1186
    .end local v4           #out:Ljava/io/DataOutputStream;
    .local v5, out:Ljava/io/DataOutputStream;
    :try_start_4
    array-length v9, v8

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1187
    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 1188
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 1190
    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1191
    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1192
    const/4 v9, 0x1

    .line 1194
    if-eqz v5, :cond_5

    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 1195
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1196
    :cond_6
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 1198
    .end local v1           #buffer:Ljava/io/OutputStream;
    .end local v3           #newPwHash:Ljava/lang/String;
    .end local v5           #out:Ljava/io/DataOutputStream;
    .end local v7           #pwf:Ljava/io/OutputStream;
    .end local v8           #salt:[B
    :catch_0
    move-exception v2

    .line 1199
    .local v2, e:Ljava/io/IOException;
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to set backup password"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v9, 0x0

    goto :goto_0

    .line 1194
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #buffer:Ljava/io/OutputStream;
    .restart local v3       #newPwHash:Ljava/lang/String;
    .restart local v4       #out:Ljava/io/DataOutputStream;
    .restart local v6       #pwf:Ljava/io/OutputStream;
    .restart local v8       #salt:[B
    :catchall_0
    move-exception v9

    :goto_1
    if-eqz v4, :cond_7

    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 1195
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1196
    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1194
    :cond_9
    throw v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .end local v6           #pwf:Ljava/io/OutputStream;
    .restart local v7       #pwf:Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #pwf:Ljava/io/OutputStream;
    .restart local v6       #pwf:Ljava/io/OutputStream;
    goto :goto_1

    .end local v0           #buffer:Ljava/io/OutputStream;
    .end local v6           #pwf:Ljava/io/OutputStream;
    .restart local v1       #buffer:Ljava/io/OutputStream;
    .restart local v7       #pwf:Ljava/io/OutputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #buffer:Ljava/io/OutputStream;
    .restart local v0       #buffer:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #pwf:Ljava/io/OutputStream;
    .restart local v6       #pwf:Ljava/io/OutputStream;
    goto :goto_1

    .end local v0           #buffer:Ljava/io/OutputStream;
    .end local v4           #out:Ljava/io/DataOutputStream;
    .end local v6           #pwf:Ljava/io/OutputStream;
    .restart local v1       #buffer:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    .restart local v7       #pwf:Ljava/io/OutputStream;
    :catchall_3
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/DataOutputStream;
    .restart local v4       #out:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #buffer:Ljava/io/OutputStream;
    .restart local v0       #buffer:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #pwf:Ljava/io/OutputStream;
    .restart local v6       #pwf:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public setBackupProvisioned(Z)V
    .locals 5
    .parameter "available"

    .prologue
    .line 5225
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "setBackupProvisioned"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5228
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 5229
    .local v0, wasProvisioned:Z
    monitor-enter p0

    .line 5230
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_provisioned"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5232
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 5233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5235
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5236
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    if-eqz v1, :cond_2

    .line 5238
    const-wide/32 v3, 0x2932e00

    invoke-direct {p0, v3, v4}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 5244
    :cond_0
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5245
    return-void

    .line 5230
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 5233
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5239
    :cond_2
    if-nez p1, :cond_0

    .line 5241
    :try_start_3
    const-string v1, "BackupManagerService"

    const-string v3, "Backup service no longer provisioned"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5242
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 5244
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 5099
    iget-object v1, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5100
    :try_start_0
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5101
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5102
    monitor-exit v1

    .line 5103
    return-void

    .line 5102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V
    .locals 4
    .parameter "token"
    .parameter "params"

    .prologue
    .line 5083
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5085
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5086
    return-void
.end method

.method startConfirmationUi(ILjava/lang/String;)Z
    .locals 4
    .parameter "token"
    .parameter "action"

    .prologue
    .line 5068
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5069
    .local v0, confIntent:Landroid/content/Intent;
    const-string v2, "com.android.backupconfirm"

    const-string v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5071
    const-string v2, "conftoken"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5072
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5073
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5077
    const/4 v2, 0x1

    .end local v0           #confIntent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 5074
    :catch_0
    move-exception v1

    .line 5075
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updatePackageParticipantsLocked([Ljava/lang/String;)V
    .locals 7
    .parameter "packageNames"

    .prologue
    .line 1561
    if-nez p1, :cond_1

    .line 1562
    const-string v5, "BackupManagerService"

    const-string v6, "updatePackageParticipants called with null package list"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_0
    return-void

    .line 1567
    :cond_1
    array-length v5, p1

    if-lez v5, :cond_0

    .line 1568
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 1569
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 1570
    .local v4, packageName:Ljava/lang/String;
    invoke-direct {p0, v4, v0}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1571
    invoke-direct {p0, v4, v0}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1569
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 5089
    iget-object v1, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5090
    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 5092
    :try_start_1
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5093
    :catch_0
    move-exception v0

    goto :goto_0

    .line 5095
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 5096
    return-void

    .line 5095
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method waitUntilOperationComplete(I)Z
    .locals 6
    .parameter "token"

    .prologue
    const/4 v4, 0x1

    .line 1802
    const/4 v1, 0x0

    .line 1803
    .local v1, finalState:I
    const/4 v2, 0x0

    .line 1804
    .local v2, op:Lcom/android/server/BackupManagerService$Operation;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1806
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v2, v0

    .line 1807
    if-nez v2, :cond_0

    .line 1823
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1825
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1828
    if-ne v1, v4, :cond_2

    move v3, v4

    :goto_2
    return v3

    .line 1811
    :cond_0
    :try_start_1
    iget v3, v2, Lcom/android/server/BackupManagerService$Operation;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 1813
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1814
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1818
    :cond_1
    :try_start_3
    iget v1, v2, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1819
    goto :goto_1

    .line 1823
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1828
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method writeRestoreTokens()V
    .locals 6

    .prologue
    .line 1640
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    const-string v5, "rwd"

    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1643
    .local v0, af:Ljava/io/RandomAccessFile;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1646
    iget-wide v4, p0, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1647
    iget-wide v4, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1650
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_1

    .line 1651
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1660
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1664
    .end local v0           #af:Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 1653
    .restart local v0       #af:Ljava/io/RandomAccessFile;
    :cond_1
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1655
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1656
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1661
    .end local v0           #af:Ljava/io/RandomAccessFile;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1662
    .local v1, e:Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Unable to write token file:"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
