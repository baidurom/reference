.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;,
        Lcom/android/internal/telephony/IntRangeManager$IntRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    .line 166
    return-void
.end method

.method private tryAddSingleRange(IIZ)Z
    .locals 1
    .parameter "startId"
    .parameter "endId"
    .parameter "selected"

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 542
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 543
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public clearAllRanges()V
    .locals 2

    .prologue
    .line 559
    const-string v0, "IntRangeManager"

    const-string v1, "clear all the ranges"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 561
    return-void
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 22
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 367
    .local v11, len:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_13

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 369
    .local v16, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v19, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 370
    const/16 v19, 0x0

    .line 497
    .end local v16           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_1
    monitor-exit p0

    return v19

    .line 371
    .restart local v16       #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    :try_start_1
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v19

    if-gt v0, v1, :cond_12

    .line 374
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    .line 377
    .local v4, clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 378
    .local v7, crLength:I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_3

    .line 379
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 380
    .local v5, cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    iget-object v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->client:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 382
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 384
    const/16 v19, 0x1

    goto :goto_1

    .line 386
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .line 389
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 397
    .end local v5           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_3
    const/high16 v10, -0x8000

    .line 398
    .local v10, largestEndId:I
    const/16 v18, 0x0

    .line 400
    .local v18, updateStarted:Z
    const/4 v6, 0x0

    .local v6, crIndex:I
    :goto_2
    if-ge v6, v7, :cond_12

    .line 401
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 402
    .restart local v5       #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_10

    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_10

    iget-object v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->client:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 404
    add-int/lit8 v19, v7, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_6

    .line 405
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v10, :cond_4

    .line 407
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 408
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 411
    :cond_4
    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 412
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    move-object/from16 v0, v16

    iput v10, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 414
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 416
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 424
    :cond_6
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    .line 426
    .local v17, rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    if-nez v6, :cond_8

    .line 431
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v19

    iget v15, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    .line 432
    .local v15, nextStartId:I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v15, v0, :cond_7

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 434
    const/16 v18, 0x1

    .line 435
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v19, v0

    add-int/lit8 v20, v15, -0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 436
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 439
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    .line 446
    .end local v15           #nextStartId:I
    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v12, newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object/from16 v8, v17

    .line 449
    .local v8, currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v14, v6, 0x1

    .local v14, nextIndex:I
    :goto_3
    if-ge v14, v7, :cond_c

    .line 450
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 451
    .local v13, nextCr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v19, v0

    add-int/lit8 v20, v10, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 452
    if-nez v18, :cond_9

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 454
    const/16 v18, 0x1

    .line 456
    :cond_9
    add-int/lit8 v19, v10, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 457
    iput v10, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 458
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .end local v8           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, p0

    invoke-direct {v8, v0, v13}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 463
    .restart local v8       #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_4
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v10, :cond_a

    .line 464
    iget v10, v13, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    .line 449
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 461
    :cond_b
    iget-object v0, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 365
    .end local v4           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v5           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v6           #crIndex:I
    .end local v7           #crLength:I
    .end local v8           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v9           #i:I
    .end local v10           #largestEndId:I
    .end local v11           #len:I
    .end local v12           #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v13           #nextCr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v14           #nextIndex:I
    .end local v16           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v17           #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v18           #updateStarted:Z
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 469
    .restart local v4       #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v5       #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v6       #crIndex:I
    .restart local v7       #crLength:I
    .restart local v8       #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v9       #i:I
    .restart local v10       #largestEndId:I
    .restart local v11       #len:I
    .restart local v12       #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .restart local v14       #nextIndex:I
    .restart local v16       #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v17       #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v18       #updateStarted:Z
    :cond_c
    move/from16 v0, p2

    if-ge v10, v0, :cond_e

    .line 470
    if-nez v18, :cond_d

    .line 471
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 472
    const/16 v18, 0x1

    .line 474
    :cond_d
    add-int/lit8 v19, v10, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 475
    iput v10, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 477
    :cond_e
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    if-eqz v18, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v19

    if-nez v19, :cond_f

    .line 480
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 484
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v12}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 486
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 489
    .end local v8           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v12           #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v14           #nextIndex:I
    .end local v17           #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_10
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v10, :cond_11

    .line 490
    iget v10, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 367
    .end local v4           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v5           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v6           #crIndex:I
    .end local v7           #crLength:I
    .end local v10           #largestEndId:I
    .end local v18           #updateStarted:Z
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 497
    .end local v16           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_1
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 19
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 182
    .local v10, len:I
    if-nez v10, :cond_1

    .line 183
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    const/16 v16, 0x1

    .line 350
    :goto_0
    monitor-exit p0

    return v16

    .line 187
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 191
    :cond_1
    const/4 v13, 0x0

    .local v13, startIndex:I
    :goto_1
    if-ge v13, v10, :cond_19

    .line 192
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 193
    .local v12, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, v16

    if-ge v0, v1, :cond_f

    .line 196
    add-int/lit8 v16, p2, 0x1

    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 198
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 200
    const/16 v16, 0x1

    goto :goto_0

    .line 202
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 204
    :cond_3
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    if-gt v0, v1, :cond_5

    .line 206
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 207
    move/from16 v0, p1

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 208
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v18 .. v22}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 209
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 211
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 215
    :cond_5
    add-int/lit8 v5, v13, 0x1

    .local v5, endIndex:I
    :goto_2
    if-ge v5, v10, :cond_c

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 217
    .local v6, endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v16, p2, 0x1

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 219
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 220
    move/from16 v0, p1

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 221
    move/from16 v0, p2

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 223
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v18 .. v22}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 229
    add-int/lit8 v8, v13, 0x1

    .line 230
    .local v8, joinIndex:I
    move v7, v8

    .local v7, i:I
    :goto_3
    if-ge v7, v5, :cond_6

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 232
    .local v9, joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 235
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_6
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 237
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 239
    :cond_8
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    if-gt v0, v1, :cond_b

    .line 242
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 243
    move/from16 v0, p1

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 244
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 246
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v18 .. v22}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 252
    add-int/lit8 v8, v13, 0x1

    .line 253
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_4
    if-gt v7, v5, :cond_9

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 255
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 258
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 260
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 215
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 266
    .end local v6           #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_c
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 267
    move/from16 v0, p1

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 268
    move/from16 v0, p2

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 270
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v18 .. v22}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 276
    add-int/lit8 v8, v13, 0x1

    .line 277
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_5
    if-ge v7, v10, :cond_d

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 279
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 282
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_d
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 284
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 287
    .end local v5           #endIndex:I
    :cond_f
    add-int/lit8 v16, p1, 0x1

    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_18

    .line 288
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    if-gt v0, v1, :cond_10

    .line 290
    new-instance v16, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 291
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 294
    :cond_10
    move v5, v13

    .line 295
    .restart local v5       #endIndex:I
    add-int/lit8 v14, v13, 0x1

    .local v14, testIndex:I
    :goto_6
    if-ge v14, v10, :cond_11

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 297
    .local v15, testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v16, p2, 0x1

    iget v0, v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_12

    .line 304
    .end local v15           #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_11
    if-ne v5, v13, :cond_14

    .line 307
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 308
    move/from16 v0, p2

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 309
    new-instance v16, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 310
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 300
    .restart local v15       #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_12
    move v5, v14

    .line 295
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 312
    .end local v15           #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 316
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 321
    .restart local v6       #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    move/from16 v0, p2

    move/from16 v1, v16

    if-gt v0, v1, :cond_15

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v16, v0

    add-int/lit8 v11, v16, -0x1

    .line 322
    .local v11, newRangeEndId:I
    :goto_7
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 323
    move/from16 v0, p2

    iput v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 325
    new-instance v16, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 331
    add-int/lit8 v8, v13, 0x1

    .line 332
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_8
    if-ge v7, v5, :cond_16

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 334
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .end local v7           #i:I
    .end local v8           #joinIndex:I
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11           #newRangeEndId:I
    :cond_15
    move/from16 v11, p2

    .line 321
    goto :goto_7

    .line 337
    .restart local v7       #i:I
    .restart local v8       #joinIndex:I
    .restart local v11       #newRangeEndId:I
    :cond_16
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 339
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_17
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 191
    .end local v5           #endIndex:I
    .end local v6           #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11           #newRangeEndId:I
    .end local v14           #testIndex:I
    :cond_18
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 346
    .end local v12           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_19
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddSingleRange(IIZ)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 350
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 179
    .end local v10           #len:I
    .end local v13           #startIndex:I
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16
.end method

.method protected abstract finishUpdate()Z
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected abstract startUpdate()V
.end method

.method public updateRanges()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 508
    iget-object v5, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 509
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 510
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 511
    .local v3, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v4, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 512
    .local v4, start:I
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 514
    .local v0, end:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 515
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 517
    .local v2, nextNode:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v5, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    add-int/lit8 v6, v0, 0x1

    if-gt v5, v6, :cond_1

    .line 518
    iget v5, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    if-le v5, v0, :cond_0

    .line 519
    iget v0, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {p0, v4, v0, v7}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 523
    iget v4, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 524
    iget v0, v2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    goto :goto_0

    .line 528
    .end local v2           #nextNode:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_2
    invoke-virtual {p0, v4, v0, v7}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 530
    .end local v0           #end:I
    .end local v3           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v4           #start:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v5

    return v5
.end method
