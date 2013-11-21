.class public Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HotwordSQLiteOpenHelper.java"


# static fields
.field public static final ACTIVE_TIME:Ljava/lang/String; = "active_time"

.field public static final CONFIG_TABLE_NAME:Ljava/lang/String; = "config"

.field public static final CONFIG_UID:Ljava/lang/String; = "uid"

.field public static final CONFIG_UUID:Ljava/lang/String; = "uuid"

.field private static final DATABASE_NAME:Ljava/lang/String; = "wordlist.db"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final HOTWORD_TABLE_NAME:Ljava/lang/String; = "hotword"

.field public static final LAST_UPDATE_TIME:Ljava/lang/String; = "last_update_time"

.field private static final TAG:Ljava/lang/String; = null

.field public static final UBC_KEY:Ljava/lang/String; = "key"

.field public static final UBC_TABLE_NAME:Ljava/lang/String; = "ubc"

.field public static final UBC_VALUE:Ljava/lang/String; = "value"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->sInstance:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    const-string v0, "wordlist.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 58
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"
    .parameter "errorHandler"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 64
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 77
    :try_start_0
    const-string v1, "CREATE TABLE IF NOT EXISTS hotword(_id INTEGER PRIMARY KEY autoincrement,title TEXT NOT NULL, url TEXT, type INT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v1, "CREATE TABLE IF NOT EXISTS ubc(_id INTEGER PRIMARY KEY autoincrement,key TEXT NOT NULL, value TEXT NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    const-string v1, "CREATE TABLE IF NOT EXISTS config(last_update_time TEXT, uuid TEXT, uid TEXT, active_time TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO config VALUES (0,\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->generateUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',0);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, ex:Landroid/database/SQLException;
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t create table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    throw v0
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 107
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS hotword"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v1, "DROP TABLE IF EXISTS ubc"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v1, "DROP TABLE IF EXISTS config"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, ex:Landroid/database/SQLException;
    sget-object v1, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t drop table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    sput-object p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 50
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->sInstance:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->sInstance:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    .line 53
    :cond_0
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->sInstance:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public del(Ljava/lang/String;)I
    .locals 2
    .parameter "tablename"

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public del(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "tablename"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/String;[Landroid/content/ContentValues;)I
    .locals 10
    .parameter "tablename"
    .parameter "Allvalues"

    .prologue
    .line 127
    const-wide/16 v5, -0x1

    .line 128
    .local v5, rowid:J
    const/4 v4, 0x0

    .line 129
    .local v4, rowAdded:I
    iget-object v8, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 132
    :cond_0
    iget-object v8, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 134
    move-object v0, p2

    .local v0, arr$:[Landroid/content/ContentValues;
    :try_start_0
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v7, v0, v2

    .line 135
    .local v7, values:Landroid/content/ContentValues;
    if-nez v7, :cond_2

    .line 134
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_2
    iget-object v8, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 139
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_1

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 143
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_3
    iget-object v8, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    iget-object v8, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 149
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_2
    return v4

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v8, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    iget-object v8, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "tablename"
    .parameter "values"

    .prologue
    .line 117
    if-nez p2, :cond_0

    .line 118
    const-wide/16 v0, 0x0

    .line 123
    :goto_0
    return-wide v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 103
    return-void
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "tablename"

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 180
    .local v8, c:Landroid/database/Cursor;
    return-object v8
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "tablename"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 168
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 172
    .local v8, c:Landroid/database/Cursor;
    return-object v8
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "tablename"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
