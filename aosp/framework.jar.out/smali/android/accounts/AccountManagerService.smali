.class public Landroid/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManagerService$DatabaseHelper;,
        Landroid/accounts/AccountManagerService$MessageHandler;,
        Landroid/accounts/AccountManagerService$Session;,
        Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Landroid/accounts/AccountManagerService$RemoveAccountSession;,
        Landroid/accounts/AccountManagerService$TestFeaturesSession;,
        Landroid/accounts/AccountManagerService$UserAccounts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent; = null

.field private static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field private static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field private static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field private static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field private static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String; = null

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String; = null

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account; = null

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field private static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field private static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final META_KEY:Ljava/lang/String; = "key"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final SELECTION_AUTHTOKENS_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SELECTION_USERDATA_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field private static final TABLE_META:Ljava/lang/String; = "meta"

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static final TIMEOUT_DELAY_MS:I = 0xea60

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

.field private final mContext:Landroid/content/Context;

.field private final mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

.field private mMessageThread:Landroid/os/HandlerThread;

.field private final mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    const-string v1, "count(type)"

    aput-object v1, v0, v3

    sput-object v0, Landroid/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 146
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    const-string v1, "authtoken"

    aput-object v1, v0, v3

    sput-object v0, Landroid/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    .line 151
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Landroid/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 187
    new-array v0, v2, [Landroid/accounts/Account;

    sput-object v0, Landroid/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 191
    sget-object v0, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/accounts/AccountAuthenticatorCache;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/accounts/IAccountAuthenticatorCache;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/accounts/IAccountAuthenticatorCache;)V
    .locals 4
    .parameter "context"
    .parameter "packageManager"
    .parameter "authenticatorCache"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 153
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 154
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 211
    iput-object p1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 212
    iput-object p2, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 214
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AccountManagerService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    .line 215
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 216
    new-instance v2, Landroid/accounts/AccountManagerService$MessageHandler;

    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/accounts/AccountManagerService$MessageHandler;-><init>(Landroid/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/accounts/AccountManagerService;->mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

    .line 218
    iput-object p3, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    .line 219
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 221
    sget-object v2, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/accounts/AccountManagerService$1;

    invoke-direct {v3, p0}, Landroid/accounts/AccountManagerService$1;-><init>(Landroid/accounts/AccountManagerService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v1, userFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/accounts/AccountManagerService$2;

    invoke-direct {v3, p0}, Landroid/accounts/AccountManagerService$2;-><init>(Landroid/accounts/AccountManagerService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    return-void
.end method

.method static synthetic access$000(Landroid/accounts/AccountManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->purgeOldGrantsAll()V

    return-void
.end method

.method static synthetic access$100(Landroid/accounts/AccountManagerService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p5}, Landroid/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManagerService;->saveAuthTokenToDatabase(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManagerService;->doNotification(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/accounts/AccountManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$MessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Landroid/accounts/AccountManagerService;)Landroid/accounts/IAccountAuthenticatorCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    return-object v0
.end method

.method static synthetic access$1900(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-static {p0}, Landroid/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->removeAccountInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    return-void
.end method

.method private addAccountInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 16
    .parameter "accounts"
    .parameter "account"
    .parameter "password"
    .parameter "extras"

    .prologue
    .line 508
    if-nez p2, :cond_0

    .line 509
    const/4 v1, 0x0

    .line 550
    :goto_0
    return v1

    .line 511
    :cond_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 512
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 513
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :try_start_1
    const-string/jumbo v1, "select count(*) from accounts WHERE name=? AND type=?"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v2, v1, v12}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v8

    .line 519
    .local v8, numMatches:J
    const-wide/16 v12, 0x0

    cmp-long v1, v8, v12

    if-lez v1, :cond_1

    .line 520
    const-string v1, "AccountManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertAccountIntoDatabase: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", skipping since the account already exists"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 522
    const/4 v1, 0x0

    .line 547
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 522
    monitor-exit v11

    goto :goto_0

    .line 551
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #numMatches:J
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 524
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #numMatches:J
    :cond_1
    :try_start_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 525
    .local v10, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string/jumbo v1, "type"

    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string/jumbo v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v1, "accounts"

    const-string/jumbo v12, "name"

    invoke-virtual {v2, v1, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 529
    .local v3, accountId:J
    const-wide/16 v12, 0x0

    cmp-long v1, v3, v12

    if-gez v1, :cond_2

    .line 530
    const-string v1, "AccountManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertAccountIntoDatabase: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", skipping the DB insert failed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 532
    const/4 v1, 0x0

    .line 547
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 532
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 534
    :cond_2
    if-eqz p4, :cond_4

    .line 535
    :try_start_5
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 536
    .local v5, key:Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, value:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 537
    invoke-direct/range {v1 .. v6}, Landroid/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-gez v1, :cond_3

    .line 538
    const-string v1, "AccountManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertAccountIntoDatabase: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", skipping since insertExtra failed for key "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 540
    const/4 v1, 0x0

    .line 547
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 540
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 544
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 545
    invoke-direct/range {p0 .. p2}, Landroid/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 547
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 549
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 550
    const/4 v1, 0x1

    monitor-exit v11

    goto/16 :goto_0

    .line 547
    .end local v3           #accountId:J
    .end local v8           #numMatches:J
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 2224
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.AUTHENTICATE_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2225
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkCallingUidAgainstAuthenticator(Landroid/accounts/Account;)V

    .line 2226
    return-void
.end method

.method private varargs checkBinderPermission([Ljava/lang/String;)V
    .locals 9
    .parameter "permissions"

    .prologue
    .line 2128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2130
    .local v5, uid:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 2131
    .local v4, perm:Ljava/lang/String;
    iget-object v6, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 2132
    const-string v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2133
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  caller uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_0
    return-void

    .line 2130
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2139
    .end local v4           #perm:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caller uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lacks any of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2140
    .local v3, msg:Ljava/lang/String;
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private checkCallingUidAgainstAuthenticator(Landroid/accounts/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 2212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2213
    .local v1, uid:I
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroid/accounts/AccountManagerService;->hasAuthenticatorUid(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2214
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different than the authenticator\'s uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2215
    .local v0, msg:Ljava/lang/String;
    const-string v2, "AccountManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2218
    .end local v0           #msg:Ljava/lang/String;
    :cond_1
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2219
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is the same as the authenticator\'s uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :cond_2
    return-void
.end method

.method private checkManageAccountsOrUseCredentialsPermissions()V
    .locals 3

    .prologue
    .line 2237
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_ACCOUNTS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.USE_CREDENTIALS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2239
    return-void
.end method

.method private checkManageAccountsPermission()V
    .locals 3

    .prologue
    .line 2233
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2234
    return-void
.end method

.method private checkReadAccountsPermission()V
    .locals 3

    .prologue
    .line 2229
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2230
    return-void
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;)V
    .locals 13
    .parameter "account"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 1152
    const-string/jumbo v8, "uid"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1154
    .local v7, uid:I
    const-string v8, "authTokenType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1156
    .local v1, authTokenType:Ljava/lang/String;
    const-string v8, "authTokenLabel"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, authTokenLabel:Ljava/lang/String;
    new-instance v3, Landroid/app/Notification;

    const v8, #drawable@stat_sys_warning#t

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1161
    .local v3, n:Landroid/app/Notification;
    iget-object v8, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const v9, #string@permission_request_notification_with_subtitle#t

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1164
    .local v6, titleAndSubtitle:Ljava/lang/String;
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1165
    .local v2, index:I
    move-object v5, v6

    .line 1166
    .local v5, title:Ljava/lang/String;
    const-string v4, ""

    .line 1167
    .local v4, subtitle:Ljava/lang/String;
    if-lez v2, :cond_0

    .line 1168
    invoke-virtual {v6, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1169
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1171
    :cond_0
    iget-object v8, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/high16 v10, 0x1000

    invoke-static {v9, v12, p2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v8, v5, v4, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1174
    invoke-direct {p0, p1, v1, v7}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8, v3}, Landroid/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;)V

    .line 1175
    return-void
.end method

.method private doNotification(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 10
    .parameter "accounts"
    .parameter "account"
    .parameter "message"
    .parameter "intent"

    .prologue
    .line 2083
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 2085
    .local v0, identityToken:J
    :try_start_0
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2086
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doNotification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :cond_0
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    const-class v5, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2092
    invoke-direct {p0, p2, p4}, Landroid/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2107
    :goto_0
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2109
    return-void

    .line 2094
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v3

    .line 2095
    .local v3, notificationId:Ljava/lang/Integer;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2096
    new-instance v2, Landroid/app/Notification;

    const v5, #drawable@stat_sys_warning#t

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2098
    .local v2, n:Landroid/app/Notification;
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const v6, #string@notification_title#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2100
    .local v4, notificationTitleFormat:Ljava/lang/String;
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x1000

    invoke-static {v7, v8, p4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v2, v5, v6, p3, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2104
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v2}, Landroid/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2107
    .end local v2           #n:Landroid/app/Notification;
    .end local v3           #notificationId:Ljava/lang/Integer;
    .end local v4           #notificationTitleFormat:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private dumpUser(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 21
    .parameter "userAccounts"
    .parameter "fd"
    .parameter "fout"
    .parameter "args"
    .parameter "isCheckinRequest"

    .prologue
    .line 2042
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 2043
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2045
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p5, :cond_1

    .line 2047
    const-string v4, "accounts"

    sget-object v5, Landroid/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "type"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 2050
    .local v14, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2055
    :catchall_0
    move-exception v4

    if-eqz v14, :cond_0

    .line 2056
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2055
    :cond_0
    throw v4

    .line 2078
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v14           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 2060
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v12

    .line 2061
    .local v12, accounts:[Landroid/accounts/Account;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accounts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v12

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2062
    move-object v13, v12

    .local v13, arr$:[Landroid/accounts/Account;
    array-length v0, v13

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    aget-object v11, v13, v15

    .line 2063
    .local v11, account:Landroid/accounts/Account;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2062
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2066
    .end local v11           #account:Landroid/accounts/Account;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2067
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2068
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 2069
    .local v17, now:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active Sessions: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/accounts/AccountManagerService$Session;

    .line 2071
    .local v19, session:Landroid/accounts/AccountManagerService$Session;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2073
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #now:J
    .end local v19           #session:Landroid/accounts/AccountManagerService$Session;
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v17       #now:J
    :cond_3
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2075
    :try_start_7
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2076
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v4, v0, v1, v2}, Landroid/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2078
    .end local v12           #accounts:[Landroid/accounts/Account;
    .end local v13           #arr$:[Landroid/accounts/Account;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #len$:I
    .end local v17           #now:J
    :cond_4
    :goto_3
    monitor-exit v20

    .line 2079
    return-void

    .line 2055
    .restart local v14       #cursor:Landroid/database/Cursor;
    :cond_5
    if-eqz v14, :cond_4

    .line 2056
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3
.end method

.method private getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .locals 9
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1574
    const-string v1, "accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1577
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1582
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1580
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1582
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getAllUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getUsers()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    .line 387
    :catch_0
    move-exception v0

    .line 390
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 6
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    .line 1221
    invoke-static {p3}, Landroid/os/UserId;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1222
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 1223
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1226
    .local v2, key:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1227
    .local v1, id:Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 1228
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1229
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    :cond_0
    monitor-exit v4

    .line 1232
    return-object v1

    .line 1231
    .end local v1           #id:Ljava/lang/Integer;
    .end local v2           #key:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static getDatabaseName(I)Ljava/lang/String;
    .locals 7
    .parameter "userId"

    .prologue
    .line 1877
    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    .line 1878
    .local v2, systemDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "accounts.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1879
    .local v0, databaseFile:Ljava/io/File;
    if-nez p0, :cond_1

    .line 1884
    new-instance v1, Ljava/io/File;

    const-string v4, "accounts.db"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1885
    .local v1, oldFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1887
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1888
    .local v3, userDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1889
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1890
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User dir cannot be created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1893
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1894
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User dir cannot be migrated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1898
    .end local v1           #oldFile:Ljava/io/File;
    .end local v3           #userDir:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J
    .locals 9
    .parameter "db"
    .parameter "accountId"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1587
    const-string v1, "extras"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accounts_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "key"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p4, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1591
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1596
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1594
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1596
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSigninRequiredNotificationId(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 3
    .parameter "accounts"
    .parameter "account"

    .prologue
    .line 1237
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$1300(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 1238
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$1300(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1239
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1240
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1241
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$1300(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    :cond_0
    monitor-exit v2

    .line 1244
    return-object v0

    .line 1243
    .end local v0           #id:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSingleton()Landroid/accounts/AccountManagerService;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerService;

    return-object v0
.end method

.method private getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    return-object v0
.end method

.method private grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 9
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    .line 2264
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2265
    :cond_0
    const-string v5, "AccountManagerService"

    const-string v6, "grantAppPermission: called with invalid arguments"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2287
    :goto_0
    return-void

    .line 2268
    :cond_1
    invoke-static {p3}, Landroid/os/UserId;->getUserId(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 2269
    .local v2, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2270
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2271
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2273
    :try_start_1
    invoke-direct {p0, v3, p1}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 2274
    .local v0, accountId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v0, v7

    if-ltz v5, :cond_2

    .line 2275
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2276
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "accounts_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2277
    const-string v5, "auth_token_type"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    const-string/jumbo v5, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2279
    const-string v5, "grants"

    const-string v7, "accounts_id"

    invoke-virtual {v3, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2280
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2283
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2285
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    .line 2286
    monitor-exit v6

    goto :goto_0

    .end local v0           #accountId:J
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2283
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private hasAuthenticatorUid(Ljava/lang/String;I)Z
    .locals 5
    .parameter "accountType"
    .parameter "callingUid"

    .prologue
    const/4 v3, 0x0

    .line 2177
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    invoke-interface {v2}, Landroid/accounts/IAccountAuthenticatorCache;->getAllServices()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2178
    .local v1, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2179
    iget v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-eq v2, p2, :cond_1

    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v4, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v2, v4, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 2184
    .end local v1           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :goto_0
    return v2

    .restart local v1       #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_2
    move v2, v3

    .line 2179
    goto :goto_0

    .end local v1           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_3
    move v2, v3

    .line 2184
    goto :goto_0
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 10
    .parameter "account"
    .parameter "authTokenType"
    .parameter "callerUid"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2189
    const/16 v5, 0x3e8

    if-ne p3, v5, :cond_0

    move v3, v4

    .line 2207
    :goto_0
    return v3

    .line 2192
    :cond_0
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2193
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2194
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2195
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x4

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x1

    aput-object p2, v1, v6

    const/4 v6, 0x2

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x3

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v1, v6

    .line 2197
    .local v1, args:[Ljava/lang/String;
    const-string v6, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    invoke-static {v2, v6, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    move v3, v4

    .line 2199
    .local v3, permissionGranted:Z
    :cond_1
    if-nez v3, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2202
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no credentials permission for usage of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but ignoring since device is in test harness."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .line 2207
    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 2208
    .end local v1           #args:[Ljava/lang/String;
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #permissionGranted:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private inSystemImage(I)Z
    .locals 10
    .parameter "callerUid"

    .prologue
    const/4 v7, 0x0

    .line 2145
    iget-object v8, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2146
    .local v6, packages:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 2148
    .local v4, name:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2149
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 2151
    const/4 v7, 0x1

    .line 2157
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    return v7

    .line 2153
    .restart local v4       #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2154
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 2146
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initUser(I)Landroid/accounts/AccountManagerService$UserAccounts;
    .locals 3
    .parameter "userId"

    .prologue
    .line 249
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 250
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerService$UserAccounts;

    .line 251
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    if-nez v0, :cond_0

    .line 252
    new-instance v0, Landroid/accounts/AccountManagerService$UserAccounts;

    .end local v0           #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;I)V

    .line 253
    .restart local v0       #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 254
    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->purgeOldGrants(Landroid/accounts/AccountManagerService$UserAccounts;)V

    .line 255
    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->validateAccountsAndPopulateCache(Landroid/accounts/AccountManagerService$UserAccounts;)V

    .line 257
    :cond_0
    monitor-exit v2

    return-object v0

    .line 258
    .end local v0           #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private insertAccountIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 6
    .parameter "accounts"
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 2352
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2353
    .local v0, accountsForType:[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    array-length v2, v0

    .line 2354
    .local v2, oldLength:I
    :goto_0
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Landroid/accounts/Account;

    .line 2355
    .local v1, newAccountsForType:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 2356
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2358
    :cond_0
    aput-object p2, v1, v2

    .line 2359
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    return-void

    .end local v1           #newAccountsForType:[Landroid/accounts/Account;
    .end local v2           #oldLength:I
    :cond_1
    move v2, v3

    .line 2353
    goto :goto_0
.end method

.method private insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "db"
    .parameter "accountId"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 555
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 556
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v1, "accounts_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 558
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v1, "extras"

    const-string v2, "key"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private invalidateAuthTokenLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "accounts"
    .parameter "db"
    .parameter "accountType"
    .parameter "authToken"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 755
    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    const-string v0, "SELECT authtokens._id, accounts.name, authtokens.type FROM accounts JOIN authtokens ON accounts._id = accounts_id WHERE authtoken = ? AND accounts.type = ?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v2

    aput-object p3, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 770
    .local v9, cursor:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 771
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 772
    .local v7, authTokenId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, accountName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 774
    .local v4, authTokenType:Ljava/lang/String;
    const-string v0, "authtokens"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 775
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v6, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 779
    .end local v4           #authTokenType:Ljava/lang/String;
    .end local v6           #accountName:Ljava/lang/String;
    .end local v7           #authTokenId:J
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "account"
    .parameter "uid"
    .parameter "response"
    .parameter "authTokenType"
    .parameter "authTokenLabel"

    .prologue
    .line 1202
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1206
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1207
    invoke-direct {p0, p1, p4, p2}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1211
    const-string v1, "authTokenType"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1213
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1215
    return-object v0
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 5
    .parameter "response"
    .parameter "result"

    .prologue
    const/4 v4, 0x2

    .line 974
    if-nez p2, :cond_0

    .line 975
    const-string v1, "AccountManagerService"

    const-string/jumbo v2, "the result is unexpectedly null"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    :cond_0
    const-string v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 978
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :cond_2
    :goto_0
    return-void

    .line 983
    :catch_0
    move-exception v0

    .line 986
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 987
    const-string v1, "AccountManagerService"

    const-string v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 363
    const-string v3, "android.intent.extra.user_id"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 364
    .local v2, userId:I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 382
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v4

    .line 368
    :try_start_0
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerService$UserAccounts;

    .line 369
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 370
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    if-nez v0, :cond_1

    .line 372
    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Landroid/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, dbFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 370
    .end local v0           #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    .end local v1           #dbFile:Ljava/io/File;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 377
    .restart local v0       #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    :cond_1
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 378
    :try_start_2
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;->close()V

    .line 379
    new-instance v1, Ljava/io/File;

    invoke-static {v2}, Landroid/accounts/AccountManagerService;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .restart local v1       #dbFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 381
    monitor-exit v4

    goto :goto_0

    .end local v1           #dbFile:Ljava/io/File;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 8
    .parameter "account"
    .parameter "authTokenType"
    .parameter "callerUid"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2161
    invoke-direct {p0, p3}, Landroid/accounts/AccountManagerService;->inSystemImage(I)Z

    move-result v2

    .line 2162
    .local v2, inSystemImage:Z
    if-eqz p1, :cond_3

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5, p3}, Landroid/accounts/AccountManagerService;->hasAuthenticatorUid(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 2164
    .local v0, fromAuthenticator:Z
    :goto_0
    if-eqz p1, :cond_4

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v3

    .line 2166
    .local v1, hasExplicitGrants:Z
    :goto_1
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2167
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkGrantsOrCallingUidAgainstAuthenticator: caller uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": is authenticator? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", has explicit permission? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    .end local v0           #fromAuthenticator:Z
    .end local v1           #hasExplicitGrants:Z
    :cond_3
    move v0, v4

    .line 2162
    goto :goto_0

    .restart local v0       #fromAuthenticator:Z
    :cond_4
    move v1, v4

    .line 2164
    goto :goto_1
.end method

.method private purgeOldGrants(Landroid/accounts/AccountManagerService$UserAccounts;)V
    .locals 14
    .parameter "accounts"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 270
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 271
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 272
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "grants"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "uid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "uid"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 276
    .local v8, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 278
    .local v10, uid:I
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v9, v11

    .line 279
    .local v9, packageExists:Z
    :goto_1
    if-nez v9, :cond_0

    .line 282
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting grants for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because its package is no longer installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v1, "grants"

    const-string/jumbo v2, "uid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    .end local v9           #packageExists:Z
    .end local v10           #uid:I
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 290
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #uid:I
    :cond_1
    move v9, v12

    .line 278
    goto :goto_1

    .line 288
    .end local v10           #uid:I
    :cond_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 290
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 291
    return-void
.end method

.method private purgeOldGrantsAll()V
    .locals 3

    .prologue
    .line 262
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManagerService$UserAccounts;

    invoke-direct {p0, v1}, Landroid/accounts/AccountManagerService;->purgeOldGrants(Landroid/accounts/AccountManagerService$UserAccounts;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    monitor-exit v2

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readPasswordInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 11
    .parameter "accounts"
    .parameter "account"

    .prologue
    const/4 v9, 0x0

    .line 424
    if-nez p2, :cond_0

    move-object v1, v9

    .line 437
    :goto_0
    return-object v1

    .line 428
    :cond_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 429
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 430
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "accounts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "password"

    aput-object v4, v2, v3

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 434
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 439
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 435
    monitor-exit v10

    goto :goto_0

    .line 441
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 439
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 437
    monitor-exit v10

    move-object v1, v9

    goto :goto_0

    .line 439
    :catchall_1
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private removeAccountFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 9
    .parameter "accounts"
    .parameter "account"

    .prologue
    .line 2328
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/accounts/Account;

    .line 2329
    .local v6, oldAccountsForType:[Landroid/accounts/Account;
    if-eqz v6, :cond_2

    .line 2330
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2331
    .local v5, newAccountsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v0, v6

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2332
    .local v1, curAccount:Landroid/accounts/Account;
    invoke-virtual {v1, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2333
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2331
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2336
    .end local v1           #curAccount:Landroid/accounts/Account;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2337
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2344
    .end local v0           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #newAccountsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_2
    :goto_1
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2345
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    return-void

    .line 2339
    .restart local v0       #arr$:[Landroid/accounts/Account;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #newAccountsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Landroid/accounts/Account;

    .line 2340
    .local v4, newAccountsForType:[Landroid/accounts/Account;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #newAccountsForType:[Landroid/accounts/Account;
    check-cast v4, [Landroid/accounts/Account;

    .line 2341
    .restart local v4       #newAccountsForType:[Landroid/accounts/Account;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private removeAccountInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 7
    .parameter "accounts"
    .parameter "account"

    .prologue
    .line 717
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 718
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 719
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "accounts"

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 721
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->removeAccountFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 722
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 723
    monitor-exit v2

    .line 724
    return-void

    .line 723
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 10
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    .line 2298
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2299
    :cond_0
    const-string v4, "AccountManagerService"

    const-string/jumbo v5, "revokeAppPermission: called with invalid arguments"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2321
    :goto_0
    return-void

    .line 2302
    :cond_1
    invoke-static {p3}, Landroid/os/UserId;->getUserId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 2303
    .local v2, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2304
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2305
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2307
    :try_start_1
    invoke-direct {p0, v3, p1}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 2308
    .local v0, accountId:J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-ltz v4, :cond_2

    .line 2309
    const-string v4, "grants"

    const-string v6, "accounts_id=? AND auth_token_type=? AND uid=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2314
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2317
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2319
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    .line 2320
    monitor-exit v5

    goto :goto_0

    .end local v0           #accountId:J
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2317
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private saveAuthTokenToDatabase(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "accounts"
    .parameter "account"
    .parameter "type"
    .parameter "authToken"

    .prologue
    .line 785
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 786
    :cond_0
    const/4 v0, 0x0

    .line 809
    :goto_0
    return v0

    .line 788
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    .line 789
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 790
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 791
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    :try_start_1
    invoke-direct {p0, v2, p2}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    .line 794
    .local v6, accountId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    .line 795
    const/4 v0, 0x0

    .line 811
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 795
    monitor-exit v9

    goto :goto_0

    .line 813
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #accountId:J
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 797
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6       #accountId:J
    :cond_2
    :try_start_3
    const-string v0, "authtokens"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accounts_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 800
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 801
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "accounts_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 802
    const-string/jumbo v0, "type"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v0, "authtoken"

    invoke-virtual {v8, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v0, "authtokens"

    const-string v1, "authtoken"

    invoke-virtual {v2, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_3

    .line 805
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 806
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 807
    const/4 v0, 0x1

    .line 811
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 807
    monitor-exit v9

    goto/16 :goto_0

    .line 809
    :cond_3
    const/4 v0, 0x0

    .line 811
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 809
    monitor-exit v9

    goto/16 :goto_0

    .line 811
    .end local v6           #accountId:J
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "args"
    .parameter "value"

    .prologue
    .line 2007
    if-eqz p0, :cond_1

    .line 2008
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 2009
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2010
    const/4 v4, 0x1

    .line 2014
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 2008
    .restart local v0       #arg:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2014
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 897
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accounts changed, sending broadcast of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;I)V

    .line 900
    return-void
.end method

.method private setPasswordInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 9
    .parameter "accounts"
    .parameter "account"
    .parameter "password"

    .prologue
    .line 872
    if-nez p2, :cond_0

    .line 894
    :goto_0
    return-void

    .line 875
    :cond_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 876
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 877
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 880
    .local v4, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-direct {p0, v3, p2}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 882
    .local v0, accountId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v0, v7

    if-ltz v5, :cond_1

    .line 883
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 884
    .local v2, argsAccountId:[Ljava/lang/String;
    const-string v5, "accounts"

    const-string v7, "_id=?"

    invoke-virtual {v3, v5, v4, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 885
    const-string v5, "authtokens"

    const-string v7, "accounts_id=?"

    invoke-virtual {v3, v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 886
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 890
    .end local v2           #argsAccountId:[Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 892
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 893
    monitor-exit v6

    goto :goto_0

    .end local v0           #accountId:J
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 890
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private setUserdataInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "accounts"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 940
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 944
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 945
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    :try_start_1
    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v3

    .line 948
    .local v3, accountId:J
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    .line 968
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 949
    monitor-exit v14

    goto :goto_0

    .line 970
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #accountId:J
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 951
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #accountId:J
    :cond_2
    :try_start_3
    move-object/from16 v0, p3

    invoke-direct {p0, v2, v3, v4, v0}, Landroid/accounts/AccountManagerService;->getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J

    move-result-wide v11

    .line 952
    .local v11, extrasId:J
    const-wide/16 v5, 0x0

    cmp-long v1, v11, v5

    if-gez v1, :cond_3

    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 953
    invoke-direct/range {v1 .. v6}, Landroid/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v11

    .line 954
    const-wide/16 v5, 0x0

    cmp-long v1, v11, v5

    if-gez v1, :cond_4

    .line 968
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 955
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 958
    :cond_3
    :try_start_5
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 959
    .local v13, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "value"

    move-object/from16 v0, p4

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const/4 v1, 0x1

    const-string v5, "extras"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v13, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    if-eq v1, v5, :cond_4

    .line 968
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 961
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v13           #values:Landroid/content/ContentValues;
    :cond_4
    move-object v5, p0

    move-object/from16 v6, p1

    move-object v7, v2

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 965
    :try_start_7
    invoke-virtual/range {v5 .. v10}, Landroid/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 968
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 970
    monitor-exit v14

    goto/16 :goto_0

    .line 968
    .end local v3           #accountId:J
    .end local v11           #extrasId:J
    :catchall_1
    move-exception v1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private static final stringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 2324
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateAccountsAndPopulateCache(Landroid/accounts/AccountManagerService$UserAccounts;)V
    .locals 25
    .parameter "accounts"

    .prologue
    .line 294
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 295
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 296
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 297
    .local v11, accountDeleted:Z
    const-string v3, "accounts"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v20

    .line 301
    .local v20, cursor:Landroid/database/Cursor;
    :try_start_1
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 302
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    .line 304
    .local v16, accountNamesByType:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 305
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 306
    .local v12, accountId:J
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 307
    .local v17, accountType:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 308
    .local v14, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    invoke-static/range {v17 .. v17}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 310
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no longer has a registered authenticator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v3, "accounts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    const/4 v11, 0x1

    .line 314
    new-instance v10, Landroid/accounts/Account;

    move-object/from16 v0, v17

    invoke-direct {v10, v14, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v10, account:Landroid/accounts/Account;
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 339
    .end local v10           #account:Landroid/accounts/Account;
    .end local v12           #accountId:J
    .end local v14           #accountName:Ljava/lang/String;
    .end local v16           #accountNamesByType:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v17           #accountType:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 340
    if-eqz v11, :cond_0

    .line 341
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 339
    :cond_0
    throw v3

    .line 344
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v11           #accountDeleted:Z
    .end local v20           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 318
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11       #accountDeleted:Z
    .restart local v12       #accountId:J
    .restart local v14       #accountName:Ljava/lang/String;
    .restart local v16       #accountNamesByType:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v17       #accountType:Ljava/lang/String;
    .restart local v20       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-virtual/range {v16 .. v17}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 319
    .local v15, accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v15, :cond_2

    .line 320
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .restart local v15       #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_2
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 327
    .end local v12           #accountId:J
    .end local v14           #accountName:Ljava/lang/String;
    .end local v15           #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #accountType:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 328
    .local v19, cur:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 329
    .restart local v17       #accountType:Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 330
    .restart local v15       #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/accounts/Account;

    move-object/from16 v18, v0

    .line 331
    .local v18, accountsForType:[Landroid/accounts/Account;
    const/16 v21, 0x0

    .line 332
    .local v21, i:I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 333
    .restart local v14       #accountName:Ljava/lang/String;
    new-instance v3, Landroid/accounts/Account;

    move-object/from16 v0, v17

    invoke-direct {v3, v14, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v18, v21

    .line 334
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 336
    .end local v14           #accountName:Ljava/lang/String;
    :cond_4
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 339
    .end local v15           #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #accountType:Ljava/lang/String;
    .end local v18           #accountsForType:[Landroid/accounts/Account;
    .end local v19           #cur:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v21           #i:I
    .end local v23           #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 340
    if-eqz v11, :cond_6

    .line 341
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$700(Landroid/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 344
    :cond_6
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 345
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "account"
    .parameter "password"
    .parameter "extras"

    .prologue
    .line 488
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAccount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    :cond_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 496
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 498
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 500
    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->addAccountInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 502
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 500
    return v3

    .line 502
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public addAcount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 16
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "expectActivityLaunch"
    .parameter "optionsIn"

    .prologue
    .line 1250
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount: accountType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", authTokenType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", requiredFeatures "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Landroid/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller\'s uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1260
    :cond_1
    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1261
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1263
    invoke-direct/range {p0 .. p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 1264
    .local v3, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1265
    .local v14, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1266
    .local v15, uid:I
    if-nez p6, :cond_3

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1267
    .local v10, options:Landroid/os/Bundle;
    :goto_0
    const-string v1, "callerUid"

    invoke-virtual {v10, v1, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1268
    const-string v1, "callerPid"

    invoke-virtual {v10, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1270
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v12

    .line 1272
    .local v12, identityToken:J
    :try_start_0
    new-instance v1, Landroid/accounts/AccountManagerService$5;

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Landroid/accounts/AccountManagerService$5;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$5;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    invoke-static {v12, v13}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1291
    return-void

    .end local v10           #options:Landroid/os/Bundle;
    .end local v12           #identityToken:J
    :cond_3
    move-object/from16 v10, p6

    .line 1266
    goto :goto_0

    .line 1289
    .restart local v10       #options:Landroid/os/Bundle;
    .restart local v12       #identityToken:J
    :catchall_0
    move-exception v1

    invoke-static {v12, v13}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method protected cancelNotification(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 2117
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 2119
    .local v0, identityToken:J
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2122
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2124
    return-void

    .line 2122
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 903
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 904
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearPassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 909
    :cond_1
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 910
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 911
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 913
    .local v1, identityToken:J
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v3}, Landroid/accounts/AccountManagerService;->setPasswordInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 917
    return-void

    .line 915
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public confirmCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;Z)V
    .locals 11
    .parameter "response"
    .parameter "account"
    .parameter "options"
    .parameter "expectActivityLaunch"

    .prologue
    .line 1295
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmCredentials: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1303
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1304
    :cond_2
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1305
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1306
    .local v2, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v9

    .line 1308
    .local v9, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$6;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move v5, p4

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManagerService$6;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$6;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    invoke-static {v9, v10}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1321
    return-void

    .line 1319
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 2018
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump AccountsManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    :goto_0
    return-void

    .line 2025
    :cond_0
    const-string v0, "--checkin"

    invoke-static {p3, v0}, Landroid/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-c"

    invoke-static {p3, v0}, Landroid/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v5, 0x1

    .line 2027
    .local v5, isCheckinRequest:Z
    :goto_1
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {v3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2028
    .end local p2
    .local v3, fout:Ljava/io/PrintWriter;
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 2029
    .local v7, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v7, :cond_4

    .line 2030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object v0, v3

    .line 2031
    check-cast v0, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2032
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManagerService$UserAccounts;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService;->dumpUser(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    move-object v0, v3

    .line 2033
    check-cast v0, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2034
    add-int/lit8 v0, v7, -0x1

    if-ge v6, v0, :cond_2

    .line 2035
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2029
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2025
    .end local v3           #fout:Ljava/io/PrintWriter;
    .end local v5           #isCheckinRequest:Z
    .end local v6           #i:I
    .end local v7           #size:I
    .restart local p2
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .end local p2
    .restart local v3       #fout:Ljava/io/PrintWriter;
    .restart local v5       #isCheckinRequest:Z
    .restart local v6       #i:I
    .restart local v7       #size:I
    :cond_4
    move-object p2, v3

    .line 2038
    .end local v3           #fout:Ljava/io/PrintWriter;
    .restart local p2
    goto :goto_0
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 10
    .parameter "response"
    .parameter "accountType"
    .parameter "expectActivityLaunch"

    .prologue
    .line 1361
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editProperties: accountType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1369
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1370
    :cond_2
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1371
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1372
    .local v2, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 1374
    .local v8, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$8;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AccountManagerService$8;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$8;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1385
    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1387
    return-void

    .line 1385
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method getAccountLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "accountType"

    .prologue
    .line 1178
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    .line 1181
    .local v2, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v2, :cond_0

    .line 1182
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1187
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1193
    .local v0, authContext:Landroid/content/Context;
    :try_start_1
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget v3, v3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 1189
    .end local v0           #authContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1190
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1194
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #authContext:Landroid/content/Context;
    :catch_1
    move-exception v1

    .line 1195
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getAccounts(I)[Landroid/accounts/Account;
    .locals 5
    .parameter "userId"

    .prologue
    .line 1487
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 1488
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1489
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1491
    .local v1, identityToken:J
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1492
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v3}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1495
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1492
    return-object v3

    .line 1493
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1495
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .parameter "type"

    .prologue
    .line 1525
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1526
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccounts: accountType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_0
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 1531
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1532
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1534
    .local v1, identityToken:J
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1535
    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1538
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1535
    return-object v3

    .line 1536
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1538
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "response"
    .parameter "type"
    .parameter "features"

    .prologue
    .line 1544
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1545
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccounts: accountType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", features "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1552
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1553
    :cond_2
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 1554
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1555
    .local v2, userAccounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v7

    .line 1557
    .local v7, identityToken:J
    if-eqz p3, :cond_3

    :try_start_0
    array-length v0, p3

    if-nez v0, :cond_4

    .line 1559
    :cond_3
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1560
    :try_start_1
    invoke-virtual {p0, v2, p2}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 1561
    .local v6, accounts:[Landroid/accounts/Account;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1562
    :try_start_2
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1563
    .local v9, result:Landroid/os/Bundle;
    const-string v0, "accounts"

    invoke-virtual {v9, v0, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1564
    invoke-direct {p0, p1, v9}, Landroid/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1569
    .end local v6           #accounts:[Landroid/accounts/Account;
    .end local v9           #result:Landroid/os/Bundle;
    :goto_0
    invoke-static {v7, v8}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1571
    return-void

    .line 1561
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1569
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 1567
    :cond_4
    :try_start_5
    new-instance v0, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method protected getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .parameter "userAccounts"
    .parameter "accountType"

    .prologue
    .line 2363
    if-eqz p2, :cond_1

    .line 2364
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2365
    .local v0, accounts:[Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 2366
    sget-object v4, Landroid/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 2385
    .end local v0           #accounts:[Landroid/accounts/Account;
    :goto_0
    return-object v4

    .line 2368
    .restart local v0       #accounts:[Landroid/accounts/Account;
    :cond_0
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    goto :goto_0

    .line 2371
    .end local v0           #accounts:[Landroid/accounts/Account;
    :cond_1
    const/4 v3, 0x0

    .line 2372
    .local v3, totalLength:I
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2373
    .restart local v0       #accounts:[Landroid/accounts/Account;
    array-length v4, v0

    add-int/2addr v3, v4

    goto :goto_1

    .line 2375
    .end local v0           #accounts:[Landroid/accounts/Account;
    :cond_2
    if-nez v3, :cond_3

    .line 2376
    sget-object v4, Landroid/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    goto :goto_0

    .line 2378
    :cond_3
    new-array v0, v3, [Landroid/accounts/Account;

    .line 2379
    .restart local v0       #accounts:[Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 2380
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$400(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 2381
    .local v1, accountsOfType:[Landroid/accounts/Account;
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2383
    array-length v4, v1

    add-int/2addr v3, v4

    goto :goto_2

    .end local v1           #accountsOfType:[Landroid/accounts/Account;
    :cond_4
    move-object v4, v0

    .line 2385
    goto :goto_0
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .locals 13

    .prologue
    .line 1504
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1505
    .local v3, allAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/AccountAndUser;>;"
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getAllUsers()Ljava/util/List;

    move-result-object v7

    .line 1506
    .local v7, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v7, :cond_0

    const/4 v8, 0x0

    new-array v8, v8, [Landroid/accounts/AccountAndUser;

    .line 1521
    :goto_0
    return-object v8

    .line 1508
    :cond_0
    iget-object v9, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1509
    :try_start_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1510
    .local v5, user:Landroid/content/pm/UserInfo;
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 1511
    .local v6, userAccounts:Landroid/accounts/AccountManagerService$UserAccounts;
    if-eqz v6, :cond_1

    .line 1512
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v6}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1513
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0, v6, v8}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1514
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_2
    array-length v8, v1

    if-ge v0, v8, :cond_2

    .line 1515
    new-instance v8, Landroid/accounts/AccountAndUser;

    aget-object v11, v1, v0

    iget v12, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v8, v11, v12}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1517
    :cond_2
    monitor-exit v10

    goto :goto_1

    .end local v0           #a:I
    .end local v1           #accounts:[Landroid/accounts/Account;
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8

    .line 1519
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #user:Landroid/content/pm/UserInfo;
    .end local v6           #userAccounts:Landroid/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1520
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v2, v8, [Landroid/accounts/AccountAndUser;

    .line 1521
    .local v2, accountsArray:[Landroid/accounts/AccountAndUser;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/accounts/AccountAndUser;

    goto :goto_0
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 22
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "notifyOnAuthFailure"
    .parameter "expectActivityLaunch"
    .parameter "loginOptionsIn"

    .prologue
    .line 1038
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1039
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAuthToken: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", response "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", authTokenType "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", notifyOnAuthFailure "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", expectActivityLaunch "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", caller\'s uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "response is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1048
    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1049
    :cond_2
    if-nez p3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authTokenType is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1050
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "android.permission.USE_CREDENTIALS"

    aput-object v6, v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 1051
    invoke-direct/range {p0 .. p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 1052
    .local v5, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v18

    .line 1055
    .local v18, authenticatorInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v3, v3, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v3, :cond_6

    const/16 v16, 0x1

    .line 1059
    .local v16, customTokens:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1060
    .local v15, callerUid:I
    if-nez v16, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v15}, Landroid/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    const/4 v14, 0x1

    .line 1063
    .local v14, permissionGranted:Z
    :goto_1
    if-nez p6, :cond_8

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1066
    .local v10, loginOptions:Landroid/os/Bundle;
    :goto_2
    const-string v3, "callerUid"

    invoke-virtual {v10, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1067
    const-string v3, "callerPid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1068
    if-eqz p4, :cond_5

    .line 1069
    const-string/jumbo v3, "notifyOnAuthFailure"

    const/4 v4, 0x1

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1072
    :cond_5
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v19

    .line 1076
    .local v19, identityToken:J
    if-nez v16, :cond_9

    if-eqz v14, :cond_9

    .line 1077
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Landroid/accounts/AccountManagerService;->readAuthTokenInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1078
    .local v17, authToken:Ljava/lang/String;
    if-eqz v17, :cond_9

    .line 1079
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1080
    .local v21, result:Landroid/os/Bundle;
    const-string v3, "authtoken"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string v3, "authAccount"

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v3, "accountType"

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    .end local v17           #authToken:Ljava/lang/String;
    .end local v21           #result:Landroid/os/Bundle;
    :goto_3
    invoke-static/range {v19 .. v20}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1149
    return-void

    .line 1055
    .end local v10           #loginOptions:Landroid/os/Bundle;
    .end local v14           #permissionGranted:Z
    .end local v15           #callerUid:I
    .end local v16           #customTokens:Z
    .end local v19           #identityToken:J
    :cond_6
    const/16 v16, 0x0

    goto :goto_0

    .line 1060
    .restart local v15       #callerUid:I
    .restart local v16       #customTokens:Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    .restart local v14       #permissionGranted:Z
    :cond_8
    move-object/from16 v10, p6

    .line 1063
    goto :goto_2

    .line 1088
    .restart local v10       #loginOptions:Landroid/os/Bundle;
    .restart local v19       #identityToken:J
    :cond_9
    :try_start_1
    new-instance v3, Landroid/accounts/AccountManagerService$4;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p5

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-direct/range {v3 .. v16}, Landroid/accounts/AccountManagerService$4;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZ)V

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$4;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1147
    :catchall_0
    move-exception v3

    invoke-static/range {v19 .. v20}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 995
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_1
    invoke-static {}, Landroid/accounts/AccountManagerService;->getCallingUid()I

    move-result v9

    .line 999
    .local v9, callingUid:I
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    .line 1000
    const/16 v0, 0x3e8

    if-eq v9, v0, :cond_2

    .line 1001
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "can only call from system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_2
    invoke-static {v9}, Landroid/os/UserId;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1004
    .local v2, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v10

    .line 1006
    .local v10, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManagerService$3;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$3;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1033
    return-void

    .line 1031
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .locals 10

    .prologue
    .line 464
    const-string v7, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 465
    const-string v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAuthenticatorTypes: caller\'s uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 472
    .local v4, identityToken:J
    :try_start_0
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    invoke-interface {v7}, Landroid/accounts/IAccountAuthenticatorCache;->getAllServices()Ljava/util/Collection;

    move-result-object v1

    .line 473
    .local v1, authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v6, v7, [Landroid/accounts/AuthenticatorDescription;

    .line 475
    .local v6, types:[Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x0

    .line 477
    .local v2, i:I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 478
    .local v0, authenticator:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v7, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/AuthenticatorDescription;

    aput-object v7, v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    .end local v0           #authenticator:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v1           #authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #types:[Landroid/accounts/AuthenticatorDescription;
    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v7

    .restart local v1       #authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #types:[Landroid/accounts/AuthenticatorDescription;
    :cond_1
    invoke-static {v4, v5}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 481
    return-object v6
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6
    .parameter "account"

    .prologue
    .line 406
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPassword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 412
    :cond_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 414
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 415
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 417
    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0, v0, p1}, Landroid/accounts/AccountManagerService;->readPasswordInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 419
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 417
    return-object v3

    .line 419
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;
    .locals 3
    .parameter "userId"

    .prologue
    .line 352
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 353
    :try_start_0
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerService$UserAccounts;

    .line 354
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->initUser(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 356
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 358
    :cond_0
    monitor-exit v2

    return-object v0

    .line 359
    .end local v0           #accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "account"
    .parameter "key"

    .prologue
    .line 445
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 452
    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 453
    :cond_2
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 454
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 455
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 457
    .local v1, identityToken:J
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/accounts/AccountManagerService;->readUserDataInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 459
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 457
    return-object v3

    .line 459
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 8
    .parameter "response"
    .parameter "account"
    .parameter "features"

    .prologue
    .line 564
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasFeatures: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", features "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller\'s uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_3
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 575
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 576
    .local v2, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v6

    .line 578
    .local v6, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$TestFeaturesSession;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService$TestFeaturesSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-static {v6, v7}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 582
    return-void

    .line 580
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected installNotification(ILandroid/app/Notification;)V
    .locals 2
    .parameter "notificationId"
    .parameter "n"

    .prologue
    .line 2112
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2114
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "accountType"
    .parameter "authToken"

    .prologue
    .line 727
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 728
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalidateAuthToken: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", caller\'s uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 733
    :cond_1
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "authToken is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 734
    :cond_2
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsOrUseCredentialsPermissions()V

    .line 735
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 736
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 738
    .local v2, identityToken:J
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 739
    :try_start_1
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 740
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 742
    :try_start_2
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/accounts/AccountManagerService;->invalidateAuthTokenLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 745
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 747
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 749
    invoke-static {v2, v3}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 751
    return-void

    .line 745
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 747
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 749
    :catchall_2
    move-exception v4

    invoke-static {v2, v3}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1997
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V
    .locals 4
    .parameter "desc"
    .parameter "removed"

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getAllUsers()Ljava/util/List;

    move-result-object v2

    .line 396
    .local v2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_1

    .line 397
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/accounts/AccountManagerService;->validateAccountsAndPopulateCache(Landroid/accounts/AccountManagerService$UserAccounts;)V

    .line 403
    :cond_0
    return-void

    .line 399
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 400
    .local v1, user:Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Landroid/accounts/AccountManagerService;->getUserAccounts(I)Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/accounts/AccountManagerService;->validateAccountsAndPopulateCache(Landroid/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_0
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    .end local p1
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V

    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 817
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 818
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "peekAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authTokenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 824
    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authTokenType is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 825
    :cond_2
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 826
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 827
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 829
    .local v1, identityToken:J
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/accounts/AccountManagerService;->readAuthTokenInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 831
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 829
    return-object v3

    .line 831
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected readAuthTokenInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "accounts"
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 2419
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2420
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2421
    .local v0, authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2423
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2424
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1, p2}, Landroid/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 2425
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2427
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v3

    return-object v2

    .line 2428
    .end local v0           #authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 12
    .parameter "db"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2466
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2467
    .local v9, authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "authtokens"

    sget-object v2, Landroid/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2473
    .local v10, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2474
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2475
    .local v11, type:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2476
    .local v8, authToken:Ljava/lang/String;
    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2479
    .end local v8           #authToken:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2481
    return-object v9
.end method

.method protected readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 12
    .parameter "db"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2446
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2447
    .local v10, userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "extras"

    sget-object v2, Landroid/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2453
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2454
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2455
    .local v9, tmpkey:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2456
    .local v11, value:Ljava/lang/String;
    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2459
    .end local v9           #tmpkey:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2461
    return-object v10
.end method

.method protected readUserDataInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "accounts"
    .parameter "account"
    .parameter "key"

    .prologue
    .line 2432
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$200(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2433
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2434
    .local v1, userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 2436
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->openHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$300(Landroid/accounts/AccountManagerService$UserAccounts;)Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2437
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p2}, Landroid/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v1

    .line 2438
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v3

    return-object v2

    .line 2441
    .end local v1           #userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V
    .locals 9
    .parameter "response"
    .parameter "account"

    .prologue
    .line 637
    const-string v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 638
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeAccount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", caller\'s uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "response is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 644
    :cond_1
    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "account is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 645
    :cond_2
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 646
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 647
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v3

    .line 649
    .local v3, identityToken:J
    invoke-direct {p0, v0, p2}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    .line 650
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 652
    :try_start_0
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 653
    .local v5, pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v6}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 654
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/accounts/AccountManagerService$UserAccounts;->access$800(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 655
    .local v2, id:I
    invoke-virtual {p0, v2}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    goto :goto_0

    .line 658
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:I
    .end local v5           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    :try_start_2
    new-instance v6, Landroid/accounts/AccountManagerService$RemoveAccountSession;

    invoke-direct {v6, p0, v0, p1, p2}, Landroid/accounts/AccountManagerService$RemoveAccountSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V

    invoke-virtual {v6}, Landroid/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 663
    invoke-static {v3, v4}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 665
    return-void

    .line 663
    :catchall_1
    move-exception v6

    invoke-static {v3, v4}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v6
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 713
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/accounts/AccountManagerService;->removeAccountInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 714
    return-void
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter "authTokenType"
    .parameter "authToken"

    .prologue
    .line 836
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", authTokenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 843
    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authTokenType is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 844
    :cond_2
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 845
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 846
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 848
    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->saveAuthTokenToDatabase(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 852
    return-void

    .line 850
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter "password"

    .prologue
    .line 855
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAuthToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 861
    :cond_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 862
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 863
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 865
    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Landroid/accounts/AccountManagerService;->setPasswordInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 869
    return-void

    .line 867
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 920
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 921
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 927
    :cond_1
    if-nez p1, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "account is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 928
    :cond_2
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 929
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 930
    .local v0, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 932
    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->setUserdataInternal(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 936
    return-void

    .line 934
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0}, Landroid/accounts/IAccountAuthenticatorCache;->generateServicesMap()V

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->initUser(I)Landroid/accounts/AccountManagerService$UserAccounts;

    .line 246
    return-void
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 2
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2243
    invoke-static {}, Landroid/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    .line 2245
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2246
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1

    .line 2249
    :cond_0
    if-eqz p4, :cond_1

    .line 2250
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2254
    :goto_0
    return-void

    .line 2252
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 13
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "expectActivityLaunch"
    .parameter "loginOptions"

    .prologue
    .line 1326
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1327
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCredentials: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", response "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", authTokenType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller\'s uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "response is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1335
    :cond_1
    if-nez p2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1336
    :cond_2
    if-nez p3, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "authTokenType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1337
    :cond_3
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1338
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->getUserAccountsForCaller()Landroid/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 1339
    .local v3, accounts:Landroid/accounts/AccountManagerService$UserAccounts;
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v11

    .line 1341
    .local v11, identityToken:J
    :try_start_0
    new-instance v1, Landroid/accounts/AccountManagerService$7;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p1

    move/from16 v6, p4

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Landroid/accounts/AccountManagerService$7;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$7;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    invoke-static {v11, v12}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1357
    return-void

    .line 1355
    :catchall_0
    move-exception v1

    invoke-static {v11, v12}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method protected writeAuthTokenIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "accounts"
    .parameter "db"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2405
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2406
    .local v0, authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2407
    invoke-virtual {p0, p2, p3}, Landroid/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 2408
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$600(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    :cond_0
    if-nez p5, :cond_1

    .line 2411
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    :goto_0
    return-void

    .line 2413
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected writeUserDataIntoCacheLocked(Landroid/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "accounts"
    .parameter "db"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2391
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2392
    .local v0, userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 2393
    invoke-virtual {p0, p2, p3}, Landroid/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 2394
    #getter for: Landroid/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/HashMap;
    invoke-static {p1}, Landroid/accounts/AccountManagerService$UserAccounts;->access$500(Landroid/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2396
    :cond_0
    if-nez p5, :cond_1

    .line 2397
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    :goto_0
    return-void

    .line 2399
    :cond_1
    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
