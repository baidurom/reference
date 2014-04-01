.class public Landroid/database/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/DatabaseUtils$InsertHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final STATEMENT_ABORT:I = 0x6

.field public static final STATEMENT_ATTACH:I = 0x3

.field public static final STATEMENT_BEGIN:I = 0x4

.field public static final STATEMENT_COMMIT:I = 0x5

.field public static final STATEMENT_DDL:I = 0x8

.field public static final STATEMENT_OTHER:I = 0x63

.field public static final STATEMENT_PRAGMA:I = 0x7

.field public static final STATEMENT_SELECT:I = 0x1

.field public static final STATEMENT_UNPREPARED:I = 0x9

.field public static final STATEMENT_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DatabaseUtils"

.field private static final countProjection:[Ljava/lang/String;

.field private static mColl:Ljava/text/Collator;

.field private static mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Landroid/database/DatabaseUtils;->countProjection:[Ljava/lang/String;

    .line 447
    sput-object v3, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    .line 448
    sput-object v3, Landroid/database/DatabaseUtils;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 975
    return-void
.end method

.method public static appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .parameter "sb"
    .parameter "sqlString"

    .prologue
    const/16 v5, 0x27

    .line 346
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 349
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 350
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 351
    .local v0, c:C
    if-ne v0, v5, :cond_0

    .line 352
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    return-void
.end method

.method public static appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "originalValues"
    .parameter "newValues"

    .prologue
    const/4 v3, 0x0

    .line 1386
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    move-object v0, p1

    .line 1392
    :goto_0
    return-object v0

    .line 1389
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/String;

    .line 1390
    .local v0, result:[Ljava/lang/String;
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1391
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static final appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 2
    .parameter "sql"
    .parameter "value"

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    const-string v1, "NULL"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :goto_0
    return-void

    .line 378
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 379
    check-cast v0, Ljava/lang/Boolean;

    .line 380
    .local v0, bool:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 383
    :cond_1
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 386
    .end local v0           #bool:Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    .locals 3
    .parameter "prog"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 198
    if-nez p2, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 216
    .end local p2
    :goto_0
    return-void

    .line 200
    .restart local p2
    :cond_0
    instance-of v1, p2, Ljava/lang/Double;

    if-nez v1, :cond_1

    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 201
    :cond_1
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    goto :goto_0

    .line 202
    .restart local p2
    :cond_2
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 203
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 204
    .restart local p2
    :cond_3
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    move-object v0, p2

    .line 205
    check-cast v0, Ljava/lang/Boolean;

    .line 206
    .local v0, bool:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    const-wide/16 v1, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 209
    :cond_4
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 211
    .end local v0           #bool:Ljava/lang/Boolean;
    :cond_5
    instance-of v1, p2, [B

    if-eqz v1, :cond_6

    .line 212
    check-cast p2, [B

    .end local p2
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_0

    .line 214
    .restart local p2
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "db"
    .parameter "query"
    .parameter "selectionArgs"

    .prologue
    .line 854
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 856
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 858
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public static blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "prog"
    .parameter "selectionArgs"

    .prologue
    .line 870
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 394
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    .end local p1
    :goto_0
    return-object p1

    .line 397
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 398
    goto :goto_0

    .line 401
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "dbName"
    .parameter "dbVersion"
    .parameter "sqlStatements"

    .prologue
    .line 1320
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1324
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, ";\n"

    invoke-static {p3, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1325
    .local v5, statements:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1326
    .local v4, statement:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1325
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1327
    :cond_0
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 1329
    .end local v4           #statement:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1330
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1331
    return-void
.end method

.method public static cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 730
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 731
    .local v0, colIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 732
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 736
    :goto_0
    return-void

    .line 734
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0
.end method

.method public static cursorDoubleToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 964
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 965
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 968
    :cond_0
    return-void
.end method

.method public static cursorDoubleToCursorValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 717
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public static cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V
    .locals 8
    .parameter "cursor"
    .parameter "position"
    .parameter "window"

    .prologue
    .line 264
    if-ltz p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 269
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 270
    .local v2, oldPos:I
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 271
    .local v1, numColumns:I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 272
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 273
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 274
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 276
    :cond_2
    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-nez v6, :cond_4

    .line 318
    :cond_3
    :goto_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 279
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 280
    :try_start_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    .line 282
    .local v4, type:I
    packed-switch v4, :pswitch_data_0

    .line 304
    :pswitch_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-virtual {p2, v5, p1, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v3

    .line 310
    .end local v5           #value:Ljava/lang/String;
    .local v3, success:Z
    :goto_3
    if-nez v3, :cond_8

    .line 311
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 315
    .end local v3           #success:Z
    .end local v4           #type:I
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 316
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 284
    .restart local v4       #type:I
    :pswitch_1
    invoke-virtual {p2, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    .line 285
    .restart local v3       #success:Z
    goto :goto_3

    .line 288
    .end local v3           #success:Z
    :pswitch_2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p2, v6, v7, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v3

    .line 289
    .restart local v3       #success:Z
    goto :goto_3

    .line 292
    .end local v3           #success:Z
    :pswitch_3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {p2, v6, v7, p1, v0}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v3

    .line 293
    .restart local v3       #success:Z
    goto :goto_3

    .line 296
    .end local v3           #success:Z
    :pswitch_4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 297
    .local v5, value:[B
    if-eqz v5, :cond_6

    invoke-virtual {p2, v5, p1, v0}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v3

    .line 299
    .restart local v3       #success:Z
    :goto_4
    goto :goto_3

    .line 297
    .end local v3           #success:Z
    :cond_6
    invoke-virtual {p2, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    goto :goto_4

    .line 305
    .local v5, value:Ljava/lang/String;
    :cond_7
    invoke-virtual {p2, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_3

    .line 279
    .end local v5           #value:Ljava/lang/String;
    .restart local v3       #success:Z
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 319
    .end local v0           #i:I
    .end local v1           #numColumns:I
    .end local v2           #oldPos:I
    .end local v3           #success:Z
    .end local v4           #type:I
    :catch_0
    move-exception v6

    .line 322
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v6

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static cursorFloatToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 948
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 949
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 950
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 952
    :cond_0
    return-void
.end method

.method public static cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 656
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public static cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 669
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 670
    .local v0, colIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 932
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 933
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 934
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 936
    :cond_0
    return-void
.end method

.method public static cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 686
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public static cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 699
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 700
    .local v0, colIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 702
    .local v1, value:Ljava/lang/Long;
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 706
    .end local v1           #value:Ljava/lang/Long;
    :goto_0
    return-void

    .line 704
    :cond_0
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 900
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 901
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 902
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 904
    :cond_0
    return-void
.end method

.method public static cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .locals 6
    .parameter "cursor"
    .parameter "values"

    .prologue
    .line 745
    instance-of v4, p0, Landroid/database/AbstractWindowedCursor;

    if-eqz v4, :cond_0

    move-object v4, p0

    check-cast v4, Landroid/database/AbstractWindowedCursor;

    move-object v0, v4

    .line 748
    .local v0, awc:Landroid/database/AbstractWindowedCursor;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, columns:[Ljava/lang/String;
    array-length v3, v1

    .line 750
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 751
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/database/AbstractWindowedCursor;->isBlob(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 752
    aget-object v4, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 750
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 745
    .end local v0           #awc:Landroid/database/AbstractWindowedCursor;
    .end local v1           #columns:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 754
    .restart local v0       #awc:Landroid/database/AbstractWindowedCursor;
    .restart local v1       #columns:[Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_1
    aget-object v4, v1, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 757
    :cond_2
    return-void
.end method

.method public static cursorShortToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 916
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 917
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 918
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 920
    :cond_0
    return-void
.end method

.method public static cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "cursor"
    .parameter "field"
    .parameter "values"

    .prologue
    .line 619
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public static cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .parameter "cursor"
    .parameter "field"
    .parameter "values"
    .parameter "key"

    .prologue
    .line 645
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method public static cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "values"
    .parameter "column"

    .prologue
    .line 884
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 885
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 886
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_0
    return-void
.end method

.method public static cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V
    .locals 1
    .parameter "cursor"
    .parameter "field"
    .parameter "inserter"
    .parameter "index"

    .prologue
    .line 632
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 633
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 547
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 548
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .locals 7
    .parameter "cursor"
    .parameter "stream"

    .prologue
    .line 557
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, cols:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 559
    array-length v3, v0

    .line 560
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 563
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 569
    .local v4, value:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 567
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_1

    .line 571
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "}"

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public static dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .locals 7
    .parameter "cursor"
    .parameter "sb"

    .prologue
    .line 581
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, cols:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " {\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    array-length v3, v0

    .line 584
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 587
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 593
    .local v4, value:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 588
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 591
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_1

    .line 595
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "}\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    return-void
.end method

.method public static dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 607
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 483
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 484
    return-void
.end method

.method public static dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .locals 3
    .parameter "cursor"
    .parameter "stream"

    .prologue
    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Dumping cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 495
    if-eqz p0, :cond_1

    .line 496
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 498
    .local v0, startPos:I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 499
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    goto :goto_0

    .line 502
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 504
    .end local v0           #startPos:I
    :cond_1
    const-string v1, "<<<<<"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public static dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "cursor"
    .parameter "sb"

    .prologue
    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Dumping cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    if-eqz p0, :cond_1

    .line 517
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 519
    .local v0, startPos:I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 520
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 523
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 525
    .end local v0           #startPos:I
    :cond_1
    const-string v1, "<<<<<\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    return-void
.end method

.method public static dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    .line 410
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 412
    .local v0, arr:[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v4

    const-string v5, "ISO8859_1"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-object v2

    .line 413
    :catch_0
    move-exception v1

    .line 414
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method private static getCollationKeyInBytes(Ljava/lang/String;)[B
    .locals 2
    .parameter "name"

    .prologue
    .line 439
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    if-nez v0, :cond_0

    .line 440
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/database/DatabaseUtils;->mLocale:Ljava/util/Locale;

    .line 441
    sget-object v0, Landroid/database/DatabaseUtils;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    .line 442
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 444
    :cond_0
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static getCollatorLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 457
    sget-object v0, Landroid/database/DatabaseUtils;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 424
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 425
    .local v0, arr:[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    .line 426
    .local v1, keys:[C
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method private static getKeyLen([B)I
    .locals 1
    .parameter "arr"

    .prologue
    .line 430
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    .line 431
    array-length v0, p0

    .line 434
    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getSqlStatementType(Ljava/lang/String;)I
    .locals 6
    .parameter "sql"

    .prologue
    const/16 v1, 0x63

    const/4 v3, 0x5

    const/4 v2, 0x3

    .line 1348
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return v1

    .line 1352
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, prefixSql:Ljava/lang/String;
    const-string v4, "SEL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1354
    const/4 v1, 0x1

    goto :goto_0

    .line 1355
    :cond_2
    const-string v4, "INS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "UPD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "REP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "DEL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1359
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 1360
    :cond_4
    const-string v4, "ATT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 1361
    goto :goto_0

    .line 1362
    :cond_5
    const-string v2, "COM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v3

    .line 1363
    goto :goto_0

    .line 1364
    :cond_6
    const-string v2, "END"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v3

    .line 1365
    goto :goto_0

    .line 1366
    :cond_7
    const-string v2, "ROL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1367
    const/4 v1, 0x6

    goto :goto_0

    .line 1368
    :cond_8
    const-string v2, "BEG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1369
    const/4 v1, 0x4

    goto :goto_0

    .line 1370
    :cond_9
    const-string v2, "PRA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1371
    const/4 v1, 0x7

    goto :goto_0

    .line 1372
    :cond_a
    const-string v2, "CRE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "DRO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "ALT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1374
    :cond_b
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 1375
    :cond_c
    const-string v2, "ANA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "DET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1376
    :cond_d
    const/16 v1, 0x9

    goto/16 :goto_0
.end method

.method public static getTypeOfObject(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 236
    if-nez p0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0

    .line 238
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 239
    const/4 v0, 0x4

    goto :goto_0

    .line 240
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 241
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 242
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_5

    .line 244
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .parameter "db"
    .parameter "query"
    .parameter "selectionArgs"

    .prologue
    .line 807
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 809
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 811
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public static longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    .locals 2
    .parameter "prog"
    .parameter "selectionArgs"

    .prologue
    .line 820
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 2
    .parameter "db"
    .parameter "table"

    .prologue
    const/4 v0, 0x0

    .line 766
    invoke-static {p0, p1, v0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .parameter "db"
    .parameter "table"
    .parameter "selection"

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .parameter "db"
    .parameter "table"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 797
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, s:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select count(*) from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 797
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static final readExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "reply"

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 135
    .local v0, code:I
    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, msg:Ljava/lang/String;
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static final readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V
    .locals 1
    .parameter "reply"
    .parameter "msg"
    .parameter "code"

    .prologue
    .line 165
    packed-switch p2, :pswitch_data_0

    .line 183
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 185
    return-void

    .line 167
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :pswitch_2
    new-instance v0, Landroid/database/sqlite/SQLiteAbortException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteAbortException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :pswitch_3
    new-instance v0, Landroid/database/sqlite/SQLiteConstraintException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :pswitch_4
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_5
    new-instance v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteFullException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :pswitch_6
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_7
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 143
    .local v0, code:I
    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, msg:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 146
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_1
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "reply"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 155
    .local v0, code:I
    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, msg:Ljava/lang/String;
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 158
    new-instance v2, Landroid/content/OperationApplicationException;

    invoke-direct {v2, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_1
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static setCollatorLocale(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 467
    if-eqz p0, :cond_0

    .line 468
    sput-object p0, Landroid/database/DatabaseUtils;->mLocale:Ljava/util/Locale;

    .line 469
    sget-object v0, Landroid/database/DatabaseUtils;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    .line 470
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    const-string v0, "DatabaseUtils"

    const-string/jumbo v1, "setCollatorLocale error, locale=null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v0, escaper:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "db"
    .parameter "query"
    .parameter "selectionArgs"

    .prologue
    .line 829
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 831
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 833
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public static stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "prog"
    .parameter "selectionArgs"

    .prologue
    .line 842
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V
    .locals 4
    .parameter "reply"
    .parameter "e"

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, code:I
    const/4 v1, 0x1

    .line 90
    .local v1, logException:Z
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_1

    .line 91
    const/4 v0, 0x1

    .line 92
    const/4 v1, 0x0

    .line 116
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    if-eqz v1, :cond_0

    .line 120
    const-string v2, "DatabaseUtils"

    const-string v3, "Writing exception to parcel"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    :cond_0
    :goto_1
    return-void

    .line 93
    :cond_1
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_2

    .line 94
    const/4 v0, 0x2

    goto :goto_0

    .line 95
    :cond_2
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_3

    .line 96
    const/4 v0, 0x3

    goto :goto_0

    .line 97
    :cond_3
    instance-of v2, p1, Landroid/database/sqlite/SQLiteAbortException;

    if-eqz v2, :cond_4

    .line 98
    const/4 v0, 0x4

    goto :goto_0

    .line 99
    :cond_4
    instance-of v2, p1, Landroid/database/sqlite/SQLiteConstraintException;

    if-eqz v2, :cond_5

    .line 100
    const/4 v0, 0x5

    goto :goto_0

    .line 101
    :cond_5
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v2, :cond_6

    .line 102
    const/4 v0, 0x6

    goto :goto_0

    .line 103
    :cond_6
    instance-of v2, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v2, :cond_7

    .line 104
    const/4 v0, 0x7

    goto :goto_0

    .line 105
    :cond_7
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDiskIOException;

    if-eqz v2, :cond_8

    .line 106
    const/16 v0, 0x8

    goto :goto_0

    .line 107
    :cond_8
    instance-of v2, p1, Landroid/database/sqlite/SQLiteException;

    if-eqz v2, :cond_9

    .line 108
    const/16 v0, 0x9

    goto :goto_0

    .line 109
    :cond_9
    instance-of v2, p1, Landroid/content/OperationApplicationException;

    if-eqz v2, :cond_a

    .line 110
    const/16 v0, 0xa

    goto :goto_0

    .line 112
    :cond_a
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 113
    const-string v2, "DatabaseUtils"

    const-string v3, "Writing exception to parcel"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
