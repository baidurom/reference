.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$ValidationFailure;,
        Lcom/android/server/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final VALIDATE:Z

.field private static final localLOGV:Z

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TF;>;"
        }
    .end annotation
.end field

.field private final mOldResolver:Lcom/android/server/IntentResolverOld;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IntentResolverOld",
            "<TF;TR;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 608
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 712
    new-instance v0, Lcom/android/server/IntentResolver$2;

    invoke-direct {v0, p0}, Lcom/android/server/IntentResolver$2;-><init>(Lcom/android/server/IntentResolver;)V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mOldResolver:Lcom/android/server/IntentResolverOld;

    .line 733
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    .line 739
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    .line 746
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    .line 755
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    .line 760
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    .line 766
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    .line 771
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    return-void
.end method

.method private final addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 6
    .parameter
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[TF;>;"
    .local p3, filter:Landroid/content/IntentFilter;,"TF;"
    const/4 v5, 0x0

    .line 383
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 384
    .local v1, array:[Landroid/content/IntentFilter;,"[TF;"
    if-nez v1, :cond_0

    .line 385
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 386
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    aput-object p3, v1, v5

    .line 403
    :goto_0
    return-void

    .line 389
    :cond_0
    array-length v0, v1

    .line 390
    .local v0, N:I
    move v2, v0

    .line 391
    .local v2, i:I
    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    if-nez v4, :cond_1

    .line 392
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 394
    :cond_1
    if-ge v2, v0, :cond_2

    .line 395
    aput-object p3, v1, v2

    goto :goto_0

    .line 397
    :cond_2
    mul-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v3

    .line 398
    .local v3, newa:[Landroid/content/IntentFilter;,"[TF;"
    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    aput-object p3, v3, v0

    .line 400
    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V
    .locals 17
    .parameter "intent"
    .parameter
    .parameter "debug"
    .parameter "defaultOnly"
    .parameter "resolvedType"
    .parameter "scheme"
    .parameter
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List",
            "<TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p2, categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p7, src:[Landroid/content/IntentFilter;,"[TF;"
    .local p8, dest:Ljava/util/List;,"Ljava/util/List<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, action:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 539
    .local v6, data:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v15

    .line 541
    .local v15, packageName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v10

    .line 543
    .local v10, excludingStopped:Z
    if-eqz p7, :cond_2

    move-object/from16 v0, p7

    array-length v9, v0

    .line 544
    .local v9, N:I
    :goto_0
    const/4 v11, 0x0

    .line 547
    .local v11, hasNonDefaults:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v9, :cond_a

    aget-object v2, p7, v12

    .local v2, filter:Landroid/content/IntentFilter;,"TF;"
    if-eqz v2, :cond_a

    .line 549
    if-eqz p3, :cond_0

    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Matching against filter "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v2, v1}, Lcom/android/server/IntentResolver;->isFilterStopped(Landroid/content/IntentFilter;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 552
    if-eqz p3, :cond_1

    .line 553
    const-string v4, "IntentResolver"

    const-string v5, "  Filter\'s target is stopped; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 543
    .end local v2           #filter:Landroid/content/IntentFilter;,"TF;"
    .end local v9           #N:I
    .end local v11           #hasNonDefaults:Z
    .end local v12           #i:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 559
    .restart local v2       #filter:Landroid/content/IntentFilter;,"TF;"
    .restart local v9       #N:I
    .restart local v11       #hasNonDefaults:Z
    .restart local v12       #i:I
    :cond_3
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/IntentResolver;->packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 560
    if-eqz p3, :cond_1

    .line 561
    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Filter is not from package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; skipping"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 567
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Lcom/android/server/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 568
    if-eqz p3, :cond_1

    .line 569
    const-string v4, "IntentResolver"

    const-string v5, "  Filter\'s target already added"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 574
    :cond_5
    const-string v8, "IntentResolver"

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v13

    .line 575
    .local v13, match:I
    if-ltz v13, :cond_9

    .line 576
    if-eqz p3, :cond_6

    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Filter matched!  match=0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_6
    if-eqz p4, :cond_7

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 579
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v2, v13, v1}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v14

    .line 580
    .local v14, oneResult:Ljava/lang/Object;,"TR;"
    if-eqz v14, :cond_1

    .line 581
    move-object/from16 v0, p8

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 584
    .end local v14           #oneResult:Ljava/lang/Object;,"TR;"
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 587
    :cond_9
    if-eqz p3, :cond_1

    .line 589
    packed-switch v13, :pswitch_data_0

    .line 594
    const-string v16, "unknown reason"

    .line 596
    .local v16, reason:Ljava/lang/String;
    :goto_3
    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Filter did not match: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 590
    .end local v16           #reason:Ljava/lang/String;
    :pswitch_0
    const-string v16, "action"

    .restart local v16       #reason:Ljava/lang/String;
    goto :goto_3

    .line 591
    .end local v16           #reason:Ljava/lang/String;
    :pswitch_1
    const-string v16, "category"

    .restart local v16       #reason:Ljava/lang/String;
    goto :goto_3

    .line 592
    .end local v16           #reason:Ljava/lang/String;
    :pswitch_2
    const-string v16, "data"

    .restart local v16       #reason:Ljava/lang/String;
    goto :goto_3

    .line 593
    .end local v16           #reason:Ljava/lang/String;
    :pswitch_3
    const-string v16, "type"

    .restart local v16       #reason:Ljava/lang/String;
    goto :goto_3

    .line 601
    .end local v2           #filter:Landroid/content/IntentFilter;,"TF;"
    .end local v13           #match:I
    .end local v16           #reason:Ljava/lang/String;
    :cond_a
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_b

    if-eqz v11, :cond_b

    .line 602
    const-string v4, "IntentResolver"

    const-string v5, "resolveIntent failed: found match, but none with Intent.CATEGORY_DEFAULT"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_b
    return-void

    .line 589
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private compareMaps(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 22
    .parameter "src"
    .parameter "name"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, cur:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[TF;>;"
    .local p4, old:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result v19

    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 631
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v19, 0x80

    move/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 632
    .local v14, missing:Ljava/lang/StringBuilder;
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 633
    .local v5, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    .line 634
    .local v3, curArray:[Landroid/content/IntentFilter;,"[TF;"
    if-nez v3, :cond_0

    .line 635
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_1

    .line 636
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 641
    .end local v3           #curArray:[Landroid/content/IntentFilter;,"[TF;"
    .end local v5           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v19, 0x80

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 642
    .local v7, extra:Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 643
    .local v6, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[TF;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_3

    .line 644
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_4

    .line 645
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    :cond_4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 650
    .end local v6           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[TF;>;"
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x400

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 651
    .local v18, srcStr:Ljava/lang/StringBuilder;
    new-instance v17, Landroid/util/StringBuilderPrinter;

    invoke-direct/range {v17 .. v18}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 652
    .local v17, printer:Landroid/util/StringBuilderPrinter;
    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 653
    new-instance v10, Lcom/android/server/IntentResolver$ValidationFailure;

    invoke-direct {v10}, Lcom/android/server/IntentResolver$ValidationFailure;-><init>()V

    .line 654
    .local v10, here:Lcom/android/server/IntentResolver$ValidationFailure;
    invoke-virtual {v10}, Lcom/android/server/IntentResolver$ValidationFailure;->fillInStackTrace()Ljava/lang/Throwable;

    .line 655
    const-string v19, "IntentResolver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "New map "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " size is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; old implementation is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; missing: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; extra: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; src: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    .end local v7           #extra:Ljava/lang/StringBuilder;
    .end local v10           #here:Lcom/android/server/IntentResolver$ValidationFailure;
    .end local v14           #missing:Ljava/lang/StringBuilder;
    .end local v17           #printer:Landroid/util/StringBuilderPrinter;
    .end local v18           #srcStr:Ljava/lang/StringBuilder;
    :cond_6
    :goto_2
    return-void

    .line 662
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 663
    .restart local v5       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    .line 664
    .restart local v3       #curArray:[Landroid/content/IntentFilter;,"[TF;"
    if-eqz v3, :cond_9

    array-length v4, v3

    .line 665
    .local v4, curLen:I
    :goto_4
    if-nez v4, :cond_a

    .line 666
    new-instance v10, Lcom/android/server/IntentResolver$ValidationFailure;

    invoke-direct {v10}, Lcom/android/server/IntentResolver$ValidationFailure;-><init>()V

    .line 667
    .restart local v10       #here:Lcom/android/server/IntentResolver$ValidationFailure;
    invoke-virtual {v10}, Lcom/android/server/IntentResolver$ValidationFailure;->fillInStackTrace()Ljava/lang/Throwable;

    .line 668
    const-string v20, "IntentResolver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "New map "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " doesn\'t contain expected key "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " (array="

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ")"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 664
    .end local v4           #curLen:I
    .end local v10           #here:Lcom/android/server/IntentResolver$ValidationFailure;
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 672
    .restart local v4       #curLen:I
    :cond_a
    :goto_5
    if-lez v4, :cond_b

    add-int/lit8 v19, v4, -0x1

    aget-object v19, v3, v19

    if-nez v19, :cond_b

    .line 673
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 675
    :cond_b
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 676
    .local v15, oldArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 677
    .local v16, oldLen:I
    move/from16 v0, v16

    if-eq v4, v0, :cond_c

    .line 678
    new-instance v10, Lcom/android/server/IntentResolver$ValidationFailure;

    invoke-direct {v10}, Lcom/android/server/IntentResolver$ValidationFailure;-><init>()V

    .line 679
    .restart local v10       #here:Lcom/android/server/IntentResolver$ValidationFailure;
    invoke-virtual {v10}, Lcom/android/server/IntentResolver$ValidationFailure;->fillInStackTrace()Ljava/lang/Throwable;

    .line 680
    const-string v20, "IntentResolver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "New map "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " entry "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " size is "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "; old implementation is "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 684
    .end local v10           #here:Lcom/android/server/IntentResolver$ValidationFailure;
    :cond_c
    const/4 v11, 0x0

    .local v11, i:I
    :goto_6
    move/from16 v0, v16

    if-ge v11, v0, :cond_10

    .line 685
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentFilter;

    .line 686
    .local v8, f:Landroid/content/IntentFilter;,"TF;"
    const/4 v9, 0x0

    .line 687
    .local v9, found:Z
    const/4 v13, 0x0

    .local v13, j:I
    :goto_7
    if-ge v13, v4, :cond_d

    .line 688
    aget-object v19, v3, v13

    move-object/from16 v0, v19

    if-ne v0, v8, :cond_f

    .line 689
    const/4 v9, 0x1

    .line 693
    :cond_d
    if-nez v9, :cond_e

    .line 694
    new-instance v10, Lcom/android/server/IntentResolver$ValidationFailure;

    invoke-direct {v10}, Lcom/android/server/IntentResolver$ValidationFailure;-><init>()V

    .line 695
    .restart local v10       #here:Lcom/android/server/IntentResolver$ValidationFailure;
    invoke-virtual {v10}, Lcom/android/server/IntentResolver$ValidationFailure;->fillInStackTrace()Ljava/lang/Throwable;

    .line 696
    const-string v20, "IntentResolver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "New map "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " entry + "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " doesn\'t contain expected filter "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    .end local v10           #here:Lcom/android/server/IntentResolver$ValidationFailure;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 687
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 700
    .end local v8           #f:Landroid/content/IntentFilter;,"TF;"
    .end local v9           #found:Z
    .end local v13           #j:I
    :cond_10
    const/4 v11, 0x0

    :goto_8
    if-ge v11, v4, :cond_8

    .line 701
    aget-object v19, v3, v11

    if-nez v19, :cond_11

    .line 702
    new-instance v10, Lcom/android/server/IntentResolver$ValidationFailure;

    invoke-direct {v10}, Lcom/android/server/IntentResolver$ValidationFailure;-><init>()V

    .line 703
    .restart local v10       #here:Lcom/android/server/IntentResolver$ValidationFailure;
    invoke-virtual {v10}, Lcom/android/server/IntentResolver$ValidationFailure;->fillInStackTrace()Ljava/lang/Throwable;

    .line 704
    const-string v20, "IntentResolver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "New map "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " entry + "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " has unexpected null at "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "; array: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 700
    .end local v10           #here:Lcom/android/server/IntentResolver$ValidationFailure;
    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_8
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 528
    .local v0, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 529
    const/4 v1, 0x0

    .line 531
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/util/FastImmutableArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    .local p2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, dest:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_1

    .line 469
    const/4 v1, 0x0

    .line 479
    :cond_0
    return v1

    .line 472
    :cond_1
    const/4 v1, 0x0

    .line 473
    .local v1, num:I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    .local v0, name:Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 477
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    const/4 v5, 0x0

    .line 406
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 407
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    move v3, v5

    .line 433
    :cond_0
    return v3

    .line 411
    :cond_1
    const/4 v3, 0x0

    .line 412
    .local v3, num:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 413
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 414
    .local v2, name:Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 416
    move-object v0, v2

    .line 417
    .local v0, baseName:Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 418
    .local v4, slashpos:I
    if-lez v4, :cond_2

    .line 419
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 424
    :goto_1
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v2, p1}, Lcom/android/server/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 426
    if-lez v4, :cond_3

    .line 427
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 421
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 429
    :cond_3
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private final remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter "name"
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[TF;>;"
    const/4 v6, 0x0

    .line 500
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 501
    .local v1, array:[Landroid/content/IntentFilter;,"[TF;"
    if-eqz v1, :cond_4

    .line 502
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    .line 503
    .local v0, LAST:I
    :goto_0
    if-ltz v0, :cond_0

    aget-object v5, v1, v0

    if-nez v5, :cond_0

    .line 504
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 506
    :cond_0
    move v2, v0

    .local v2, idx:I
    :goto_1
    if-ltz v2, :cond_3

    .line 507
    aget-object v5, v1, v2

    if-ne v5, p3, :cond_2

    .line 508
    sub-int v4, v0, v2

    .line 509
    .local v4, remain:I
    if-lez v4, :cond_1

    .line 510
    add-int/lit8 v5, v2, 0x1

    invoke-static {v1, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    :cond_1
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 513
    add-int/lit8 v0, v0, -0x1

    .line 506
    .end local v4           #remain:I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 516
    :cond_3
    if-gez v0, :cond_5

    .line 517
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .end local v0           #LAST:I
    .end local v2           #idx:I
    :cond_4
    :goto_2
    return-void

    .line 518
    .restart local v0       #LAST:I
    .restart local v2       #idx:I
    :cond_5
    array-length v5, v1

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_4

    .line 519
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v3

    .line 520
    .local v3, newa:[Landroid/content/IntentFilter;,"[TF;"
    add-int/lit8 v5, v0, 0x1

    invoke-static {v1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    .local p2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, dest:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_1

    .line 485
    const/4 v1, 0x0

    .line 495
    :cond_0
    return v1

    .line 488
    :cond_1
    const/4 v1, 0x0

    .line 489
    .local v1, num:I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 491
    .local v0, name:Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 493
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    const/4 v5, 0x0

    .line 437
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 438
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    move v3, v5

    .line 463
    :cond_0
    return v3

    .line 442
    :cond_1
    const/4 v3, 0x0

    .line 443
    .local v3, num:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 444
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 445
    .local v2, name:Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 447
    move-object v0, v2

    .line 448
    .local v0, baseName:Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 449
    .local v4, slashpos:I
    if-lez v4, :cond_2

    .line 450
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_1
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v2, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    if-lez v4, :cond_3

    .line 458
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 452
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 460
    :cond_3
    iget-object v6, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private verifyDataStructures(Landroid/content/IntentFilter;)V
    .locals 3
    .parameter "src"

    .prologue
    .line 620
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    const-string v0, "mTypeToFilter"

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mOldResolver:Lcom/android/server/IntentResolverOld;

    iget-object v2, v2, Lcom/android/server/IntentResolverOld;->mTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->compareMaps(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 621
    const-string v0, "mBaseTypeToFilter"

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mOldResolver:Lcom/android/server/IntentResolverOld;

    iget-object v2, v2, Lcom/android/server/IntentResolverOld;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->compareMaps(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 622
    const-string v0, "mWildTypeToFilter"

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mOldResolver:Lcom/android/server/IntentResolverOld;

    iget-object v2, v2, Lcom/android/server/IntentResolverOld;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->compareMaps(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 623
    const-string v0, "mSchemeToFilter"

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mOldResolver:Lcom/android/server/IntentResolverOld;

    iget-object v2, v2, Lcom/android/server/IntentResolverOld;->mSchemeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->compareMaps(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 624
    const-string v0, "mActionToFilter"

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mOldResolver:Lcom/android/server/IntentResolverOld;

    iget-object v2, v2, Lcom/android/server/IntentResolverOld;->mActionToFilter:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->compareMaps(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 625
    const-string v0, "mTypedActionToFilter"

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mOldResolver:Lcom/android/server/IntentResolverOld;

    iget-object v2, v2, Lcom/android/server/IntentResolverOld;->mTypedActionToFilter:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/IntentResolver;->compareMaps(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 626
    return-void
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, f:Landroid/content/IntentFilter;,"TF;"
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    const-string v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, numS:I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, numT:I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 66
    :cond_0
    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 75
    :cond_1
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List",
            "<TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    .local p2, dest:Ljava/util/List;,"Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .parameter "out"
    .parameter "title"
    .parameter "prefix"
    .parameter "packageName"
    .parameter "printFilter"

    .prologue
    .line 146
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, innerPrefix:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, sepPrefix:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, curPrefix:Ljava/lang/String;
    const-string v3, "Full MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    move-object v2, v8

    .line 153
    :cond_0
    const-string v3, "Base MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    move-object v2, v8

    .line 157
    :cond_1
    const-string v3, "Wild MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    move-object v2, v8

    .line 161
    :cond_2
    const-string v3, "Schemes:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    move-object v2, v8

    .line 165
    :cond_3
    const-string v3, "Non-Data Actions:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    move-object v2, v8

    .line 169
    :cond_4
    const-string v3, "MIME Typed Actions:"

    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    move-object v2, v8

    .line 173
    :cond_5
    if-ne v2, v8, :cond_6

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter "out"
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, filter:Landroid/content/IntentFilter;,"TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z
    .locals 14
    .parameter "out"
    .parameter "titlePrefix"
    .parameter "title"
    .parameter "prefix"
    .parameter
    .parameter "packageName"
    .parameter "printFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[TF;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, eprefix:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, fprefix:Ljava/lang/String;
    const/4 v10, 0x0

    .line 113
    .local v10, printedSomething:Z
    const/4 v11, 0x0

    .line 114
    .local v11, printer:Landroid/util/Printer;
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 115
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[TF;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/IntentFilter;

    .line 116
    .local v2, a:[Landroid/content/IntentFilter;,"[TF;"
    array-length v1, v2

    .line 117
    .local v1, N:I
    const/4 v9, 0x0

    .line 119
    .local v9, printedHeader:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v1, :cond_0

    aget-object v5, v2, v7

    .local v5, filter:Landroid/content/IntentFilter;,"TF;"
    if-eqz v5, :cond_0

    .line 120
    if-eqz p6, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 123
    :cond_2
    if-eqz p3, :cond_3

    .line 124
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    const/16 p3, 0x0

    .line 127
    :cond_3
    if-nez v9, :cond_4

    .line 128
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    const/4 v9, 0x1

    .line 131
    :cond_4
    const/4 v10, 0x1

    .line 132
    invoke-virtual {p0, p1, v6, v5}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 133
    if-eqz p7, :cond_1

    .line 134
    if-nez v11, :cond_5

    .line 135
    new-instance v11, Landroid/util/PrintWriterPrinter;

    .end local v11           #printer:Landroid/util/Printer;
    invoke-direct {v11, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 137
    .restart local v11       #printer:Landroid/util/Printer;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    .end local v1           #N:I
    .end local v2           #a:[Landroid/content/IntentFilter;,"[TF;"
    .end local v3           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[TF;>;"
    .end local v5           #filter:Landroid/content/IntentFilter;,"TF;"
    .end local v7           #i:I
    .end local v9           #printedHeader:Z
    :cond_6
    return v10
.end method

.method public filterIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract newArray(I)[Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter "match"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    return-object p1
.end method

.method protected abstract packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 41
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "defaultOnly"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, scheme:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v10, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b

    const/4 v5, 0x1

    .line 242
    .local v5, debug:Z
    :goto_0
    if-eqz v5, :cond_0

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolving type "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " scheme "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " of intent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    const/4 v9, 0x0

    .line 247
    .local v9, firstTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    const/16 v18, 0x0

    .line 248
    .local v18, secondTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    const/16 v26, 0x0

    .line 249
    .local v26, thirdTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    const/16 v34, 0x0

    .line 253
    .local v34, schemeCut:[Landroid/content/IntentFilter;,"[TF;"
    if-eqz p2, :cond_4

    .line 254
    const/16 v2, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v40

    .line 255
    .local v40, slashpos:I
    if-lez v40, :cond_4

    .line 256
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 257
    .local v37, baseType:Ljava/lang/String;
    const-string v2, "*"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 258
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v40, 0x2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v40, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_c

    .line 262
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 263
    .restart local v9       #firstTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    if-eqz v5, :cond_2

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #secondTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    .line 265
    .restart local v18       #secondTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    if-eqz v5, :cond_3

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #thirdTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    check-cast v26, [Landroid/content/IntentFilter;

    .line 276
    .restart local v26       #thirdTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    if-eqz v5, :cond_4

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Third type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v37           #baseType:Ljava/lang/String;
    .end local v40           #slashpos:I
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34           #schemeCut:[Landroid/content/IntentFilter;,"[TF;"
    check-cast v34, [Landroid/content/IntentFilter;

    .line 292
    .restart local v34       #schemeCut:[Landroid/content/IntentFilter;,"[TF;"
    if-eqz v5, :cond_5

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheme list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_5
    if-nez p2, :cond_6

    if-nez v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 300
    .restart local v9       #firstTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    if-eqz v5, :cond_6

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v4

    .line 304
    .local v4, categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    if-eqz v9, :cond_7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v11, p4

    .line 305
    invoke-direct/range {v2 .. v11}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 308
    :cond_7
    if-eqz v18, :cond_8

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v4

    move v14, v5

    move/from16 v15, p3

    move-object/from16 v16, p2

    move-object/from16 v17, v8

    move-object/from16 v19, v10

    move/from16 v20, p4

    .line 309
    invoke-direct/range {v11 .. v20}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 312
    :cond_8
    if-eqz v26, :cond_9

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, p3

    move-object/from16 v24, p2

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v28, p4

    .line 313
    invoke-direct/range {v19 .. v28}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 316
    :cond_9
    if-eqz v34, :cond_a

    move-object/from16 v27, p0

    move-object/from16 v28, p1

    move-object/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, p3

    move-object/from16 v32, p2

    move-object/from16 v33, v8

    move-object/from16 v35, v10

    move/from16 v36, p4

    .line 317
    invoke-direct/range {v27 .. v36}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 320
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 332
    if-eqz v5, :cond_f

    .line 333
    const-string v2, "IntentResolver"

    const-string v3, "Final result list:"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    .line 335
    .local v39, r:Ljava/lang/Object;,"TR;"
    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 239
    .end local v4           #categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v5           #debug:Z
    .end local v9           #firstTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    .end local v18           #secondTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    .end local v26           #thirdTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    .end local v34           #schemeCut:[Landroid/content/IntentFilter;,"[TF;"
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v39           #r:Ljava/lang/Object;,"TR;"
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 268
    .restart local v5       #debug:Z
    .restart local v9       #firstTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    .restart local v18       #secondTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    .restart local v26       #thirdTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    .restart local v34       #schemeCut:[Landroid/content/IntentFilter;,"[TF;"
    .restart local v37       #baseType:Ljava/lang/String;
    .restart local v40       #slashpos:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 269
    .restart local v9       #firstTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    if-eqz v5, :cond_d

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #secondTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    .line 271
    .restart local v18       #secondTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    if-eqz v5, :cond_3

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 277
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 282
    .restart local v9       #firstTypeCut:[Landroid/content/IntentFilter;,"[TF;"
    if-eqz v5, :cond_4

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Typed Action list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 338
    .end local v37           #baseType:Ljava/lang/String;
    .end local v40           #slashpos:I
    .restart local v4       #categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    :cond_f
    return-object v10
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .locals 13
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "defaultOnly"
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<[TF;>;I)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[TF;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v9, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TR;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    .line 222
    .local v4, debug:Z
    :goto_0
    invoke-static {p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v3

    .line 223
    .local v3, categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, scheme:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 225
    .local v11, N:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v11, :cond_1

    .line 226
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/IntentFilter;

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-object v6, p2

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 225
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 219
    .end local v3           #categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v4           #debug:Z
    .end local v7           #scheme:Ljava/lang/String;
    .end local v11           #N:I
    .end local v12           #i:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 229
    .restart local v3       #categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .restart local v4       #debug:Z
    .restart local v7       #scheme:Ljava/lang/String;
    .restart local v11       #N:I
    .restart local v12       #i:I
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 230
    return-object v9
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, f:Landroid/content/IntentFilter;,"TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, f:Landroid/content/IntentFilter;,"TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    const-string v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, numS:I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 97
    .local v1, numT:I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 101
    :cond_0
    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 105
    :cond_1
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, this:Lcom/android/server/IntentResolver;,"Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, results:Ljava/util/List;,"Ljava/util/List<TR;>;"
    sget-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 376
    return-void
.end method
