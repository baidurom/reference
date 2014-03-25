.class public Lcom/baidu/ifttt/util/CronSequenceGenerator;
.super Ljava/lang/Object;
.source "CronSequenceGenerator.java"


# instance fields
.field private final daysOfMonth:Ljava/util/BitSet;

.field private final daysOfWeek:Ljava/util/BitSet;

.field private final expression:Ljava/lang/String;

.field private final hours:Ljava/util/BitSet;

.field private final minutes:Ljava/util/BitSet;

.field private final months:Ljava/util/BitSet;

.field private final seconds:Ljava/util/BitSet;

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 2
    .parameter "expression"
    .parameter "timeZone"

    .prologue
    const/16 v1, 0x3c

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->seconds:Ljava/util/BitSet;

    .line 55
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->minutes:Ljava/util/BitSet;

    .line 57
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->hours:Ljava/util/BitSet;

    .line 59
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfWeek:Ljava/util/BitSet;

    .line 61
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfMonth:Ljava/util/BitSet;

    .line 63
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->months:Ljava/util/BitSet;

    .line 77
    iput-object p1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->expression:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->timeZone:Ljava/util/TimeZone;

    .line 79
    invoke-direct {p0, p1}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->parse(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private doNext(Ljava/util/Calendar;)V
    .locals 37
    .parameter "calendar"

    .prologue
    .line 126
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v15, resets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 129
    .local v4, second:I
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 130
    .local v8, emptyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->seconds:Ljava/util/BitSet;

    const/16 v6, 0xd

    const/16 v7, 0xc

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->findNext(Ljava/util/BitSet;ILjava/util/Calendar;IILjava/util/List;)I

    move-result v36

    .line 131
    .local v36, updateSecond:I
    move/from16 v0, v36

    if-ne v4, v0, :cond_0

    .line 132
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 136
    .local v11, minute:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->minutes:Ljava/util/BitSet;

    const/16 v13, 0xc

    const/16 v14, 0xb

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    invoke-direct/range {v9 .. v15}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->findNext(Ljava/util/BitSet;ILjava/util/Calendar;IILjava/util/List;)I

    move-result v34

    .line 137
    .local v34, updateMinute:I
    move/from16 v0, v34

    if-ne v11, v0, :cond_2

    .line 138
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_0
    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 144
    .local v18, hour:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->hours:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v20, 0xb

    const/16 v21, 0x7

    move-object/from16 v16, p0

    move-object/from16 v19, p1

    move-object/from16 v22, v15

    invoke-direct/range {v16 .. v22}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->findNext(Ljava/util/BitSet;ILjava/util/Calendar;IILjava/util/List;)I

    move-result v33

    .line 145
    .local v33, updateHour:I
    move/from16 v0, v18

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 146
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :goto_1
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v24

    .line 152
    .local v24, dayOfWeek:I
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 153
    .local v22, dayOfMonth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfMonth:Ljava/util/BitSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfWeek:Ljava/util/BitSet;

    move-object/from16 v23, v0

    const/16 v25, 0x16e

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v26, v15

    invoke-direct/range {v19 .. v26}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->findNextDay(Ljava/util/Calendar;Ljava/util/BitSet;ILjava/util/BitSet;IILjava/util/List;)I

    move-result v32

    .line 154
    .local v32, updateDayOfMonth:I
    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 155
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :goto_2
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v27

    .line 161
    .local v27, month:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->months:Ljava/util/BitSet;

    move-object/from16 v26, v0

    const/16 v29, 0x2

    const/16 v30, 0x1

    move-object/from16 v25, p0

    move-object/from16 v28, p1

    move-object/from16 v31, v15

    invoke-direct/range {v25 .. v31}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->findNext(Ljava/util/BitSet;ILjava/util/Calendar;IILjava/util/List;)I

    move-result v35

    .line 162
    .local v35, updateMonth:I
    move/from16 v0, v27

    move/from16 v1, v35

    if-eq v0, v1, :cond_1

    .line 163
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->doNext(Ljava/util/Calendar;)V

    .line 166
    :cond_1
    return-void

    .line 140
    .end local v18           #hour:I
    .end local v22           #dayOfMonth:I
    .end local v24           #dayOfWeek:I
    .end local v27           #month:I
    .end local v32           #updateDayOfMonth:I
    .end local v33           #updateHour:I
    .end local v35           #updateMonth:I
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->doNext(Ljava/util/Calendar;)V

    goto/16 :goto_0

    .line 148
    .restart local v18       #hour:I
    .restart local v33       #updateHour:I
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->doNext(Ljava/util/Calendar;)V

    goto :goto_1

    .line 157
    .restart local v22       #dayOfMonth:I
    .restart local v24       #dayOfWeek:I
    .restart local v32       #updateDayOfMonth:I
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->doNext(Ljava/util/Calendar;)V

    goto :goto_2
.end method

.method private findNext(Ljava/util/BitSet;ILjava/util/Calendar;IILjava/util/List;)I
    .locals 3
    .parameter "bits"
    .parameter "value"
    .parameter "calendar"
    .parameter "field"
    .parameter "nextField"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            "I",
            "Ljava/util/Calendar;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p6, lowerOrders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 199
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 201
    .local v0, nextValue:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    const/4 v1, 0x1

    invoke-virtual {p3, p5, v1}, Ljava/util/Calendar;->add(II)V

    .line 203
    invoke-virtual {p3, p4, v2}, Ljava/util/Calendar;->set(II)V

    .line 204
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 206
    :cond_0
    if-eq v0, p2, :cond_1

    .line 207
    invoke-virtual {p3, p4, v0}, Ljava/util/Calendar;->set(II)V

    .line 208
    invoke-direct {p0, p3, p6}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->reset(Ljava/util/Calendar;Ljava/util/List;)V

    .line 210
    :cond_1
    return v0
.end method

.method private findNextDay(Ljava/util/Calendar;Ljava/util/BitSet;ILjava/util/BitSet;IILjava/util/List;)I
    .locals 5
    .parameter "calendar"
    .parameter "daysOfMonth"
    .parameter "dayOfMonth"
    .parameter "daysOfWeek"
    .parameter "dayOfWeek"
    .parameter "max"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/BitSet;",
            "I",
            "Ljava/util/BitSet;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p7, resets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x5

    .line 171
    const/4 v0, 0x0

    .line 174
    .local v0, count:I
    :goto_0
    invoke-virtual {p2, p3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, p5, -0x1

    invoke-virtual {p4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    if-ge v0, p6, :cond_1

    .line 175
    const/4 v2, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 176
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 177
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p5

    .line 178
    invoke-direct {p0, p1, p7}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->reset(Ljava/util/Calendar;Ljava/util/List;)V

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_0

    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_1
    move v0, v1

    .line 180
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_2
    if-le v0, p6, :cond_3

    .line 181
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overflow in day for expression="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->expression:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_3
    return p3
.end method

.method private getRange(Ljava/lang/String;I)[I
    .locals 6
    .parameter "field"
    .parameter "max"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    new-array v0, v5, [I

    .line 300
    .local v0, result:[I
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    aput v3, v0, v3

    .line 302
    add-int/lit8 v2, p2, -0x1

    aput v2, v0, v4

    .line 315
    :goto_0
    return-object v0

    .line 305
    :cond_0
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v4

    aput v2, v0, v3

    goto :goto_0

    .line 308
    :cond_1
    const-string v2, "-"

    invoke-static {p1, v2}, Lcom/baidu/ifttt/util/StringUtils;->delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, split:[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v5, :cond_2

    .line 310
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Range has more than two fields: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_2
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v3

    .line 313
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v4

    goto :goto_0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 8
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3c

    const/4 v4, 0x7

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    const-string v1, " "

    invoke-static {p1, v1}, Lcom/baidu/ifttt/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, fields:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 230
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cron expression must consist of 6 fields (found %d in %s)"

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->seconds:Ljava/util/BitSet;

    aget-object v2, v0, v5

    invoke-direct {p0, v1, v2, v7}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->setNumberHits(Ljava/util/BitSet;Ljava/lang/String;I)V

    .line 234
    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->minutes:Ljava/util/BitSet;

    aget-object v2, v0, v6

    invoke-direct {p0, v1, v2, v7}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->setNumberHits(Ljava/util/BitSet;Ljava/lang/String;I)V

    .line 235
    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->hours:Ljava/util/BitSet;

    aget-object v2, v0, v3

    const/16 v3, 0x18

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->setNumberHits(Ljava/util/BitSet;Ljava/lang/String;I)V

    .line 236
    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfMonth:Ljava/util/BitSet;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/16 v3, 0x1f

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->setDaysOfMonth(Ljava/util/BitSet;Ljava/lang/String;I)V

    .line 237
    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->months:Ljava/util/BitSet;

    const/4 v2, 0x4

    aget-object v2, v0, v2

    const-string v3, "JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC"

    invoke-direct {p0, v2, v3}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->replaceOrdinals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->setNumberHits(Ljava/util/BitSet;Ljava/lang/String;I)V

    .line 238
    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfWeek:Ljava/util/BitSet;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    const-string v3, "SUN,MON,TUE,WED,THU,FRI,SAT"

    invoke-direct {p0, v2, v3}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->replaceOrdinals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->setDays(Ljava/util/BitSet;Ljava/lang/String;I)V

    .line 239
    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfWeek:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfWeek:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 242
    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfWeek:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->clear(I)V

    .line 244
    :cond_1
    return-void
.end method

.method private replaceOrdinals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"
    .parameter "commaSeparatedList"

    .prologue
    .line 252
    invoke-static {p2}, Lcom/baidu/ifttt/util/StringUtils;->commaDelimitedListToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 254
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, item:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/baidu/ifttt/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v1           #item:Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private reset(Ljava/util/Calendar;Ljava/util/List;)V
    .locals 3
    .parameter "calendar"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p2, fields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    .local v0, field:I
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 220
    .end local v0           #field:I
    :cond_0
    return-void
.end method

.method private setDays(Ljava/util/BitSet;Ljava/lang/String;I)V
    .locals 1
    .parameter "bits"
    .parameter "field"
    .parameter "max"

    .prologue
    .line 268
    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string p2, "*"

    .line 271
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->setNumberHits(Ljava/util/BitSet;Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method private setDaysOfMonth(Ljava/util/BitSet;Ljava/lang/String;I)V
    .locals 1
    .parameter "bits"
    .parameter "field"
    .parameter "max"

    .prologue
    .line 262
    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->setDays(Ljava/util/BitSet;Ljava/lang/String;I)V

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 265
    return-void
.end method

.method private setNumberHits(Ljava/util/BitSet;Ljava/lang/String;I)V
    .locals 12
    .parameter "bits"
    .parameter "value"
    .parameter "max"

    .prologue
    .line 275
    const-string v9, ","

    invoke-static {p2, v9}, Lcom/baidu/ifttt/util/StringUtils;->delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, fields:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v2, v0, v5

    .line 277
    .local v2, field:Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 279
    invoke-direct {p0, v2, p3}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->getRange(Ljava/lang/String;I)[I

    move-result-object v7

    .line 280
    .local v7, range:[I
    const/4 v9, 0x0

    aget v9, v7, v9

    const/4 v10, 0x1

    aget v10, v7, v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p1, v9, v10}, Ljava/util/BitSet;->set(II)V

    .line 276
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 282
    .end local v7           #range:[I
    :cond_1
    const-string v9, "/"

    invoke-static {v2, v9}, Lcom/baidu/ifttt/util/StringUtils;->delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, split:[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    if-le v9, v10, :cond_2

    .line 284
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incrementer has more than two fields: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 286
    :cond_2
    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-direct {p0, v9, p3}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->getRange(Ljava/lang/String;I)[I

    move-result-object v7

    .line 287
    .restart local v7       #range:[I
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 288
    const/4 v9, 0x1

    add-int/lit8 v10, p3, -0x1

    aput v10, v7, v9

    .line 290
    :cond_3
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 291
    .local v1, delta:I
    const/4 v9, 0x0

    aget v4, v7, v9

    .local v4, i:I
    :goto_1
    const/4 v9, 0x1

    aget v9, v7, v9

    if-gt v4, v9, :cond_0

    .line 292
    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 291
    add-int/2addr v4, v1

    goto :goto_1

    .line 296
    .end local v1           #delta:I
    .end local v2           #field:Ljava/lang/String;
    .end local v4           #i:I
    .end local v7           #range:[I
    .end local v8           #split:[Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 320
    instance-of v2, p1, Lcom/baidu/ifttt/util/CronSequenceGenerator;

    if-nez v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 323
    check-cast v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;

    .line 324
    .local v0, cron:Lcom/baidu/ifttt/util/CronSequenceGenerator;
    iget-object v2, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->months:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->months:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfMonth:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfMonth:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfWeek:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfWeek:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->hours:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->hours:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->minutes:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->minutes:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->seconds:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->seconds:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->months:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    add-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfMonth:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->daysOfWeek:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->hours:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x29

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->minutes:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x35

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->seconds:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3d

    add-int/2addr v0, v1

    return v0
.end method

.method public next(Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .parameter "date"

    .prologue
    .line 112
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 113
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 114
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 117
    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 118
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 120
    invoke-direct {p0, v0}, Lcom/baidu/ifttt/util/CronSequenceGenerator;->doNext(Ljava/util/Calendar;)V

    .line 122
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/ifttt/util/CronSequenceGenerator;->expression:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
