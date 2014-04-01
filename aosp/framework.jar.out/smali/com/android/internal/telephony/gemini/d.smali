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
    .line 437
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 23

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v2, 0x0

    .line 442
    const/4 v1, 0x0

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 444
    if-eqz v3, :cond_4

    .line 445
    iget-object v2, v3, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 446
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

    .line 447
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 448
    const-string/jumbo v5, "slot"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v4, v2

    .line 455
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 456
    if-eqz v2, :cond_5

    .line 457
    iget-object v1, v2, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 458
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

    .line 459
    new-instance v3, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 460
    const-string/jumbo v5, "slot"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v3, v1

    .line 469
    :goto_1
    const/4 v2, 0x0

    .line 470
    const/4 v1, 0x0

    .line 471
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 472
    :cond_0
    const-string v5, "PHONE"

    const-string v6, "getAllIccIdsDone No SIM inserted in Slot 0, set the slot for Removed SIM to NONE "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 490
    :cond_2
    const-string v3, "PHONE"

    const-string v4, "getAllIccIdsDone No SIM inserted in Slot 1, set the slot for Removed SIM to NONE "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v1

    move v13, v2

    .line 505
    :goto_3
    const-wide/16 v4, -0x3

    .line 506
    const-wide/16 v6, -0x3

    .line 507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 508
    if-nez v14, :cond_c

    const/4 v1, 0x0

    move v8, v1

    .line 509
    :goto_4
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v8, :cond_e

    .line 510
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    .line 511
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v3, :cond_d

    .line 512
    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 509
    :cond_3
    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 452
    :cond_4
    const-string v3, "PHONE"

    const-string v4, "getAllIccIdsDone No sim in slot0 for last time "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    goto/16 :goto_0

    .line 464
    :cond_5
    const-string v2, "PHONE"

    const-string v3, "getAllIccIdsDone No sim in slot1 for last time "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    goto :goto_1

    .line 474
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 477
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

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

    .line 478
    const-string v5, "PHONE"

    const-string v6, "getAllIccIdsDone special SIM with invalid ICCID is inserted in slot1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 484
    const/4 v2, 0x1

    .line 485
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 480
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 492
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 493
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

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

    .line 494
    const-string v5, "PHONE"

    const-string v6, "getAllIccIdsDone special SIM with invalid ICCID is inserted in slot2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 500
    add-int/lit8 v2, v2, 0x1

    .line 501
    or-int/lit8 v1, v1, 0x2

    move v12, v1

    move v13, v2

    goto/16 :goto_3

    .line 496
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_8

    .line 508
    :cond_c
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    move v8, v1

    goto/16 :goto_4

    .line 513
    :cond_d
    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_3

    .line 514
    iget-wide v6, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto/16 :goto_6

    .line 517
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

    .line 519
    if-lez v13, :cond_f

    .line 520
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone New SIM detected. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1, v14}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 525
    if-lez v1, :cond_19

    .line 526
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1, v14}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    .line 531
    :cond_f
    :goto_9
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone set PROPERTY_SIM_INFO_READY to true. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v1, "gsm.siminfo.ready"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllIccIdsDone  PROPERTY_SIM_INFO_READY after set is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.siminfo.ready"

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "video_call_sim_setting"

    const-wide/16 v9, -0x5

    invoke-static {v1, v2, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v9, "voice_call_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v1, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v15

    .line 539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v9, "sms_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v1, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v9, "gprs_connection_sim_setting"

    const-wide/16 v10, -0x5

    invoke-static {v1, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    .line 542
    const/4 v9, 0x0

    .line 546
    const-wide/16 v10, -0x5

    .line 547
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v21

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 549
    const/4 v1, 0x1

    move/from16 v0, v21

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-wide v10, v6

    .line 560
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v21, "video_call_sim_setting"

    move-object/from16 v0, v21

    invoke-static {v1, v0, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 562
    const/4 v9, 0x1

    .line 566
    :cond_11
    const/4 v1, 0x1

    if-le v8, v1, :cond_1d

    .line 567
    const-wide/16 v1, -0x5

    cmp-long v1, v15, v1

    if-nez v1, :cond_12

    .line 568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_call_sim_setting"

    const-wide/16 v10, -0x1

    invoke-static {v1, v2, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 572
    :cond_12
    const-wide/16 v1, -0x5

    cmp-long v1, v17, v1

    if-nez v1, :cond_13

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sms_sim_setting"

    const-wide/16 v10, -0x1

    invoke-static {v1, v2, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 577
    :cond_13
    const-wide/16 v1, -0x5

    cmp-long v1, v19, v1

    if-nez v1, :cond_14

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 607
    :cond_14
    :goto_b
    const-wide/16 v10, -0x5

    .line 608
    const/4 v1, 0x1

    if-le v8, v1, :cond_21

    .line 609
    const-wide/16 v10, -0x1

    .line 614
    :cond_15
    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide v2, v15

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 615
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_call_sim_setting"

    invoke-static {v1, v2, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 616
    const/4 v9, 0x1

    .line 619
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide/from16 v2, v17

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sms_sim_setting"

    invoke-static {v1, v2, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 621
    const/4 v9, 0x1

    .line 624
    :cond_17
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v3, "broadCast intent ACTION_SIM_INFO_UPDATE "

    invoke-static {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 626
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide/from16 v2, v19

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 631
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 632
    const/4 v1, 0x1

    if-le v8, v1, :cond_24

    .line 638
    :goto_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 640
    const/4 v1, 0x1

    .line 643
    :goto_e
    if-lez v13, :cond_23

    .line 644
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone. New SIM detected. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1, v8, v12}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;II)V

    .line 652
    :cond_18
    :goto_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    monitor-exit p0

    return-void

    .line 528
    :cond_19
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1, v14}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    goto/16 :goto_9

    .line 551
    :cond_1a
    if-nez v21, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move-wide v10, v4

    .line 552
    goto/16 :goto_a

    .line 555
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move-wide v10, v4

    .line 556
    goto/16 :goto_a

    .line 581
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    const-wide/16 v10, 0x0

    invoke-static {v1, v2, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_b

    .line 585
    :cond_1d
    const/4 v1, 0x1

    if-ne v8, v1, :cond_14

    .line 586
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget-wide v1, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v10, "enable_internet_call_value"

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 589
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1e

    if-eqz v3, :cond_1e

    const-wide/16 v10, -0x5

    cmp-long v3, v15, v10

    if-nez v3, :cond_1f

    .line 591
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v10, "voice_call_sim_setting"

    invoke-static {v3, v10, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 595
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v10, "sms_sim_setting"

    invoke-static {v3, v10, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 598
    const-wide/16 v10, -0x5

    cmp-long v3, v19, v10

    if-nez v3, :cond_14

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v10, "gprs_connection_sim_setting"

    invoke-static {v3, v10, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_b

    .line 602
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    const-wide/16 v10, 0x0

    invoke-static {v1, v2, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_b

    .line 610
    :cond_21
    const/4 v1, 0x1

    if-ne v8, v1, :cond_15

    .line 611
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget-wide v10, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto/16 :goto_c

    .line 636
    :cond_22
    const-wide/16 v4, 0x0

    goto/16 :goto_d

    .line 646
    :cond_23
    if-eqz v1, :cond_18

    if-lez v8, :cond_18

    .line 647
    const-string v1, "PHONE"

    const-string v2, "getAllIccIdsDone No new SIM detected and Default SIM for some service has been removed. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v1, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_f

    :cond_24
    move-wide v4, v10

    goto/16 :goto_d

    :cond_25
    move v1, v9

    goto/16 :goto_e

    :cond_26
    move v12, v1

    move v13, v2

    goto/16 :goto_3
.end method
