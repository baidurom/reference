.class public Landroid/database/sqlite/SQLiteCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "SQLiteCursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorWindowCapacity:I

.field private final mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

.field private final mEditTable:Ljava/lang/String;

.field private final mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private final mStackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 4
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 104
    if-nez p3, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "query object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    .line 112
    :goto_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    .line 113
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 115
    iput-object p3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 117
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteQuery;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 118
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    invoke-static {v0}, Landroid/database/DatabaseUtils;->findRowIdColumnIndex([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mRowIdColumnIndex:I

    .line 121
    const-string v0, "Debug_Cursor"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "SQLiteCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor open object="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "stacktrace"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_1
    return-void

    .line 110
    :cond_2
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 0
    .parameter "db"
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 91
    return-void
.end method

.method private checkAeeWarningList()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 283
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 284
    .local v6, uid:I
    const/4 v2, 0x0

    .line 287
    .local v2, inStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/data/system/resmon-uid.txt"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v2           #inStream:Ljava/io/InputStream;
    .local v3, inStream:Ljava/io/InputStream;
    if-eqz v3, :cond_3

    .line 290
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 291
    .local v4, inputReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 293
    .local v0, buffReader:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, line:Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_3

    .line 295
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v8

    if-ne v6, v8, :cond_2

    .line 296
    const/4 v7, 0x1

    .line 305
    if-eqz v3, :cond_0

    .line 307
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    move-object v2, v3

    .line 303
    .end local v0           #buffReader:Ljava/io/BufferedReader;
    .end local v3           #inStream:Ljava/io/InputStream;
    .end local v4           #inputReader:Ljava/io/InputStreamReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v2       #inStream:Ljava/io/InputStream;
    :cond_1
    :goto_2
    return v7

    .line 298
    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local v0       #buffReader:Ljava/io/BufferedReader;
    .restart local v3       #inStream:Ljava/io/InputStream;
    .restart local v4       #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #line:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v5

    goto :goto_0

    .line 305
    .end local v0           #buffReader:Ljava/io/BufferedReader;
    .end local v4           #inputReader:Ljava/io/InputStreamReader;
    .end local v5           #line:Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 307
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_3
    move-object v2, v3

    .line 301
    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v2       #inStream:Ljava/io/InputStream;
    goto :goto_2

    .line 302
    :catch_0
    move-exception v1

    .line 305
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    if-eqz v2, :cond_1

    .line 307
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 308
    :catch_1
    move-exception v8

    goto :goto_2

    .line 305
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_5

    .line 307
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 305
    :cond_5
    :goto_6
    throw v7

    .line 308
    :catch_2
    move-exception v8

    goto :goto_6

    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local v0       #buffReader:Ljava/io/BufferedReader;
    .restart local v3       #inStream:Ljava/io/InputStream;
    .restart local v4       #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #line:Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_1

    .end local v0           #buffReader:Ljava/io/BufferedReader;
    .end local v4           #inputReader:Ljava/io/InputStreamReader;
    .end local v5           #line:Ljava/lang/String;
    :catch_4
    move-exception v8

    goto :goto_3

    .line 305
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v2       #inStream:Ljava/io/InputStream;
    goto :goto_5

    .line 302
    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local v3       #inStream:Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #inStream:Ljava/io/InputStream;
    .restart local v2       #inStream:Ljava/io/InputStream;
    goto :goto_4
.end method

.method private fillWindow(I)V
    .locals 5
    .parameter "requiredPos"

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteCursor;->clearOrCreateWindow(Ljava/lang/String;)V

    .line 157
    :try_start_0
    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 158
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->cursorPickFillWindowStartPosition(II)I

    move-result v1

    .line 159
    .local v1, startPos:I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, p1, v4}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;IIZ)I

    move-result v2

    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 160
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    .line 161
    const-string v2, "SQLiteCursor"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const-string v2, "SQLiteCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received count(*) from native_fill_window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 165
    .end local v1           #startPos:I
    :cond_1
    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    invoke-static {p1, v2}, Landroid/database/DatabaseUtils;->cursorPickFillWindowStartPosition(II)I

    move-result v1

    .line 167
    .restart local v1       #startPos:I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, p1, v4}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;IIZ)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    .end local v1           #startPos:I
    :catch_0
    move-exception v0

    .line 171
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "SQLiteCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillWindow() exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->closeWindow()V

    .line 178
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 225
    const-string v0, "Debug_Cursor"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "SQLiteCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor close object="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 231
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorClosed()V

    .line 232
    monitor-exit p0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 219
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    .line 220
    return-void
.end method

.method protected finalize()V
    .locals 7

    .prologue
    const/16 v3, 0x3e8

    .line 321
    :try_start_0
    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v4, :cond_2

    .line 322
    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 323
    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, sql:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 325
    .local v1, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finalizing a Cursor that has not been deactivated or closed. database = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", table = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", query = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    if-le v1, v3, :cond_0

    move v1, v3

    .end local v1           #len:I
    :cond_0
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v3, v4}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->checkAeeWarningList()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    :try_start_1
    const-class v3, Lcom/mediatek/common/aee/IExceptionLog;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/aee/IExceptionLog;

    .line 336
    .local v0, exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;
    if-eqz v0, :cond_1

    .line 337
    const/4 v3, 0x0

    const-string v4, "SQLiteCursor.java"

    const-string v5, "Finalizing a Cursor that has not been deactivated or closed."

    const-string v6, "/data/cursorleak/traces.txt"

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/mediatek/common/aee/IExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    .end local v0           #exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;
    .end local v2           #sql:Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    :cond_2
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 350
    return-void

    .line 348
    :catchall_0
    move-exception v3

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    throw v3

    .line 339
    .restart local v2       #sql:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 10
    .parameter "columnName"

    .prologue
    const/4 v6, -0x1

    .line 185
    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v7, :cond_1

    .line 186
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 187
    .local v1, columns:[Ljava/lang/String;
    array-length v0, v1

    .line 188
    .local v0, columnCount:I
    new-instance v4, Ljava/util/HashMap;

    const/high16 v7, 0x3f80

    invoke-direct {v4, v0, v7}, Ljava/util/HashMap;-><init>(IF)V

    .line 189
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 190
    aget-object v7, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    :cond_0
    iput-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 196
    .end local v0           #columnCount:I
    .end local v1           #columns:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 197
    .local v5, periodIndex:I
    if-eq v5, v6, :cond_2

    .line 198
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 199
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "SQLiteCursor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requesting column name with table name -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 203
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v7, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 204
    .local v3, i:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 205
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 207
    :cond_3
    return v6
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 150
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 2
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 137
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 139
    :cond_0
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 142
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public requery()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    :goto_0
    return v1

    .line 241
    :cond_0
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteQuery;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    monitor-exit p0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 246
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->clear()V

    .line 249
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mPos:I

    .line 250
    const/4 v2, -0x1

    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 252
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v2, p0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    .line 253
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "SQLiteCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requery() failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1
    .parameter "selectionArgs"

    .prologue
    .line 274
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 268
    return-void
.end method
