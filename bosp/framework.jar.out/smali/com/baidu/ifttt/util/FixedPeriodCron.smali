.class public Lcom/baidu/ifttt/util/FixedPeriodCron;
.super Ljava/lang/Object;
.source "FixedPeriodCron.java"


# static fields
.field public static final DAYS:I = 0x2

.field public static final DAYS_OF_WEEK:I = 0x4

.field public static final HOURS:I = 0x1

.field public static final MAX_DAYS:I = 0x1f

.field public static final MAX_DAYS_OF_WEEK:I = 0x7

.field public static final MAX_HOURS:I = 0x17

.field public static final MAX_MINUTES:I = 0x3b

.field public static final MAX_MONTHS:I = 0xc

.field public static final MINUTES:I = 0x0

.field public static final MIN_DAYS:I = 0x1

.field public static final MIN_DAYS_OF_WEEK:I = 0x0

.field public static final MIN_HOURS:I = 0x0

.field public static final MIN_MINUTES:I = 0x0

.field public static final MIN_MONTHS:I = 0x1

.field public static final MONTHS:I = 0x3

.field public static final NUMBER_OF_FIELDS:I = 0x5

.field public static final ranges:[I

.field private static final typeParameter:[Ljava/lang/Integer;


# instance fields
.field protected crontabSpec:[Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected expression:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->ranges:[I

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->typeParameter:[Ljava/lang/Integer;

    return-void

    .line 35
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 18
    .parameter "crontabExpression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/util/SortedSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    .line 72
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/ifttt/util/FixedPeriodCron;->expression:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->expression:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, crontabElements:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 75
    const-string v16, "Wrong number of fields."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/ifttt/util/FixedPeriodCron;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 77
    :cond_0
    const/4 v9, 0x0

    .local v9, field:I
    :goto_0
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ge v9, v0, :cond_a

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    move-object/from16 v16, v0

    new-instance v17, Ljava/util/TreeSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeSet;-><init>()V

    aput-object v17, v16, v9

    .line 80
    aget-object v16, v7, v9

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, crontabAtoms:[Ljava/lang/String;
    move-object v2, v6

    .local v2, arr$:[Ljava/lang/String;
    array-length v12, v2

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_9

    aget-object v3, v2, v11

    .line 83
    .local v3, crontabAtom:Ljava/lang/String;
    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, crontabAtomStep:[Ljava/lang/String;
    const/4 v15, 0x1

    .line 85
    .local v15, step:I
    array-length v0, v5

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 86
    const-string v16, "Wrong step (division) specification."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/ifttt/util/FixedPeriodCron;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 97
    :cond_1
    :goto_2
    const/4 v14, 0x0

    .line 98
    .local v14, rangeStart:I
    const/4 v13, 0x0

    .line 99
    .local v13, rangeEnd:I
    const-string v16, "*"

    const/16 v17, 0x0

    aget-object v17, v5, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 100
    sget-object v16, Lcom/baidu/ifttt/util/FixedPeriodCron;->ranges:[I

    mul-int/lit8 v17, v9, 0x2

    aget v14, v16, v17

    .line 101
    sget-object v16, Lcom/baidu/ifttt/util/FixedPeriodCron;->ranges:[I

    mul-int/lit8 v17, v9, 0x2

    add-int/lit8 v17, v17, 0x1

    aget v13, v16, v17

    .line 128
    :goto_3
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v9, v0, :cond_2

    .line 129
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v13, v0, :cond_2

    .line 130
    if-ne v14, v13, :cond_7

    .line 131
    const/4 v14, 0x0

    .line 132
    const/4 v13, 0x0

    .line 139
    :cond_2
    :goto_4
    move v10, v14

    .local v10, i:I
    :goto_5
    if-gt v10, v13, :cond_8

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    move-object/from16 v16, v0

    aget-object v16, v16, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/2addr v10, v15

    goto :goto_5

    .line 88
    .end local v10           #i:I
    .end local v13           #rangeEnd:I
    .end local v14           #rangeStart:I
    :cond_3
    array-length v0, v5

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 90
    const/16 v16, 0x1

    :try_start_0
    aget-object v16, v5, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    goto :goto_2

    .line 91
    :catch_0
    move-exception v8

    .line 92
    .local v8, exception:Ljava/lang/Exception;
    const-string v16, "Wrong step (divisor) specification."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/ifttt/util/FixedPeriodCron;->throwIllegalArgumentException(Ljava/lang/String;)V

    goto :goto_2

    .line 103
    .end local v8           #exception:Ljava/lang/Exception;
    .restart local v13       #rangeEnd:I
    .restart local v14       #rangeStart:I
    :cond_4
    const/16 v16, 0x0

    aget-object v16, v5, v16

    const-string v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, crontabAtomRange:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 105
    const-string v16, "Wrong range specification."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/ifttt/util/FixedPeriodCron;->throwIllegalArgumentException(Ljava/lang/String;)V

    goto :goto_3

    .line 107
    :cond_5
    array-length v0, v4

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 109
    const/16 v16, 0x0

    :try_start_1
    aget-object v16, v4, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 111
    const/16 v16, 0x1

    aget-object v16, v4, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    goto/16 :goto_3

    .line 113
    :catch_1
    move-exception v8

    .line 114
    .restart local v8       #exception:Ljava/lang/Exception;
    const-string v16, "Wrong range specification."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/ifttt/util/FixedPeriodCron;->throwIllegalArgumentException(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 119
    .end local v8           #exception:Ljava/lang/Exception;
    :cond_6
    const/16 v16, 0x0

    :try_start_2
    aget-object v16, v5, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    .line 120
    move v13, v14

    goto/16 :goto_3

    .line 121
    :catch_2
    move-exception v8

    .line 122
    .restart local v8       #exception:Ljava/lang/Exception;
    const-string v16, "Wrong number specification."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/ifttt/util/FixedPeriodCron;->throwIllegalArgumentException(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 134
    .end local v4           #crontabAtomRange:[Ljava/lang/String;
    .end local v8           #exception:Ljava/lang/Exception;
    :cond_7
    const/4 v13, 0x6

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    move-object/from16 v16, v0

    aget-object v16, v16, v9

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 81
    .restart local v10       #i:I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 77
    .end local v3           #crontabAtom:Ljava/lang/String;
    .end local v5           #crontabAtomStep:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v13           #rangeEnd:I
    .end local v14           #rangeStart:I
    .end local v15           #step:I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 144
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v6           #crontabAtoms:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :cond_a
    return-void
.end method


# virtual methods
.method protected findDate(I[Ljava/lang/Integer;I[[Ljava/lang/Integer;[[[Ljava/lang/Integer;)Ljava/util/Calendar;
    .locals 19
    .parameter "direction"
    .parameter "fields"
    .parameter "year"
    .parameter "specsInOrder"
    .parameter "specsForReferenceParent"

    .prologue
    .line 371
    if-lez p1, :cond_3

    .line 372
    const/4 v9, 0x0

    .line 376
    .local v9, lastMonth:I
    :goto_0
    const/4 v13, 0x0

    .line 377
    .local v13, pass:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 378
    .local v6, calendarHelper:Ljava/util/Calendar;
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 379
    const/16 v17, 0x3

    aget-object v4, p4, v17

    .local v4, arr$:[Ljava/lang/Integer;
    array-length v10, v4

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v4           #arr$:[Ljava/lang/Integer;
    .end local v7           #i$:I
    .end local v10           #len$:I
    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_9

    aget-object v3, v4, v8

    .line 380
    .local v3, aMonth:Ljava/lang/Integer;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 381
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 384
    :cond_0
    const/16 v17, 0x3

    aget-object v17, p2, v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 385
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p1

    if-eq v0, v1, :cond_1

    .line 386
    add-int/lit8 v13, v13, 0x1

    .line 388
    :cond_1
    const/16 v17, 0x2

    aget-object v17, p5, v17

    aget-object v16, v17, v13

    .line 392
    .local v16, specsForCurrentMonth:[Ljava/lang/Integer;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 393
    move-object/from16 v5, v16

    .local v5, arr$:[Ljava/lang/Integer;
    array-length v11, v5

    .local v11, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v11, :cond_8

    aget-object v2, v5, v7

    .line 395
    .local v2, aDay:Ljava/lang/Integer;
    const/16 v17, 0x2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 396
    const/16 v17, 0x5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 397
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    aget-object v17, v17, v18

    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 393
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 374
    .end local v2           #aDay:Ljava/lang/Integer;
    .end local v3           #aMonth:Ljava/lang/Integer;
    .end local v5           #arr$:[Ljava/lang/Integer;
    .end local v6           #calendarHelper:Ljava/util/Calendar;
    .end local v7           #i$:I
    .end local v9           #lastMonth:I
    .end local v11           #len$:I
    .end local v13           #pass:I
    .end local v16           #specsForCurrentMonth:[Ljava/lang/Integer;
    :cond_3
    const/16 v9, 0xd

    .restart local v9       #lastMonth:I
    goto/16 :goto_0

    .line 390
    .restart local v3       #aMonth:Ljava/lang/Integer;
    .restart local v6       #calendarHelper:Ljava/util/Calendar;
    .restart local v8       #i$:I
    .restart local v13       #pass:I
    :cond_4
    const/16 v17, 0x2

    aget-object v16, p4, v17

    .restart local v16       #specsForCurrentMonth:[Ljava/lang/Integer;
    goto :goto_2

    .line 403
    .end local v8           #i$:I
    .restart local v2       #aDay:Ljava/lang/Integer;
    .restart local v5       #arr$:[Ljava/lang/Integer;
    .restart local v7       #i$:I
    .restart local v11       #len$:I
    :cond_5
    const/16 v17, 0x2

    aget-object v17, p2, v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 404
    const/16 v17, 0x1

    aget-object v17, p5, v17

    aget-object v14, v17, v13

    .line 409
    .local v14, specsForCurrentDay:[Ljava/lang/Integer;
    :goto_4
    array-length v0, v14

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 411
    const/16 v17, 0x0

    aget-object v17, v14, v17

    const/16 v18, 0x1

    aget-object v18, p2, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 412
    const/16 v17, 0x0

    aget-object v17, p5, v17

    aget-object v15, v17, v13

    .line 417
    .local v15, specsForCurrentHour:[Ljava/lang/Integer;
    :goto_5
    array-length v0, v15

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 418
    move-object v12, v6

    .line 419
    .local v12, match:Ljava/util/Calendar;
    const/16 v17, 0x1

    mul-int v18, p1, v13

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 420
    const/16 v17, 0x2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 421
    const/16 v17, 0x5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 422
    const/16 v17, 0xb

    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 423
    const/16 v17, 0xc

    const/16 v18, 0x0

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 424
    const/16 v17, 0xd

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 425
    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 431
    .end local v2           #aDay:Ljava/lang/Integer;
    .end local v3           #aMonth:Ljava/lang/Integer;
    .end local v5           #arr$:[Ljava/lang/Integer;
    .end local v7           #i$:I
    .end local v11           #len$:I
    .end local v12           #match:Ljava/util/Calendar;
    .end local v14           #specsForCurrentDay:[Ljava/lang/Integer;
    .end local v15           #specsForCurrentHour:[Ljava/lang/Integer;
    .end local v16           #specsForCurrentMonth:[Ljava/lang/Integer;
    :goto_6
    return-object v12

    .line 407
    .restart local v2       #aDay:Ljava/lang/Integer;
    .restart local v3       #aMonth:Ljava/lang/Integer;
    .restart local v5       #arr$:[Ljava/lang/Integer;
    .restart local v7       #i$:I
    .restart local v11       #len$:I
    .restart local v16       #specsForCurrentMonth:[Ljava/lang/Integer;
    :cond_6
    const/16 v17, 0x1

    aget-object v14, p4, v17

    .restart local v14       #specsForCurrentDay:[Ljava/lang/Integer;
    goto/16 :goto_4

    .line 415
    :cond_7
    const/16 v17, 0x0

    aget-object v15, p4, v17

    .restart local v15       #specsForCurrentHour:[Ljava/lang/Integer;
    goto :goto_5

    .line 379
    .end local v2           #aDay:Ljava/lang/Integer;
    .end local v14           #specsForCurrentDay:[Ljava/lang/Integer;
    .end local v15           #specsForCurrentHour:[Ljava/lang/Integer;
    :cond_8
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto/16 :goto_1

    .line 431
    .end local v3           #aMonth:Ljava/lang/Integer;
    .end local v5           #arr$:[Ljava/lang/Integer;
    .end local v11           #len$:I
    .end local v16           #specsForCurrentMonth:[Ljava/lang/Integer;
    :cond_9
    const/4 v12, 0x0

    goto :goto_6
.end method

.method public getClosestDateAfter(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 11
    .parameter "reference"

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x3

    .line 261
    invoke-virtual {p0, p1}, Lcom/baidu/ifttt/util/FixedPeriodCron;->getFields(Ljava/util/Calendar;)[Ljava/lang/Integer;

    move-result-object v2

    .line 263
    .local v2, fields:[Ljava/lang/Integer;
    new-array v5, v10, [[[Ljava/lang/Integer;

    .line 265
    .local v5, specsForReferenceParent:[[[Ljava/lang/Integer;
    const/4 v0, 0x4

    new-array v4, v0, [[Ljava/lang/Integer;

    .line 267
    .local v4, specsInOrder:[[Ljava/lang/Integer;
    const/4 v6, 0x0

    .local v6, field:I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 268
    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/Integer;

    aput-object v0, v5, v6

    .line 270
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    aget-object v0, v0, v6

    aget-object v3, v2, v6

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    .local v7, specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v3, v5, v6

    const/4 v9, 0x0

    sget-object v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->typeParameter:[Ljava/lang/Integer;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    aput-object v0, v3, v9

    .line 274
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    aget-object v0, v0, v6

    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 276
    .restart local v7       #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v3, v5, v6

    sget-object v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->typeParameter:[Ljava/lang/Integer;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    aput-object v0, v3, v1

    .line 278
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    aget-object v0, v0, v6

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    .restart local v7       #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->typeParameter:[Ljava/lang/Integer;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    aput-object v0, v4, v6

    .line 267
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 281
    .end local v7           #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    aget-object v0, v0, v10

    aget-object v3, v2, v10

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 283
    .restart local v7       #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    aget-object v0, v0, v10

    aget-object v3, v2, v10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 285
    .local v8, specsTail:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    sget-object v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->typeParameter:[Ljava/lang/Integer;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    aput-object v0, v4, v10

    .line 288
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/ifttt/util/FixedPeriodCron;->findDate(I[Ljava/lang/Integer;I[[Ljava/lang/Integer;[[[Ljava/lang/Integer;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getClosestDateBeforeOrSame(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 11
    .parameter "reference"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    .line 214
    invoke-virtual {p0, p1}, Lcom/baidu/ifttt/util/FixedPeriodCron;->getFields(Ljava/util/Calendar;)[Ljava/lang/Integer;

    move-result-object v2

    .line 216
    .local v2, fields:[Ljava/lang/Integer;
    new-array v5, v9, [[[Ljava/lang/Integer;

    .line 218
    .local v5, specsForReferenceParent:[[[Ljava/lang/Integer;
    const/4 v0, 0x4

    new-array v4, v0, [[Ljava/lang/Integer;

    .line 220
    .local v4, specsInOrder:[[Ljava/lang/Integer;
    const/4 v6, 0x0

    .local v6, field:I
    :goto_0
    if-ge v6, v9, :cond_0

    .line 221
    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/Integer;

    aput-object v0, v5, v6

    .line 223
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    aget-object v0, v0, v6

    aget-object v1, v2, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    .local v7, specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 226
    aget-object v1, v5, v6

    const/4 v3, 0x0

    sget-object v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->typeParameter:[Ljava/lang/Integer;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    aput-object v0, v1, v3

    .line 228
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    aget-object v0, v0, v6

    aget-object v1, v2, v6

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 230
    .restart local v7       #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 231
    aget-object v1, v5, v6

    sget-object v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->typeParameter:[Ljava/lang/Integer;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    aput-object v0, v1, v10

    .line 233
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    aget-object v0, v0, v6

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    .restart local v7       #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 235
    sget-object v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->typeParameter:[Ljava/lang/Integer;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    aput-object v0, v4, v6

    .line 220
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 237
    .end local v7           #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    aget-object v0, v0, v9

    aget-object v1, v2, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    .restart local v7       #specs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 240
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    aget-object v0, v0, v9

    aget-object v1, v2, v9

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 242
    .local v8, specsTail:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 243
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    sget-object v0, Lcom/baidu/ifttt/util/FixedPeriodCron;->typeParameter:[Ljava/lang/Integer;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    aput-object v0, v4, v9

    .line 246
    const/4 v1, -0x1

    invoke-virtual {p1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/ifttt/util/FixedPeriodCron;->findDate(I[Ljava/lang/Integer;I[[Ljava/lang/Integer;[[[Ljava/lang/Integer;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getDays()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDaysOfWeek()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getFields(Ljava/util/Calendar;)[Ljava/lang/Integer;
    .locals 8
    .parameter "reference"

    .prologue
    const/4 v7, 0x2

    .line 342
    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 343
    .local v2, minute:I
    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 344
    .local v1, hour:I
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 345
    .local v0, day:I
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 346
    .local v3, month:I
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    return-object v4
.end method

.method public getHours()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMinutes()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMonths()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->crontabSpec:[Ljava/util/SortedSet;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public nextMatchInMillis(Ljava/util/Calendar;)Ljava/lang/Long;
    .locals 6
    .parameter "reference"

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, millis:Ljava/lang/Long;
    invoke-virtual {p0, p1}, Lcom/baidu/ifttt/util/FixedPeriodCron;->getClosestDateAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 302
    .local v1, next:Ljava/util/Calendar;
    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 305
    :cond_0
    return-object v0
.end method

.method public periodInMillis(Ljava/util/Calendar;)Ljava/lang/Long;
    .locals 7
    .parameter "reference"

    .prologue
    .line 316
    const/4 v1, 0x0

    .line 317
    .local v1, millis:Ljava/lang/Long;
    invoke-virtual {p0, p1}, Lcom/baidu/ifttt/util/FixedPeriodCron;->getClosestDateBeforeOrSame(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 318
    .local v0, last:Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0, p1}, Lcom/baidu/ifttt/util/FixedPeriodCron;->getClosestDateAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 320
    .local v2, next:Ljava/util/Calendar;
    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 324
    .end local v2           #next:Ljava/util/Calendar;
    :cond_0
    return-object v1
.end method

.method protected throwIllegalArgumentException(Ljava/lang/String;)V
    .locals 3
    .parameter "cause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed crontab expression. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Read crontab(5) manpage for further reference."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/baidu/ifttt/util/FixedPeriodCron;->expression:Ljava/lang/String;

    return-object v0
.end method
