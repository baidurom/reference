.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# static fields
.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final DBG:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final MIN_USER_ID:I = 0xa

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final USER_INFO_DIR:Ljava/lang/String; = null

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_VERSION:I = 0x2

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final mBaseUserPath:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mGuestEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private mNextSerialNumber:I

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field private mSwitchedUserId:I

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "context"
    .parameter "pm"
    .parameter "installLock"
    .parameter "packagesLock"

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "user"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 146
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .parameter "context"
    .parameter "pm"
    .parameter "installLock"
    .parameter "packagesLock"
    .parameter "dataDir"
    .parameter "baseUserPath"

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 106
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 113
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 118
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 119
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/pm/UserManagerService;->mSwitchedUserId:I

    .line 154
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 156
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    .line 157
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 158
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 159
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6

    .line 160
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    :try_start_1
    new-instance v5, Ljava/io/File;

    sget-object v8, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 162
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 164
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string v8, "0"

    invoke-direct {v4, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v4, userZeroDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 166
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserPath:Ljava/io/File;

    .line 167
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x1fd

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v5, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 171
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string v9, "userlist.xml"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 172
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLocked()V

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v2, partials:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 176
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 177
    .local v3, ui:Landroid/content/pm/UserInfo;
    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v3           #ui:Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 182
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 183
    .restart local v3       #ui:Landroid/content/pm/UserInfo;
    const-string v5, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing partially created user #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    .end local v3           #ui:Landroid/content/pm/UserInfo;
    :cond_2
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 188
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    return-void

    .line 188
    .end local v1           #i:I
    .end local v2           #partials:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v4           #userZeroDir:Ljava/io/File;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 189
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .parameter "dataDir"
    .parameter "baseUserPath"

    .prologue
    const/4 v1, 0x0

    .line 133
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 364
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 365
    .local v0, uid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_0
    return-void
.end method

.method private fallbackToSingleUserLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 529
    new-instance v0, Landroid/content/pm/UserInfo;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #string@owner_name#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 532
    .local v0, primary:Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 534
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 536
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 537
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 538
    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .prologue
    .line 124
    const-class v1, Lcom/android/server/pm/UserManagerService;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getNextAvailableIdLocked()I
    .locals 3

    .prologue
    .line 954
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 955
    const/16 v0, 0xa

    .line 956
    .local v0, i:I
    :goto_0
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 962
    :cond_0
    monitor-exit v2

    return v0

    .line 960
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    .locals 4
    .parameter "userId"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 224
    .local v0, ui:Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    .line 228
    .end local v0           #ui:Landroid/content/pm/UserInfo;
    :cond_0
    return-object v0
.end method

.method private isUserLimitReachedLocked()Z
    .locals 2

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 352
    .local v0, nUsers:I
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 3
    .parameter "parser"
    .parameter "attr"
    .parameter "defaultValue"

    .prologue
    .line 705
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, valueString:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 710
    .end local p3
    :goto_0
    return p3

    .line 708
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .parameter "parser"
    .parameter "attr"
    .parameter "defaultValue"

    .prologue
    .line 715
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, valueString:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 720
    .end local p3
    :goto_0
    return-wide p3

    .line 718
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private readUser(I)Landroid/content/pm/UserInfo;
    .locals 24
    .parameter "id"

    .prologue
    .line 631
    const/4 v7, 0x0

    .line 632
    .local v7, flags:I
    move/from16 v14, p1

    .line 633
    .local v14, serialNumber:I
    const/4 v11, 0x0

    .line 634
    .local v11, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 635
    .local v8, iconPath:Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 636
    .local v4, creationTime:J
    const-wide/16 v9, 0x0

    .line 637
    .local v9, lastLoggedInTime:J
    const/4 v13, 0x0

    .line 639
    .local v13, partial:Z
    const/4 v6, 0x0

    .line 641
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v17, Landroid/util/AtomicFile;

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".xml"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 643
    .local v17, userFile:Landroid/util/AtomicFile;
    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .line 644
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 645
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-interface {v12, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 648
    :cond_0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, type:I
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 652
    :cond_1
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 653
    const-string v20, "UserManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to read user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 654
    const/16 v18, 0x0

    .line 694
    if-eqz v6, :cond_2

    .line 696
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 701
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #type:I
    .end local v17           #userFile:Landroid/util/AtomicFile;
    :cond_2
    :goto_0
    return-object v18

    .line 657
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #type:I
    .restart local v17       #userFile:Landroid/util/AtomicFile;
    :cond_3
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    :try_start_2
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "user"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 658
    const-string v20, "id"

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 659
    .local v15, storedId:I
    move/from16 v0, p1

    if-eq v15, v0, :cond_4

    .line 660
    const-string v20, "UserManagerService"

    const-string v21, "User id does not match the file name"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3

    .line 661
    const/16 v18, 0x0

    .line 694
    if-eqz v6, :cond_2

    .line 696
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 697
    :catch_0
    move-exception v20

    goto :goto_0

    .line 663
    :cond_4
    :try_start_4
    const-string v20, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 664
    const-string v20, "flags"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 665
    const/16 v20, 0x0

    const-string v21, "icon"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 666
    const-string v20, "created"

    const-wide/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 667
    const-string v20, "lastLoggedIn"

    const-wide/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 668
    const/16 v20, 0x0

    const-string v21, "partial"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 669
    .local v19, valueString:Ljava/lang/String;
    const-string v20, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 670
    const/4 v13, 0x1

    .line 674
    :cond_5
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 676
    :cond_6
    const/16 v20, 0x2

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "name"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 677
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .line 678
    const/16 v20, 0x4

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 679
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    .line 684
    .end local v15           #storedId:I
    .end local v19           #valueString:Ljava/lang/String;
    :cond_7
    new-instance v18, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-direct {v0, v1, v11, v8, v7}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 685
    .local v18, userInfo:Landroid/content/pm/UserInfo;
    move-object/from16 v0, v18

    iput v14, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 686
    move-object/from16 v0, v18

    iput-wide v4, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 687
    move-object/from16 v0, v18

    iput-wide v9, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 688
    move-object/from16 v0, v18

    iput-boolean v13, v0, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3

    .line 694
    if-eqz v6, :cond_2

    .line 696
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 697
    :catch_1
    move-exception v20

    goto/16 :goto_0

    .line 691
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #type:I
    .end local v17           #userFile:Landroid/util/AtomicFile;
    .end local v18           #userInfo:Landroid/content/pm/UserInfo;
    :catch_2
    move-exception v20

    .line 694
    if-eqz v6, :cond_8

    .line 696
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 701
    :cond_8
    :goto_1
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 692
    :catch_3
    move-exception v20

    .line 694
    if-eqz v6, :cond_8

    .line 696
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 697
    :catch_4
    move-exception v20

    goto :goto_1

    .line 694
    :catchall_0
    move-exception v20

    if-eqz v6, :cond_9

    .line 696
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 698
    :cond_9
    :goto_2
    throw v20

    .line 697
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #type:I
    .restart local v17       #userFile:Landroid/util/AtomicFile;
    :catch_5
    move-exception v20

    goto/16 :goto_0

    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v16           #type:I
    .end local v17           #userFile:Landroid/util/AtomicFile;
    :catch_6
    move-exception v20

    goto :goto_1

    :catch_7
    move-exception v21

    goto :goto_2
.end method

.method private readUserList()V
    .locals 2

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLocked()V

    .line 422
    monitor-exit v1

    .line 423
    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readUserListLocked()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 426
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    .line 427
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 428
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    const/4 v0, 0x0

    .line 432
    .local v0, fis:Ljava/io/FileInputStream;
    new-instance v8, Landroid/util/AtomicFile;

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v8, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 434
    .local v8, userListFile:Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 435
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 436
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v4, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 439
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, type:I
    if-eq v6, v13, :cond_3

    if-ne v6, v12, :cond_2

    .line 443
    :cond_3
    if-eq v6, v13, :cond_4

    .line 444
    const-string v10, "UserManagerService"

    const-string v11, "Unable to read user list"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4

    .line 484
    if-eqz v0, :cond_0

    .line 486
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v10

    goto :goto_0

    .line 449
    :cond_4
    const/4 v10, -0x1

    :try_start_2
    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 450
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "users"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 451
    const/4 v10, 0x0

    const-string v11, "nextSerialNumber"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, lastSerialNumber:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 453
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 455
    :cond_5
    const/4 v10, 0x0

    const-string v11, "version"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 456
    .local v9, versionNumber:Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 457
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 461
    .end local v3           #lastSerialNumber:Ljava/lang/String;
    .end local v9           #versionNumber:Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v12, :cond_9

    .line 462
    if-ne v6, v13, :cond_6

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "user"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 463
    const/4 v10, 0x0

    const-string v11, "id"

    invoke-interface {v4, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, id:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/pm/UserManagerService;->readUser(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 466
    .local v7, user:Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_6

    .line 467
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 469
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    .line 471
    :cond_7
    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v10, :cond_8

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    if-gt v10, v11, :cond_6

    .line 472
    :cond_8
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 479
    .end local v1           #id:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    .end local v7           #user:Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v2

    .line 480
    .local v2, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 484
    if-eqz v0, :cond_0

    .line 486
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 487
    :catch_2
    move-exception v10

    goto/16 :goto_0

    .line 477
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:I
    :cond_9
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 478
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessary()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4

    .line 484
    if-eqz v0, :cond_0

    .line 486
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 487
    :catch_3
    move-exception v10

    goto/16 :goto_0

    .line 481
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    :catch_4
    move-exception v5

    .line 482
    .local v5, pe:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 484
    if-eqz v0, :cond_0

    .line 486
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 487
    :catch_5
    move-exception v10

    goto/16 :goto_0

    .line 484
    .end local v5           #pe:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v10

    if-eqz v0, :cond_a

    .line 486
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 488
    :cond_a
    :goto_2
    throw v10

    .line 487
    :catch_6
    move-exception v11

    goto :goto_2
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 7
    .parameter "parent"

    .prologue
    .line 869
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 870
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, files:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 872
    .local v2, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 873
    .local v1, child:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 871
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 876
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #child:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #files:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 877
    return-void
.end method

.method private removeUserStateLocked(I)V
    .locals 5
    .parameter "userHandle"

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUserLILPw(I)V

    .line 845
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 850
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 860
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 861
    .local v0, userFile:Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 863
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 864
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 865
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 866
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, changedIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 278
    return-void
.end method

.method private updateUserIdsLocked()V
    .locals 6

    .prologue
    .line 910
    const/4 v4, 0x0

    .line 911
    .local v4, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 912
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_0

    .line 913
    add-int/lit8 v4, v4, 0x1

    .line 911
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 916
    :cond_1
    new-array v3, v4, [I

    .line 917
    .local v3, newUsers:[I
    const/4 v1, 0x0

    .line 918
    .local v1, n:I
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 919
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_2

    .line 920
    add-int/lit8 v2, v1, 0x1

    .end local v1           #n:I
    .local v2, n:I
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    .line 918
    .end local v2           #n:I
    .restart local v1       #n:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 923
    :cond_3
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 924
    return-void
.end method

.method private upgradeIfNecessary()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 497
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 498
    .local v1, userVersion:I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 501
    .local v0, user:Landroid/content/pm/UserInfo;
    const-string v2, "Primary"

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #string@owner_name#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 503
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 505
    :cond_0
    const/4 v1, 0x1

    .line 508
    .end local v0           #user:Landroid/content/pm/UserInfo;
    :cond_1
    if-ge v1, v5, :cond_3

    .line 510
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 511
    .restart local v0       #user:Landroid/content/pm/UserInfo;
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_2

    .line 512
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 513
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 515
    :cond_2
    const/4 v1, 0x2

    .line 518
    .end local v0           #user:Landroid/content/pm/UserInfo;
    :cond_3
    if-ge v1, v5, :cond_4

    .line 519
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " didn\'t upgrade as expected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_0
    return-void

    .line 522
    :cond_4
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 523
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    goto :goto_0
.end method

.method private writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "info"
    .parameter "bitmap"

    .prologue
    .line 375
    if-nez p2, :cond_0

    .line 376
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 402
    :goto_0
    return-void

    .line 381
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    .local v0, dir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "photo.png"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 383
    .local v2, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 391
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v3, os:Ljava/io/FileOutputStream;
    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 396
    :catch_0
    move-exception v4

    goto :goto_0

    .line 399
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 400
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "UserManagerService"

    const-string v5, "Error setting photo for user "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeUserListLocked()V
    .locals 10

    .prologue
    .line 597
    const/4 v2, 0x0

    .line 598
    .local v2, fos:Ljava/io/FileOutputStream;
    new-instance v6, Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 600
    .local v6, userListFile:Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 601
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 604
    .local v0, bos:Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 605
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v4, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 606
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 607
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 609
    const/4 v7, 0x0

    const-string v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    const/4 v7, 0x0

    const-string v8, "nextSerialNumber"

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    const/4 v7, 0x0

    const-string v8, "version"

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 613
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 614
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 615
    .local v5, user:Landroid/content/pm/UserInfo;
    const/4 v7, 0x0

    const-string v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    const/4 v7, 0x0

    const-string v8, "id"

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 617
    const/4 v7, 0x0

    const-string v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 613
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 620
    .end local v5           #user:Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v7, 0x0

    const-string v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 622
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 623
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #i:I
    .end local v4           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    .line 624
    :catch_0
    move-exception v1

    .line 625
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 626
    const-string v7, "UserManagerService"

    const-string v8, "Error writing user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeUserLocked(Landroid/content/pm/UserInfo;)V
    .locals 9
    .parameter "userInfo"

    .prologue
    .line 548
    const/4 v1, 0x0

    .line 549
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 551
    .local v4, userFile:Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 552
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 555
    .local v0, bos:Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 556
    .local v3, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 557
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 558
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 560
    const/4 v5, 0x0

    const-string v6, "user"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    const/4 v5, 0x0

    const-string v6, "id"

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    const/4 v5, 0x0

    const-string v6, "serialNumber"

    iget v7, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 563
    const/4 v5, 0x0

    const-string v6, "flags"

    iget v7, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    const/4 v5, 0x0

    const-string v6, "created"

    iget-wide v7, p1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    const/4 v5, 0x0

    const-string v6, "lastLoggedIn"

    iget-wide v7, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    iget-object v5, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 568
    const/4 v5, 0x0

    const-string v6, "icon"

    iget-object v7, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    :cond_0
    iget-boolean v5, p1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_1

    .line 571
    const/4 v5, 0x0

    const-string v6, "partial"

    const-string v7, "true"

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    :cond_1
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    iget-object v5, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    const/4 v5, 0x0

    const-string v6, "user"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 581
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v2

    .line 583
    .local v2, ioe:Ljava/lang/Exception;
    const-string v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing user info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 13
    .parameter "name"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    .line 726
    const-string v8, "Only the system can create users"

    invoke-static {v8}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 728
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 731
    .local v1, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 732
    :try_start_1
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 733
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReachedLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 758
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    :goto_0
    return-object v6

    .line 734
    :cond_0
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableIdLocked()I

    move-result v5

    .line 735
    .local v5, userId:I
    new-instance v6, Landroid/content/pm/UserInfo;

    const/4 v8, 0x0

    invoke-direct {v6, v5, p1, v8, p2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 736
    .local v6, userInfo:Landroid/content/pm/UserInfo;
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 737
    .local v7, userPath:Ljava/io/File;
    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v11, v8, 0x1

    iput v11, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v8, v6, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 739
    .local v3, now:J
    const-wide v11, 0xdc46c32800L

    cmp-long v8, v3, v11

    if-lez v8, :cond_2

    .end local v3           #now:J
    :goto_1
    iput-wide v3, v6, Landroid/content/pm/UserInfo;->creationTime:J

    .line 740
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/content/pm/UserInfo;->partial:Z

    .line 741
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 742
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 743
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 744
    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 745
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v8, v5, v7}, Lcom/android/server/pm/PackageManagerService;->createNewUserLILPw(ILjava/io/File;)V

    .line 746
    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/content/pm/UserInfo;->partial:Z

    .line 747
    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 748
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 749
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 750
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 751
    if-eqz v6, :cond_1

    .line 752
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.USER_ADDED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v0, addedIntent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.user_handle"

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v10, "android.permission.MANAGE_USERS"

    invoke-virtual {v8, v0, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 758
    .end local v0           #addedIntent:Landroid/content/Intent;
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 739
    .restart local v3       #now:J
    :cond_2
    const-wide/16 v3, 0x0

    goto :goto_1

    .line 749
    .end local v3           #now:J
    .end local v5           #userId:I
    .end local v6           #userInfo:Landroid/content/pm/UserInfo;
    .end local v7           #userPath:Ljava/io/File;
    :catchall_0
    move-exception v8

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v8

    .line 750
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 758
    :catchall_2
    move-exception v8

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-wide/16 v9, 0x0

    .line 968
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump UserManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    :goto_0
    return-void

    .line 978
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 979
    .local v1, now:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 981
    :try_start_0
    const-string v5, "Users:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 983
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 984
    .local v4, user:Landroid/content/pm/UserInfo;
    if-nez v4, :cond_1

    .line 982
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 985
    :cond_1
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " serialNo="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 986
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, " <removing> "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 987
    :cond_2
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_3

    const-string v5, " <partial>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 988
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 989
    const-string v5, "    Created: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 990
    iget-wide v7, v4, Landroid/content/pm/UserInfo;->creationTime:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_4

    .line 991
    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    :goto_3
    const-string v5, "    Last logged in: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 999
    iget-wide v7, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_5

    .line 1000
    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1008
    .end local v0           #i:I
    .end local v4           #user:Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 993
    .restart local v0       #i:I
    .restart local v4       #user:Landroid/content/pm/UserInfo;
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 994
    iget-wide v7, v4, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v7, v1, v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 995
    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 1002
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1003
    iget-wide v7, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    sub-long v7, v1, v7

    invoke-static {v7, v8, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1004
    const-string v5, " ago"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 1008
    .end local v4           #user:Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public exists(I)Z
    .locals 2
    .parameter "userId"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method finishRemoveUser(I)V
    .locals 11
    .parameter "userHandle"

    .prologue
    .line 807
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 809
    .local v9, ident:J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    .local v1, addedIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 811
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USERS"

    new-instance v4, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    return-void

    .line 836
    .end local v1           #addedIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getSwitchedUserId()I
    .locals 3

    .prologue
    .line 902
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSwitchedUserId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mSwitchedUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mSwitchedUserId:I

    return v0
.end method

.method public getUserHandle(I)I
    .locals 6
    .parameter "userSerialNumber"

    .prologue
    .line 889
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 891
    .local v3, userId:I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v4, p1, :cond_0

    monitor-exit v5

    .line 894
    .end local v3           #userId:I
    :goto_1
    return v3

    .line 890
    .restart local v3       #userId:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    .end local v3           #userId:I
    :cond_1
    const/4 v3, -0x1

    monitor-exit v5

    goto :goto_1

    .line 895
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "userId"

    .prologue
    const/4 v1, 0x0

    .line 282
    const-string v2, "read users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 284
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 285
    .local v0, info:Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 286
    :cond_0
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    monitor-exit v2

    .line 292
    :goto_0
    return-object v1

    .line 289
    :cond_1
    iget-object v3, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 290
    monitor-exit v2

    goto :goto_0

    .line 293
    .end local v0           #info:Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 292
    .restart local v0       #info:Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_1
    iget-object v1, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getUserIds()[I
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v1

    return-object v0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getUserIdsLPr()[I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    return-object v0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .parameter "userId"

    .prologue
    .line 212
    const-string v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserSerialNumber(I)I
    .locals 2
    .parameter "userHandle"

    .prologue
    .line 881
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 883
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    monitor-exit v1

    goto :goto_0

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 6
    .parameter "excludeDying"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    const-string v3, "query users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 195
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 196
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v2, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 198
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 199
    .local v1, ui:Landroid/content/pm/UserInfo;
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 197
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    .end local v0           #i:I
    .end local v1           #ui:Landroid/content/pm/UserInfo;
    .end local v2           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 206
    .restart local v0       #i:I
    .restart local v2       #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public isGuestEnabled()Z
    .locals 2

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    monitor-exit v1

    return v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeInitialized(I)V
    .locals 5
    .parameter "userId"

    .prologue
    .line 334
    const-string v1, "makeInitialized"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 337
    .local v0, info:Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    const-string v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeInitialized: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    .line 341
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 342
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 344
    :cond_2
    monitor-exit v2

    .line 345
    return-void

    .line 344
    .end local v0           #info:Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUser(I)Z
    .locals 8
    .parameter "userHandle"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 769
    const-string v5, "Only the system can remove users"

    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 771
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 772
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 773
    .local v2, user:Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    .line 774
    :cond_0
    monitor-exit v5

    .line 800
    :goto_0
    return v4

    .line 776
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 780
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/content/pm/UserInfo;->partial:Z

    .line 781
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 782
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v5, p1, v6}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 800
    .local v1, res:I
    if-nez v1, :cond_2

    :goto_1
    move v4, v3

    goto :goto_0

    .line 782
    .end local v1           #res:I
    .end local v2           #user:Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 796
    .restart local v2       #user:Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .line 797
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #res:I
    :cond_2
    move v3, v4

    .line 800
    goto :goto_1
.end method

.method public setGuestEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 298
    const-string v2, "enable guest users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 300
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    if-eq v2, p1, :cond_3

    .line 301
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mGuestEnabled:Z

    .line 303
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 305
    .local v1, user:Landroid/content/pm/UserInfo;
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    if-nez p1, :cond_0

    .line 307
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 309
    :cond_0
    monitor-exit v3

    .line 318
    .end local v0           #i:I
    .end local v1           #user:Landroid/content/pm/UserInfo;
    :goto_1
    return-void

    .line 303
    .restart local v0       #i:I
    .restart local v1       #user:Landroid/content/pm/UserInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v1           #user:Landroid/content/pm/UserInfo;
    :cond_2
    if-eqz p1, :cond_3

    .line 314
    const-string v2, "Guest"

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/pm/UserManagerService;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    .line 317
    .end local v0           #i:I
    :cond_3
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter "userId"
    .parameter "bitmap"

    .prologue
    .line 260
    const-string v1, "update users"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 263
    .local v0, info:Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    const-string v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUserIcon: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    monitor-exit v2

    .line 271
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 268
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 269
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    goto :goto_0

    .line 269
    .end local v0           #info:Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 6
    .parameter "userId"
    .parameter "name"

    .prologue
    .line 239
    const-string v2, "rename users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 243
    .local v1, info:Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_2

    .line 244
    :cond_0
    const-string v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    monitor-exit v3

    .line 256
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 248
    iput-object p2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 249
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 250
    const/4 v0, 0x1

    .line 252
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    if-eqz v0, :cond_1

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    goto :goto_0

    .line 252
    .end local v1           #info:Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public userForeground(I)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 931
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 932
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 933
    .local v2, user:Landroid/content/pm/UserInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 934
    .local v0, now:J
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 935
    :cond_0
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "userForeground: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    monitor-exit v4

    .line 945
    :goto_0
    return-void

    .line 938
    :cond_1
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Swtich User Id from"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/pm/UserManagerService;->mSwitchedUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mSwitchedUserId:I

    .line 940
    const-wide v5, 0xdc46c32800L

    cmp-long v3, v0, v5

    if-lez v3, :cond_2

    .line 941
    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 942
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 944
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0           #now:J
    .end local v2           #user:Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public wipeUser(I)V
    .locals 1
    .parameter "userHandle"

    .prologue
    .line 329
    const-string v0, "wipe user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 331
    return-void
.end method
