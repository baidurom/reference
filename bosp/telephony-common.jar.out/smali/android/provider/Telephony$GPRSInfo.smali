.class public final Landroid/provider/Telephony$GPRSInfo;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GPRSInfo"
.end annotation


# instance fields
.field public mGprsIn:J

.field public mGprsOut:J

.field public mSimId:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 3370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3367
    iput-wide v0, p0, Landroid/provider/Telephony$GPRSInfo;->mSimId:J

    .line 3368
    iput-wide v0, p0, Landroid/provider/Telephony$GPRSInfo;->mGprsIn:J

    .line 3369
    iput-wide v0, p0, Landroid/provider/Telephony$GPRSInfo;->mGprsOut:J

    .line 3372
    return-void
.end method

.method private static fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$GPRSInfo;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 3374
    new-instance v0, Landroid/provider/Telephony$GPRSInfo;

    invoke-direct {v0}, Landroid/provider/Telephony$GPRSInfo;-><init>()V

    .line 3375
    .local v0, info:Landroid/provider/Telephony$GPRSInfo;
    const-string v1, "sim_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/provider/Telephony$GPRSInfo;->mSimId:J

    .line 3376
    const-string v1, "gprs_in"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/provider/Telephony$GPRSInfo;->mGprsIn:J

    .line 3377
    const-string v1, "gprs_out"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/provider/Telephony$GPRSInfo;->mGprsOut:J

    .line 3378
    return-object v0
.end method

.method public static getGprsInBySim(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    .line 3382
    cmp-long v0, p1, v7

    if-gtz v0, :cond_1

    move-wide v0, v7

    .line 3394
    :cond_0
    :goto_0
    return-wide v0

    .line 3383
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$GprsInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "gprs_in"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3386
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3387
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3390
    if-eqz v6, :cond_0

    .line 3391
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3390
    :cond_2
    if-eqz v6, :cond_3

    .line 3391
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v0, v7

    .line 3394
    goto :goto_0

    .line 3390
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 3391
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getGprsInfoBySim(Landroid/content/Context;J)Landroid/provider/Telephony$GPRSInfo;
    .locals 8
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    .line 3414
    new-instance v7, Landroid/provider/Telephony$GPRSInfo;

    invoke-direct {v7}, Landroid/provider/Telephony$GPRSInfo;-><init>()V

    .line 3415
    .local v7, info:Landroid/provider/Telephony$GPRSInfo;
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 3427
    .end local v7           #info:Landroid/provider/Telephony$GPRSInfo;
    :cond_0
    :goto_0
    return-object v7

    .line 3416
    .restart local v7       #info:Landroid/provider/Telephony$GPRSInfo;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$GprsInfo;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3419
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3420
    invoke-static {v6}, Landroid/provider/Telephony$GPRSInfo;->fromCursor(Landroid/database/Cursor;)Landroid/provider/Telephony$GPRSInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 3423
    .end local v7           #info:Landroid/provider/Telephony$GPRSInfo;
    if-eqz v6, :cond_0

    .line 3424
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3423
    .restart local v7       #info:Landroid/provider/Telephony$GPRSInfo;
    :cond_2
    if-eqz v6, :cond_0

    .line 3424
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3423
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3424
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getGprsOutBySim(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    .line 3398
    cmp-long v0, p1, v7

    if-gtz v0, :cond_1

    move-wide v0, v7

    .line 3410
    :cond_0
    :goto_0
    return-wide v0

    .line 3399
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$GprsInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "gprs_out"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3402
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3403
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3406
    if-eqz v6, :cond_0

    .line 3407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3406
    :cond_2
    if-eqz v6, :cond_3

    .line 3407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v0, v7

    .line 3410
    goto :goto_0

    .line 3406
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 3407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static resetGprsBySim(Landroid/content/Context;J)I
    .locals 5
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 3431
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 3435
    :goto_0
    return v1

    .line 3432
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3433
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "gprs_in"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3434
    const-string v2, "gprs_out"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3435
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$GprsInfo;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
