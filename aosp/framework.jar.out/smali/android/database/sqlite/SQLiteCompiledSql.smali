.class Landroid/database/sqlite/SQLiteCompiledSql;
.super Ljava/lang/Object;
.source "SQLiteCompiledSql.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteCompiledSql"


# instance fields
.field final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mInUse:Z

.field private mSqlStmt:Ljava/lang/String;

.field private mStackTrace:Ljava/lang/Throwable;

.field final nHandle:I

.field nStatement:I


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .parameter "db"
    .parameter "sql"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    .line 51
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    .line 55
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->verifyDbIsOpen()V

    .line 59
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->verifyLockOwner()V

    .line 60
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    .line 63
    iget v0, p1, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nHandle:I

    .line 64
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCompiledSql;->native_compile(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private final native native_compile(Ljava/lang/String;)V
.end method


# virtual methods
.method declared-synchronized acquire()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 80
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    monitor-exit p0

    return v0

    .line 84
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v1, 0x3e8

    .line 105
    :try_start_0
    iget v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 125
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    :goto_0
    return-void

    .line 108
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->isInQueueOfStatementsToBeFinalized(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .line 115
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/StrictMode;->vmSqliteObjectLeaksEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 117
    .local v0, len:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing statement in a finalizer. Please ensure that you explicitly call close() on your cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    const/4 v4, 0x0

    if-le v0, v1, :cond_2

    move v0, v1

    .end local v0           #len:I
    :cond_2
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method declared-synchronized release()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized releaseIfNotInUse()V
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method releaseSqlStatement()V
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget v1, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->finalizeStatementLater(I)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    .line 74
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v2, 0x64

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, buff:Ljava/lang/StringBuilder;
    const-string v3, " nStatement="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, ", mInUse="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mInUse:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    const-string v3, ", db="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, ", db_connectionNum="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-short v3, v3, Landroid/database/sqlite/SQLiteDatabase;->mConnectionNum:S

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v3, ", sql="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 142
    .local v1, len:I
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    move v1, v2

    .end local v1           #len:I
    :cond_0
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 144
    .end local v0           #buff:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
