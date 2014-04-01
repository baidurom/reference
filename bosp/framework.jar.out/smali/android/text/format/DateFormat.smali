.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'

.field public static final CAPITAL_AM_PM:C = 'A'

.field public static final DATE:C = 'd'

.field public static final DAY:C = 'E'

.field public static final HOUR:C = 'h'

.field public static final HOUR_OF_DAY:C = 'k'

.field public static final MINUTE:C = 'm'

.field public static final MONTH:C = 'M'

.field public static final QUOTE:C = '\''

.field public static final SECONDS:C = 's'

.field public static final TIME_ZONE:C = 'z'

.field public static final YEAR:C = 'y'

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .locals 4
    .parameter "s"
    .parameter "i"
    .parameter "len"

    .prologue
    const/16 v3, 0x27

    .line 645
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 646
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 647
    const/4 v1, 0x1

    .line 678
    :cond_0
    :goto_0
    return v1

    .line 650
    :cond_1
    const/4 v1, 0x0

    .line 653
    .local v1, count:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 654
    add-int/lit8 p2, p2, -0x1

    .line 656
    :goto_1
    if-ge p1, p2, :cond_0

    .line 657
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 659
    .local v0, c:C
    if-ne v0, v3, :cond_3

    .line 661
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 663
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 664
    add-int/lit8 p2, p2, -0x1

    .line 665
    add-int/lit8 v1, v1, 0x1

    .line 666
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 669
    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 673
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "inFormat"
    .parameter "inTimeInMillis"

    .prologue
    .line 471
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    const/16 v8, 0xa

    const/16 v9, 0x9

    .line 497
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 501
    .local v5, s:Landroid/text/SpannableStringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 503
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 506
    const/4 v1, 0x1

    .line 507
    .local v1, count:I
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 509
    .local v0, c:I
    const/16 v7, 0x27

    if-ne v0, v7, :cond_1

    .line 510
    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    .line 511
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 503
    :cond_0
    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 515
    :cond_1
    :goto_2
    add-int v7, v2, v1

    if-ge v7, v3, :cond_2

    add-int v7, v2, v1

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_2

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 521
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 577
    const/4 v4, 0x0

    .line 581
    .local v4, replacement:Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_0

    .line 582
    add-int v7, v2, v1

    invoke-virtual {v5, v2, v7, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 583
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 584
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    goto :goto_1

    .line 523
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 524
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 528
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 529
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 532
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_2
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 533
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 536
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_3
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 537
    .local v6, temp:I
    const/4 v7, 0x4

    if-ge v1, v7, :cond_3

    const/16 v7, 0x14

    :goto_4
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    .line 541
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .end local v4           #replacement:Ljava/lang/String;
    :cond_3
    move v7, v8

    .line 537
    goto :goto_4

    .line 544
    .end local v6           #temp:I
    :sswitch_4
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 546
    .restart local v6       #temp:I
    if-nez v6, :cond_4

    .line 547
    const/16 v6, 0xc

    .line 549
    :cond_4
    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 550
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 553
    .end local v4           #replacement:Ljava/lang/String;
    .end local v6           #temp:I
    :sswitch_5
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 554
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 557
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_6
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 558
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 561
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_7
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 562
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 565
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_8
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 566
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 569
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_9
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 570
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 573
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_a
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getYearString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 574
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 588
    .end local v0           #c:I
    .end local v1           #count:I
    .end local v4           #replacement:Ljava/lang/String;
    :cond_5
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_6

    .line 589
    new-instance v7, Landroid/text/SpannedString;

    invoke-direct {v7, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 591
    :goto_5
    return-object v7

    :cond_6
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 521
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x45 -> :sswitch_3
        0x4d -> :sswitch_7
        0x61 -> :sswitch_0
        0x64 -> :sswitch_2
        0x68 -> :sswitch_4
        0x6b -> :sswitch_5
        0x6d -> :sswitch_6
        0x73 -> :sswitch_8
        0x79 -> :sswitch_a
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    .line 482
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 484
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 486
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static final formatZoneOffset(II)Ljava/lang/String;
    .locals 6
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 621
    div-int/lit16 p0, p0, 0x3e8

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .local v2, tb:Ljava/lang/StringBuilder;
    if-gez p0, :cond_0

    .line 625
    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    neg-int p0, p0

    .line 631
    :goto_0
    div-int/lit16 v0, p0, 0xe10

    .line 632
    .local v0, hours:I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 634
    .local v1, minutes:I
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 628
    .end local v0           #hours:I
    .end local v1           #minutes:I
    :cond_0
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static final getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3
    .parameter "context"

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 287
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, format:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getDateFormatOrder(Landroid/content/Context;)[C
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0x79

    const/16 v12, 0x64

    const/16 v11, 0x4d

    .line 427
    const/4 v10, 0x3

    new-array v8, v10, [C

    fill-array-data v8, :array_0

    .line 428
    .local v8, order:[C
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 429
    .local v9, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 430
    .local v6, index:I
    const/4 v2, 0x0

    .line 431
    .local v2, foundDate:Z
    const/4 v3, 0x0

    .line 432
    .local v3, foundMonth:Z
    const/4 v4, 0x0

    .line 434
    .local v4, foundYear:Z
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_3

    aget-char v1, v0, v5

    .line 435
    .local v1, c:C
    if-nez v2, :cond_0

    if-ne v1, v12, :cond_0

    .line 436
    const/4 v2, 0x1

    .line 437
    aput-char v12, v8, v6

    .line 438
    add-int/lit8 v6, v6, 0x1

    .line 441
    :cond_0
    if-nez v3, :cond_1

    if-ne v1, v11, :cond_1

    .line 442
    const/4 v3, 0x1

    .line 443
    aput-char v11, v8, v6

    .line 444
    add-int/lit8 v6, v6, 0x1

    .line 447
    :cond_1
    if-nez v4, :cond_2

    if-ne v1, v13, :cond_2

    .line 448
    const/4 v4, 0x1

    .line 449
    aput-char v13, v8, v6

    .line 450
    add-int/lit8 v6, v6, 0x1

    .line 434
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 453
    .end local v1           #c:C
    :cond_3
    return-object v8

    .line 427
    nop

    :array_0
    .array-data 0x2
        0x64t 0x0t
        0x4dt 0x0t
        0x79t 0x0t
    .end array-data
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "value"

    .prologue
    .line 293
    const/4 v4, 0x0

    .line 294
    .local v4, result:Ljava/lang/String;
    if-eqz p1, :cond_17

    .line 295
    const-string v11, "dd"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_0

    const-string v1, "d"

    .line 296
    .local v1, dayValue:Ljava/lang/String;
    :goto_0
    const-string v11, "MMMM"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_3

    const-string v11, "MMM"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_2

    const-string v11, "MM"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_1

    const-string v3, "M"

    .line 297
    .local v3, monthValue:Ljava/lang/String;
    :goto_1
    const-string/jumbo v11, "yyyy"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_4

    const-string/jumbo v10, "y"

    .line 298
    .local v10, yearValue:Ljava/lang/String;
    :goto_2
    const-string v11, "EEEE"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_5

    const-string v8, "E"

    .line 300
    .local v8, weekValue:Ljava/lang/String;
    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, day:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 302
    .local v2, month:I
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 303
    .local v9, year:I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 305
    .local v7, week:I
    if-ltz v7, :cond_11

    if-ltz v2, :cond_11

    if-ltz v0, :cond_11

    if-ltz v9, :cond_11

    .line 306
    const/4 v6, 0x0

    .line 307
    .local v6, template:Ljava/lang/String;
    if-ge v7, v0, :cond_b

    .line 308
    if-ge v9, v2, :cond_7

    if-ge v9, v0, :cond_7

    .line 309
    if-ge v2, v0, :cond_6

    .line 310
    const v11, 0x205005b

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 311
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v12, 0x3

    aput-object v1, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    move-object v5, v4

    .line 394
    .end local v0           #day:I
    .end local v1           #dayValue:Ljava/lang/String;
    .end local v2           #month:I
    .end local v3           #monthValue:Ljava/lang/String;
    .end local v4           #result:Ljava/lang/String;
    .end local v6           #template:Ljava/lang/String;
    .end local v7           #week:I
    .end local v8           #weekValue:Ljava/lang/String;
    .end local v9           #year:I
    .end local v10           #yearValue:Ljava/lang/String;
    .local v5, result:Ljava/lang/String;
    :goto_5
    return-object v5

    .line 295
    .end local v5           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    :cond_0
    const-string v1, "dd"

    goto :goto_0

    .line 296
    .restart local v1       #dayValue:Ljava/lang/String;
    :cond_1
    const-string v3, "MM"

    goto :goto_1

    :cond_2
    const-string v3, "MMM"

    goto :goto_1

    :cond_3
    const-string v3, "MMMM"

    goto :goto_1

    .line 297
    .restart local v3       #monthValue:Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "yyyy"

    goto :goto_2

    .line 298
    .restart local v10       #yearValue:Ljava/lang/String;
    :cond_5
    const-string v8, "EEEE"

    goto :goto_3

    .line 313
    .restart local v0       #day:I
    .restart local v2       #month:I
    .restart local v6       #template:Ljava/lang/String;
    .restart local v7       #week:I
    .restart local v8       #weekValue:Ljava/lang/String;
    .restart local v9       #year:I
    :cond_6
    const v11, 0x205005c

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 314
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v1, v11, v12

    const/4 v12, 0x3

    aput-object v3, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 316
    :cond_7
    if-ge v2, v0, :cond_9

    .line 317
    if-ge v0, v9, :cond_8

    .line 318
    const v11, 0x205005d

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 319
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    aput-object v1, v11, v12

    const/4 v12, 0x3

    aput-object v10, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 321
    :cond_8
    const v11, 0x205005e

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 322
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v12, 0x3

    aput-object v1, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 325
    :cond_9
    if-ge v2, v9, :cond_a

    .line 326
    const v11, 0x205005f

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 327
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v12, 0x3

    aput-object v10, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 329
    :cond_a
    const v11, 0x2050063

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v12, 0x3

    aput-object v3, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 334
    :cond_b
    if-ge v9, v2, :cond_d

    if-ge v9, v0, :cond_d

    .line 335
    if-ge v2, v0, :cond_c

    .line 336
    const v11, 0x2050064

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 337
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    aput-object v1, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 339
    :cond_c
    const v11, 0x2050065

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 340
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 342
    :cond_d
    if-ge v2, v0, :cond_f

    .line 343
    if-ge v0, v9, :cond_e

    .line 344
    const v11, 0x2050066

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 345
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 347
    :cond_e
    const v11, 0x2050067

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 348
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v1, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 351
    :cond_f
    if-ge v2, v9, :cond_10

    .line 352
    const v11, 0x2050068

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 353
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 355
    :cond_10
    const v11, 0x2050069

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 356
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v3, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 362
    .end local v6           #template:Ljava/lang/String;
    :cond_11
    if-ltz v2, :cond_17

    if-ltz v0, :cond_17

    if-ltz v9, :cond_17

    .line 363
    const v11, #string@numeric_date_template#t

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 364
    .restart local v6       #template:Ljava/lang/String;
    if-ge v9, v2, :cond_13

    if-ge v9, v0, :cond_13

    .line 365
    if-ge v2, v0, :cond_12

    .line 366
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    aput-object v1, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    move-object v5, v4

    .line 384
    .end local v4           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    goto/16 :goto_5

    .line 368
    .end local v5           #result:Ljava/lang/String;
    .restart local v4       #result:Ljava/lang/String;
    :cond_12
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v12, 0x2

    aput-object v3, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 370
    :cond_13
    if-ge v2, v0, :cond_15

    .line 371
    if-ge v0, v9, :cond_14

    .line 372
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 374
    :cond_14
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v1, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 377
    :cond_15
    if-ge v2, v9, :cond_16

    .line 378
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    aput-object v10, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 380
    :cond_16
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const/4 v12, 0x2

    aput-object v3, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 393
    .end local v0           #day:I
    .end local v1           #dayValue:Ljava/lang/String;
    .end local v2           #month:I
    .end local v3           #monthValue:Ljava/lang/String;
    .end local v6           #template:Ljava/lang/String;
    .end local v7           #week:I
    .end local v8           #weekValue:Ljava/lang/String;
    .end local v9           #year:I
    .end local v10           #yearValue:Ljava/lang/String;
    :cond_17
    const v11, #string@numeric_date_format#t

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 394
    .end local v4           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    goto/16 :goto_5
.end method

.method public static final getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter "context"

    .prologue
    .line 404
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter "context"

    .prologue
    .line 414
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static final getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 2
    .parameter "inDate"
    .parameter "count"

    .prologue
    .line 595
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 597
    .local v0, month:I
    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    .line 598
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    .line 603
    :goto_0
    return-object v1

    .line 599
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 600
    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 603
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 4
    .parameter "context"

    .prologue
    .line 250
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 253
    .local v0, b24:Z
    if-eqz v0, :cond_0

    .line 254
    const v1, #string@twenty_four_hour_time_format#t

    .line 259
    .local v1, res:I
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 256
    .end local v1           #res:I
    :cond_0
    const v1, #string@twelve_hour_time_format#t

    .restart local v1       #res:I
    goto :goto_0
.end method

.method private static final getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 5
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 608
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 610
    .local v1, tz:Ljava/util/TimeZone;
    const/4 v3, 0x2

    if-ge p1, v3, :cond_0

    .line 611
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    .line 616
    :goto_0
    return-object v2

    .line 615
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 616
    .local v0, dst:Z
    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0           #dst:Z
    :cond_1
    move v0, v2

    .line 615
    goto :goto_1
.end method

.method private static final getYearString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 3
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/4 v2, 0x2

    .line 640
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 641
    .local v0, year:I
    if-gt p1, v2, :cond_0

    rem-int/lit8 v1, v0, 0x64

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "time_12_24"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, value:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v1, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 210
    .local v1, locale:Ljava/util/Locale;
    sget-object v7, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 211
    :try_start_0
    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v8, :cond_0

    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v8, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 212
    sget-boolean v0, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v7

    .line 240
    .end local v1           #locale:Ljava/util/Locale;
    :goto_0
    return v0

    .line 214
    .restart local v1       #locale:Ljava/util/Locale;
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-static {v0, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 220
    .local v2, natural:Ljava/text/DateFormat;
    instance-of v7, v2, Ljava/text/SimpleDateFormat;

    if-eqz v7, :cond_3

    move-object v4, v2

    .line 221
    check-cast v4, Ljava/text/SimpleDateFormat;

    .line 222
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, pattern:Ljava/lang/String;
    const/16 v7, 0x48

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_2

    .line 225
    const-string v5, "24"

    .line 233
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :goto_1
    sget-object v8, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 234
    :try_start_1
    sput-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 235
    const-string v7, "12"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v0

    :goto_2
    sput-boolean v7, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 236
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #natural:Ljava/text/DateFormat;
    :cond_1
    if-eqz v5, :cond_5

    const-string v7, "12"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 240
    .local v0, b24:Z
    :goto_3
    goto :goto_0

    .line 214
    .end local v0           #b24:Z
    .restart local v1       #locale:Ljava/util/Locale;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 227
    .restart local v2       #natural:Ljava/text/DateFormat;
    .restart local v3       #pattern:Ljava/lang/String;
    .restart local v4       #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v5, "12"

    goto :goto_1

    .line 230
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :cond_3
    const-string v5, "12"

    goto :goto_1

    :cond_4
    move v7, v6

    .line 235
    goto :goto_2

    .line 236
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #natural:Ljava/text/DateFormat;
    :cond_5
    move v0, v6

    .line 239
    goto :goto_3
.end method

.method private static final zeroPad(II)Ljava/lang/String;
    .locals 6
    .parameter "inValue"
    .parameter "inMinDigits"

    .prologue
    .line 682
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, val:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, p1, :cond_1

    .line 685
    new-array v0, p1, [C

    .line 687
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 688
    const/16 v3, 0x30

    aput-char v3, v0, v1

    .line 687
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v2, v3, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 691
    new-instance v2, Ljava/lang/String;

    .end local v2           #val:Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 693
    .end local v0           #buf:[C
    .end local v1           #i:I
    .restart local v2       #val:Ljava/lang/String;
    :cond_1
    return-object v2
.end method
