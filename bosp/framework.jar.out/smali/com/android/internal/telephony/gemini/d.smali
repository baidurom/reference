.class final Lcom/android/internal/telephony/gemini/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 24

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 439
    const/4 v2, 0x0

    .line 440
    const/4 v1, 0x0

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 442
    if-eqz v3, :cond_4

    .line 443
    iget-object v2, v3, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 444
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllIccIdsDone old IccId In Slot0 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 446
    const-string/jumbo v5, "slot"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    sget-object v5, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v4, v2

    .line 453
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 454
    if-eqz v2, :cond_5

    .line 455
    iget-object v1, v2, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 456
    const-string v3, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllIccIdsDone old IccId In Slot1 is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v3, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 458
    const-string/jumbo v5, "slot"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    sget-object v5, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15, v2, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v3, v1

    .line 467
    :goto_1
    const/4 v2, 0x0

    .line 468
    const/4 v1, 0x0

    .line 469
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 470
    :cond_0
    const-string v5, "PHONE"

    const-string v6, "getAllIccIdsDone No SIM inserted in Slot 0, set the slot for Removed SIM to NONE "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 488
    :cond_2
    const-string v3, "PHONE"

    const-string v4, "getAllIccIdsDone No SIM inserted in Slot 1, set the slot for Removed SIM to NONE "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v1

    move v14, v2

    .line 503
    :goto_3
    const-wide/16 v4, -0x3

    .line 504
    const-wide/16 v6, -0x3

    .line 505
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    .line 506
    if-nez v16, :cond_c

    const/4 v1, 0x0

    move v9, v1

    .line 507
    :goto_4
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v9, :cond_e

    .line 508
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 509
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v3, :cond_d

    .line 510
    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 507
    :cond_3
    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 450
    :cond_4
    const-string v3, "PHONE"

    const-string v4, "getAllIccIdsDone No sim in slot0 for last time "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    goto/16 :goto_0

    .line 462
    :cond_5
    const-string v2, "PHONE"

    const-string v3, "getAllIccIdsDone No sim in slot1 for last time "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    goto/16 :goto_1

    .line 472
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 475
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 476
    const-string v5, "PHONE"

    const-string v6, "getAllIccIdsDone special SIM with invalid ICCID is inserted in slot1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 482
    const/4 v2, 0x1

    .line 483
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 478
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 437
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 490
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 491
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 492
    const-string v5, "PHONE"

    const-string v6, "getAllIccIdsDone special SIM with invalid ICCID is inserted in slot2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 498
    add-int/lit8 v2, v2, 0x1

    .line 499
    or-int/lit8 v1, v1, 0x2

    move v13, v1

    move v14, v2

    goto/16 :goto_3

    .line 494
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_8

    .line 506
    :cond_c
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    move v9, v1

    goto/16 :goto_4

    .line 511
    :cond_d
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_3

    .line 512
    iget-wide v6, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto/16 :goto_6

    .line 515
    :cond_e
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllIccIdsDone simIdForSlot ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    if-lez v14, :cond_f

    .line 518
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone New SIM detected. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    .line 520
    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v15, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 522
    if-lez v1, :cond_1a

    .line 523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    .line 528
    :cond_f
    :goto_9
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone set PROPERTY_SIM_INFO_READY to true. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v1, "gsm.siminfo.ready"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllIccIdsDone  PROPERTY_SIM_INFO_READY after set is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.siminfo.ready"

    const/4 v8, 0x0

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string/jumbo v1, "video_call_sim_setting"

    const-wide/16 v2, -0x5

    invoke-static {v15, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 534
    const-string/jumbo v1, "voice_call_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v15, v1, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    .line 536
    const-string/jumbo v1, "sms_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v15, v1, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    .line 537
    const-string v1, "gprs_connection_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v15, v1, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v21

    .line 539
    const/4 v10, 0x0

    .line 543
    const-wide/16 v11, -0x5

    .line 544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v8

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 546
    const/4 v1, 0x1

    if-ne v8, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    move-wide v11, v6

    .line 557
    :cond_10
    :goto_a
    const-string/jumbo v1, "video_call_sim_setting"

    invoke-static {v15, v1, v11, v12}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 559
    const/4 v10, 0x1

    .line 563
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v8, v0

    .line 564
    const/4 v1, 0x1

    if-le v9, v1, :cond_1f

    .line 565
    const-wide/16 v1, -0x5

    cmp-long v1, v17, v1

    if-nez v1, :cond_12

    .line 566
    const-string/jumbo v1, "voice_call_sim_setting"

    const-wide/16 v2, -0x1

    invoke-static {v15, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 570
    :cond_12
    const-wide/16 v1, -0x5

    cmp-long v1, v19, v1

    if-nez v1, :cond_13

    .line 571
    const-string/jumbo v1, "sms_sim_setting"

    const-wide/16 v2, -0x1

    invoke-static {v15, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 575
    :cond_13
    const-wide/16 v1, -0x5

    cmp-long v1, v21, v1

    if-nez v1, :cond_14

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 577
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 578
    invoke-virtual {v8, v6, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    .line 607
    :cond_14
    :goto_b
    const-wide/16 v1, -0x5

    .line 608
    const/4 v3, 0x1

    if-le v9, v3, :cond_23

    .line 609
    const-wide/16 v1, -0x1

    move-wide v11, v1

    .line 614
    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide/from16 v2, v17

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 615
    const-string/jumbo v1, "voice_call_sim_setting"

    invoke-static {v15, v1, v11, v12}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 616
    const/4 v10, 0x1

    .line 619
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide/from16 v2, v19

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 620
    const-string/jumbo v1, "sms_sim_setting"

    invoke-static {v15, v1, v11, v12}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 621
    const/4 v10, 0x1

    .line 624
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide/from16 v2, v21

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 626
    const/4 v1, 0x1

    if-le v9, v1, :cond_25

    .line 627
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 628
    invoke-virtual {v8, v6, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    .line 638
    :cond_17
    :goto_d
    const/4 v1, 0x1

    .line 641
    :goto_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v4, "broadCast intent ACTION_SIM_INFO_UPDATE "

    invoke-static {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 643
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 645
    if-lez v14, :cond_27

    .line 646
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone. New SIM detected. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1, v9, v13}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;II)V

    .line 654
    :cond_18
    :goto_f
    const-string v1, "gprs_connection_sim_setting"

    const-wide/16 v2, -0x5

    invoke-static {v15, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 655
    const-wide/16 v3, -0x5

    cmp-long v3, v1, v3

    if-eqz v3, :cond_19

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_19

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v1

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    :cond_19
    monitor-exit p0

    return-void

    .line 525
    :cond_1a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    goto/16 :goto_9

    .line 548
    :cond_1b
    if-nez v8, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move-wide v11, v4

    .line 549
    goto/16 :goto_a

    .line 552
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move-wide v11, v4

    .line 553
    goto/16 :goto_a

    .line 580
    :cond_1d
    invoke-virtual {v8, v4, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    goto/16 :goto_b

    .line 582
    :cond_1e
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_b

    .line 585
    :cond_1f
    const/4 v1, 0x1

    if-ne v9, v1, :cond_14

    .line 586
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget-wide v1, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 587
    const-string v3, "enable_internet_call_value"

    const/4 v11, 0x0

    invoke-static {v15, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 588
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_20

    if-eqz v3, :cond_20

    const-wide/16 v11, -0x5

    cmp-long v3, v17, v11

    if-nez v3, :cond_21

    .line 591
    :cond_20
    const-string/jumbo v3, "voice_call_sim_setting"

    invoke-static {v15, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 595
    :cond_21
    const-string/jumbo v3, "sms_sim_setting"

    invoke-static {v15, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 598
    const-wide/16 v11, -0x5

    cmp-long v3, v21, v11

    if-nez v3, :cond_14

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 600
    invoke-virtual {v8, v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    goto/16 :goto_b

    .line 602
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_b

    .line 610
    :cond_23
    const/4 v3, 0x1

    if-ne v9, v3, :cond_29

    .line 611
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget-wide v1, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide v11, v1

    goto/16 :goto_c

    .line 630
    :cond_24
    invoke-virtual {v8, v4, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    goto/16 :goto_d

    .line 632
    :cond_25
    if-lez v9, :cond_17

    .line 633
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget-wide v1, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v8, v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(J)Z

    goto/16 :goto_d

    .line 636
    :cond_26
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_d

    .line 648
    :cond_27
    if-eqz v1, :cond_18

    if-lez v9, :cond_18

    .line 649
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone No new SIM detected and Default SIM for some service has been removed. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_f

    :cond_28
    move v1, v10

    goto/16 :goto_e

    :cond_29
    move-wide v11, v1

    goto/16 :goto_c

    :cond_2a
    move v13, v1

    move v14, v2

    goto/16 :goto_3
.end method
